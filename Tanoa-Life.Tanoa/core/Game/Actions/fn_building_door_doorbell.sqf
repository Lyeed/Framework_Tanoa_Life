/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_door"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

_door = [_target] call AlysiaClient_fnc_nearestDoor;
if (_door isEqualTo 0) exitWith {
	["Vous n'êtes près d'aucune porte."] call AlysiaClient_fnc_error;
};

[player, "doorbell", 10] call AlysiaClient_fnc_globalSay3d;
