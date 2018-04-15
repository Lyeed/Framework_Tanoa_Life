/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide"] call AlysiaClient_fnc_error;
};
if (!((crew _target) isEqualTo [])) exitWith {
	["Le véhicule doit être vide."] call AlysiaClient_fnc_error;
};
if ((speed _target) > 0) exitWith {
	["Le véhicule doit être à l'arrêt."] call AlysiaClient_fnc_error;
};

if (!(["Retourner", 4, _target, "", "AinvPknlMstpsnonWnonDnon_medic_1"] call AlysiaClient_fnc_showProgress)) exitWith {};

if (!((crew _target) isEqualTo [])) exitWith {
	["Le véhicule doit être vide."] call AlysiaClient_fnc_error;
};
if ((speed _target) > 0) exitWith {
	["Le véhicule doit être à l'arrêt."] call AlysiaClient_fnc_error;
};

_target setPosATL [(getPosATL _target) select 0, (getPosATL _target) select 1, ((getPosATL _target) select 2) + 0.6];
if (local _target) then {
	_target setDir ((getDir _target) + 0.1);
} else {
	[_target, ((getDir _target) + 0.1)] remoteExecCall ["setDir", (owner _target)];
};
