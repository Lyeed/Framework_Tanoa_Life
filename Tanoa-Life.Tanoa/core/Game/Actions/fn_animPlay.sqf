/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_anim";
_anim = [_this, 0, "", [""]] call BIS_fnc_param;

if (_anim isEqualTo "") exitWith {
	["Aucune animation à lancer."] call AlysiaClient_fnc_error;
};
if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};
if (player getVariable ["surrender", false]) exitWith {
	["Vous ne pouvez pas effectuer une animation alors que vous avez les mains sur la tête."] call AlysiaClient_fnc_error;
};
if (player getVariable ["restrained", false]) exitWith {
	["Vous ne pouvez pas effectuer une animation alors que vous êtes menotté."] call AlysiaClient_fnc_error;
};
if (!((vehicle player) isKindOf "Man"))  exitWith {};

g_interrupted = false;
g_action_inUse = true;

[player, _anim] remoteExecCall ["switchMove", -2];
[player, _anim] remoteExecCall ["playMove", player];

titleText["Déplacez-vous pour annuler l'animation", "PLAIN DOWN"];

waitUntil {g_interrupted || ((animationState player) != _anim)};

g_action_inUse = false;
if (g_interrupted) then
{
	titleText["Interrompu", "PLAIN DOWN"];
	[player, ""] remoteExecCall ["switchMove", -2];
};
