/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_object", "_info", "_owner"];
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _object) exitWith {};

_info = _object getVariable "company_info";
if (isNil "_info") exitWith {};

gServer_companies deleteAt (gServer_companies find _object);
deleteVehicle _object;

[format["DELETE FROM companies WHERE plate='%1'", (_info select 3)], 1] call ExtDB3_fnc_async;

_owner = [(_info select 1)] call AlysiaClient_fnc_getPlayerFromUID;
if (!(isNull _owner)) then {
	["Votre entreprise a été <t color='#FF8000'>supprimée</t>."] remoteExecCall ["AlysiaClient_fnc_info", _owner];
};
