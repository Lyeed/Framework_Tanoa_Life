/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_spawnPos", "_target", "_cfg"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_garage = [_this, 3, "", [""]] call BIS_fnc_param;

if ((_garage isEqualTo "") || (isNull _target)) exitWith {};

if (g_action_inUse) exitWith {
	["Vous avez l'air occupé<br/>Revenez plus tard"] call AlysiaClient_fnc_error;
};

_cfg = missionConfigFile >> "ALYSIA_GARAGES" >> _garage;
if (!isClass(_cfg)) exitWith {
	[format["Impossible de trouver les informations concernant le garage [%1]", _garage]] call AlysiaClient_fnc_error;
};

g_garage_info =
[
	getText(_cfg >> "name"),
	getArray(_cfg >> "types"),
	getArray(_cfg >> "spawns"),
	getNumber(_cfg >> "pay")
];

[player, (g_garage_info select 1)] remoteExec ["AlysiaServer_fnc_garageVehicles", 2];
