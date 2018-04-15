/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (!((crew _target) isEqualTo [])) exitWith {
	["Le véhicule doit être vide."] call AlysiaClient_fnc_error;
};
if ((speed _target) > 0) exitWith {
	["Le véhicule doit être à l'arrêt."] call AlysiaClient_fnc_error;
};

[_target, false, 2, 0] call AlysiaClient_fnc_velocity;
