/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_uid", "_object"];
_uid = [_this, 0, "", [""]] call BIS_fnc_param;

if (_uid isEqualTo "") exitWith {objNull};

_object = objNull;

{
	if (((_x getVariable ["laboratory_info", ["", ""]]) select 1) isEqualTo _uid) exitWith {_object = _x};
} forEach gServer_laboratories;

_object;
