/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_uid";
_uid = [_this, 0, "", [""]] call BIS_fnc_param;

if (_uid isEqualTo "") exitWith {};

[format["DELETE FROM players WHERE uid='%1'", _uid], 1] call ExtDB3_fnc_async;
[format["DELETE FROM vehicles WHERE pid='%1'", _uid], 1] call ExtDB3_fnc_async;
[format["DELETE FROM labo WHERE owner='%1'", _uid], 1] call ExtDB3_fnc_async;

{
	_x setVariable ["house_tenants", (_x getVariable ["house_tenants", []]) - [_uid]];
} forEach ([_uid] call AlysiaServer_fnc_house_fetch);
