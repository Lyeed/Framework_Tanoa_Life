/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (!(isNull (player getVariable ["escorting", objNull]))) exitWith {
	["Vous escortez déjà quelqu'un"] call AlysiaClient_fnc_error;
};
if (!(isNull (_target getVariable ["escorted", objNull]))) exitWith {
	["Quelqu'un escorte déjà la cible"] call AlysiaClient_fnc_error;
};
if (!(_target getVariable ["restrained", false])) exitWith {
	["La cible doit être menottée"] call AlysiaClient_fnc_error;
};
if (isNull _target) exitWith {
	["Cible invalide"] call AlysiaClient_fnc_error;
};

g_action_inUse = true;

player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil {((animationState player) isEqualTo "ainvpercmstpsnonwnondnon_putdown_amovpercmstpsnonwnondnon")};

g_action_inUse = false;

if (!(isNull (player getVariable ["escorting", objNull]))) exitWith {
	["Vous escortez déjà quelqu'un"] call AlysiaClient_fnc_error;
};
if (!(isNull (_target getVariable ["escorted", objNull]))) exitWith {
	["Quelqu'un escorte déjà la cible"] call AlysiaClient_fnc_error;
};
if (!(_target getVariable ["restrained", false])) exitWith {
	["La cible doit être menottée"] call AlysiaClient_fnc_error;
};

_target attachTo [player, [0, 0.8, 0]];
_target setVariable ["escorted", player, true];
player setVariable ["escorting", _target, true];
