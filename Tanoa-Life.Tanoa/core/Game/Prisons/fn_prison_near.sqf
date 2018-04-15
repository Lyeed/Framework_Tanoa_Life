/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_unit", "_ret"];
_unit = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;

if (isNull _unit) exitWith {objNull};

_ret = objNull;

{
	if ((_unit distance (_x modelToWorld getArray(missionConfigFile >> "ALYSIA_PRISONS" >> typeOf(_x) >> "arrest_pos"))) < 10) exitWith {_ret = _x};
} forEach ([prison_n, prison_s]);

_ret;
