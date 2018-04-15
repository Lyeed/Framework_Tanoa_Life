/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_info", "_process"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {};

_info = _target getVariable "laboratory_info";
if (isNil "_info") exitWith {};

if ((_target getVariable ["sabotage", 0]) > serverTime) exitWith
{
	[
		format
		[
			"Ce laboratoire a été récemment saboté et ne peut être utilisé que dans %1 minutes",
			[((_target getVariable ["sabotage", 0]) - serverTime), "M:SS"] call CBA_fnc_formatElapsedTime
		]
	] call AlysiaClient_fnc_error;
};

_process = getArray(missionConfigFile >> "ALYSIA_LABORATORIES" >> (_info select 2) >> "process") + (_target getVariable ["extra_process", []]);

{
	_config = _x;
	if (([configName _config] call AlysiaClient_fnc_itemCount) > 0) then
	{
		{
			_proc = _x;
			if (!(_proc in _process)) then {_process pushBack _proc};
		} forEach getArray(_config >> "process");
	};
} forEach ((format["'%1' in getArray(_x >> 'labos')", (_info select 2)]) configClasses (missionConfigFile >> "ALYSIA_BLUEPRINTS"));

[_target, _process] call AlysiaClient_fnc_process_choice_open;
