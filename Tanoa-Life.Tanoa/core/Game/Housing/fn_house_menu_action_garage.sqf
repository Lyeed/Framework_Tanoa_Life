/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_config"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};

_config = missionConfigFile >> "ALYSIA_HOUSES" >> typeOf(_target);
if (!isClass(_config)) exitWith {
	["Impossible de trouver la config bâtiment de la cible."] call AlysiaClient_fnc_error;
};

g_interaction_target = _target;
g_garage_info =
[
	"Chez vous",
	getArray(_config >> "garage" >> "types"),
	[],
	0
];

[player, (g_garage_info select 1)] remoteExec ["AlysiaServer_fnc_garageVehicles", 2];
