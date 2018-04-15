/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_new";

_new = [0,0,0];

{
	_position = _x;
	if (count((format["((%1 distance (getMarkerPos (configName _x))) < getNumber(_x >> 'distance'))", _position]) configClasses (missionConfigFile >> "ALYSIA_DYN_MARKERS")) isEqualTo 0) exitWith {
		_new = _x;
	};
} forEach ([getArray(configFile >> "Cfg_Server" >> "dynamic_markers" >> getText(missionConfigFile >> "ALYSIA_DYN_MARKERS" >> ([_this, 0, "", [""]] call BIS_fnc_param) >> "positions"))] call CBA_fnc_shuffle);

_new;
