/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_short", "_side", "_level", "_array", "_max"];
_side = [_this, 0, sideUnknown, [sideUnknown]] call BIS_fnc_param;
_level = [_this, 1, 0, [0]] call BIS_fnc_param;
_short = [_this, 2, false, [false]] call BIS_fnc_param;

if (_side isEqualTo sideUnknown) exitWith {"Unknown side"};

if (!_short) then {
	_array = getArray(missionConfigFile >> "ALYSIA_FACTIONS" >> str(_side) >> "Ranks" >> "ranks_complet");
} else {
	_array = getArray(missionConfigFile >> "ALYSIA_FACTIONS" >> str(_side) >> "Ranks" >> "ranks_short");
};

_max = count(_array);
if (_level >= _max) then {
	_array select _max;
} else {
	_array select _level;
};
