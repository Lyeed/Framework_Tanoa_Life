/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_positions", "_missing"];

diag_log "[DYNAMIC MARKERS] Initializing";

_missing = [];

{
	_name = configName _x;
	_result = [format["SELECT POS_X, POS_Y, POS_Z FROM dynamic_markers WHERE name='%1'", _name], 2] call ExtDB3_fnc_async;

	if (_result isEqualTo []) then
	{
		_missing pushBack _name;
		diag_log format["[ERROR] Dynamic marker %1 is not saved into DB.", _name];
		diag_log format["Cannot create dynamic marker %1", _name];
	} else {
		_result = _result select 0;
		_marker = [_name, [(_result select 0), (_result select 1), (_result select 2)]] call AlysiaServer_fnc_dynamicMarkers_create;
	};
} forEach ("true" configClasses (missionConfigFile >> "ALYSIA_DYN_MARKERS"));

{
	_pos = [_x] call AlysiaServer_fnc_dynamicMarkers_getPos;
	if (_pos isEqualTo [0,0,0]) then {
		diag_log format["[ERROR] Dynamic marker %1 has no possible positions", _x];
	} else {
		[
			format
			[
				"INSERT INTO dynamic_markers (name,POS_X,POS_Y,POS_Z) VALUES ('%1','%2','%3','%4')",
				_x,
				(_pos select 0),
				(_pos select 1),
				(_pos select 2)
			], 1
		] call ExtDB3_fnc_async;
		diag_log format["[ERROR] Dynamic marker %1 was not saved into DB. Fixed", _x];
		_marker = [_x, _pos] call AlysiaServer_fnc_dynamicMarkers_create;
	};
} forEach _missing;

diag_log "[DYNAMIC MARKERS] Ready";
