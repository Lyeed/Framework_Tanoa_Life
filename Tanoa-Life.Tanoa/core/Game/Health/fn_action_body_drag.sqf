/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_find"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (!(_target getVariable ["is_coma", false])) exitWith {
	["La cible n'est pas dans le coma"] call AlysiaClient_fnc_error;
};

if (_target getVariable ["transporting", false]) exitWith {
	["Quelqu'un traine déjà ce corps."] call AlysiaClient_fnc_error;
};

_find = false;
{
	if ((isPlayer _x) && (_x getVariable ["is_coma", false])) exitWith {_find = true};
} forEach attachedObjects player;
if (_find) exitWith {
	["Vous êtes déjà en train de trainer quelqu'un."] call AlysiaClient_fnc_error;
};

player playAction "grabDrag";
_target attachTo [player, [0, 1, 0]];
_target setVariable ["transporting", true, true];
titleText ["* Appuyez sur 'windows' pour déposer le corps *", "PLAIN DOWN"];
