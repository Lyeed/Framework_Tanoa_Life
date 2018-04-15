/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_item"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_item = [_this, 1, "", [""]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (_item isEqualTo "") exitWith {
	["Aucun vaccin précisé."] call AlysiaClient_fnc_error;
};

if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};

if (!(_item in (magazines player))) exitWith {
	["Vous n'avez pas le vaccin requis."] call AlysiaClient_fnc_error;
};

g_action_inUse = true;

player playAction "medic";
uiSleep 2;

g_action_inUse = false;

if (!(_item in (magazines player))) exitWith {
	["Vous n'avez pas le vaccin requis.'"] call AlysiaClient_fnc_error;
};

player removeMagazine _item;
if (_target isEqualTo player) then {
	[_item] call AlysiaClient_fnc_item_vaccin_apply;
} else {
	[_item] remoteExecCall ["AlysiaClient_fnc_item_vaccin_apply", _target];
};
