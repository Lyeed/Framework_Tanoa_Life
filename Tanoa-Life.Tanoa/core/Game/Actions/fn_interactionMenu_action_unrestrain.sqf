/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {};

if (!(_target getVariable ["restrained", false])) exitWith {
	["La cible n'est pas menottée"] call AlysiaClient_fnc_error;
};
if (!(isNull (_target getVariable ["escorted", objNull]))) exitWith {
	["Quelqu'un escorte la cible"] call AlysiaClient_fnc_error;
};

closeDialog 0;
g_action_inUse = true;
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
g_action_inUse = false;

if (!(_target getVariable ["restrained", false])) exitWith {
	["La cible n'est pas menottée"] call AlysiaClient_fnc_error;
};
if (!(isNull (_target getVariable ["escorted", objNull]))) exitWith {
	["Quelqu'un escorte la cible"] call AlysiaClient_fnc_error;
};

if (!([true, "handcuffs", 1] call AlysiaClient_fnc_handleInv)) then {
	["Vous n'avez pas récupéré les menottes car vous n'avez pas assez de place"] call AlysiaClient_fnc_error;
};

_target setVariable ["restrained", false, true];
