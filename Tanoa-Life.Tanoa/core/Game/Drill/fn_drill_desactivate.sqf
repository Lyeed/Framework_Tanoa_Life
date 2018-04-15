/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_object";
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _object) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (!(_object getVariable ["active", false])) exitWith {
	["La foreuse est déjà en éteinte."] call AlysiaClient_fnc_error;
};

_object setVariable ["active", false, true];
