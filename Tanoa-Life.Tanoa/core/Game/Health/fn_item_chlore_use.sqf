/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};

if (!("Alysia_Chlore" in (magazines player))) exitWith {
	["Vous n'avez pas de piqure de chlore."] call AlysiaClient_fnc_error;
};

g_action_inUse = true;

player playAction "medic";
uiSleep 2;

if (!("Alysia_Chlore" in (magazines player))) exitWith {
	["Vous n'avez pas de piqure de chlore."] call AlysiaClient_fnc_error;
};

player removeMagazine "Alysia_Chlore";
if (_target isEqualTo player) then {
	[] spawn AlysiaClient_fnc_handleComa;
} else {
	[player] remoteExec ["AlysiaClient_fnc_handleComa", _target];
};

g_action_inUse = false;
