/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_prison","_list", "_target", "_display"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (_target getVariable ["arrested", false]) exitWith {
	["Cette personne est déjà en train de purger une peine."] call AlysiaClient_fnc_error;
};

_prison = [_target] call AlysiaClient_fnc_prison_near;
if (isNull _prison) exitWith {
	["Vous n'êtes près d'aucun lieu permettant l'arrestation."] call AlysiaClient_fnc_error;
};

g_interaction_target = _target;
g_interaction_prison = _prison;

createDialog "RscDisplayArrest";

disableSerialization;
_display = findDisplay 20000;

_config = missionConfigFile >> "ALYSIA_PRISONS" >> typeOf(_prison);

_list = _display displayCtrl 20006;
lbClear _list;

{
	_index = _list lbAdd getText(_x >> "name");
	_list lbSetData [_index, (configName _x)];
} forEach ("true" configClasses (_config >> "cells"));
if ((lbSize _list) isEqualTo 0) then {
	_list lbAdd "Aucune";
};

_list lbSetCurSel 0;
