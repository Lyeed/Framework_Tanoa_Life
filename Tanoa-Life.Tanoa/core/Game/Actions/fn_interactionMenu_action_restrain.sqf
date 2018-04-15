/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (_target getVariable ["restrained", false]) exitWith {
	["La cible est déjà menottée."] call AlysiaClient_fnc_error;
};
if (!(_target getVariable ["surrender", false]) && ((animationState _target) != "incapacitated")) exitWith {
	["La cible ne peut pas être menottée."] call AlysiaClient_fnc_error;
};

player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";

if ([false, "handcuffs", 1] call AlysiaClient_fnc_handleInv) then {
	[] remoteExec ["AlysiaClient_fnc_restrain", _target];
} else {
	["Vous n'avez pas de menottes."] call AlysiaClient_fnc_error;
};
