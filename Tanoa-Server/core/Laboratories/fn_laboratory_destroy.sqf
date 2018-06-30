/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_info", "_object"];
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _object) exitWith {};

_info = _object getVariable "laboratory_info";
if (isNil "_info") exitWith {};

gServer_laboratories deleteAt (gServer_laboratories find _object);
[format["DELETE FROM labo WHERE plate='%1'", (_info select 0)], 1] call ExtDB3_fnc_async;
deleteVehicle _object;
