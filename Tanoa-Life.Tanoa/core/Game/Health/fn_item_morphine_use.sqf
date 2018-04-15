/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 3, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide"] call AlysiaClient_fnc_error;
};

if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action"] call AlysiaClient_fnc_error;
};

if (!("SkylineItems_Morphine" in (magazines player))) exitWith {
	["Vous n'avez pas de morphine"] call AlysiaClient_fnc_error;
};

g_action_inUse = true;

player playAction "medic";
sleep 2;

if (!("SkylineItems_Morphine" in (magazines player))) exitWith {
	["Vous n'avez pas de morphine"] call AlysiaClient_fnc_error;
};

player removeMagazine "SkylineItems_Morphine";
if (_target isEqualTo player) then {
	[] call AlysiaClient_fnc_item_morphine_apply;
} else {
	[] remoteExecCall ["AlysiaClient_fnc_item_morphine_apply", _target];
};

g_action_inUse = false;
