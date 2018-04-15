/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_side", "_ret"];
_side = [_this, 0, sideUnknown, [sideUnknown]] call BIS_fnc_param;

if (_side isEqualTo sideUnknown) exitWith {};

if ([_this, 1, false, [false]] call BIS_fnc_param) then {
	_ret = getText(missionConfigFile >> "ALYSIA_FACTIONS" >> str(_side) >> "name_full");
} else {
	_ret = getText(missionConfigFile >> "ALYSIA_FACTIONS" >> str(_side) >> "name");
};

_ret;
