/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_uid", "_houses"];
_uid = [_this, 0, "", [""]] call BIS_fnc_param;

if (_uid isEqualTo "") exitWith {[]};

_houses = [];

{
	if ((_uid in (_x getVariable ["house_tenants", []])) || (_uid isEqualTo ((_x getVariable ["house_owner", ["", ""]]) select 0))) then {_houses pushBack _x};
} forEach gServer_houses;

_houses;
