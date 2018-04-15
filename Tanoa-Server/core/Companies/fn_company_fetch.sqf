/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_uid", "_object"];
_uid = [_this, 0, "", [""]] call BIS_fnc_param;

if (_uid isEqualTo "") exitWith {objNull};

_object = objNull;

{
	if (
			!(_x getVariable ["construction", false]) &&
			(_uid in ((_x getVariable "company_members") select 0))
		) exitWith {_object = _x};
} forEach gServer_companies;

_object;
