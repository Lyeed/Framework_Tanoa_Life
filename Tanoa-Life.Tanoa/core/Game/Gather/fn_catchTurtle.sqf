/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (alive _target) exitWith {
	["La tortue doit être morte pour pouvoir être ramassée."] call AlysiaClient_fnc_error;
};

if (([true, "turtle", 1] call AlysiaClient_fnc_handleInv)) then {
	deleteVehicle _target;
} else {
	["Vous n'avez pas assez de place."] call AlysiaClient_fnc_error;
};
