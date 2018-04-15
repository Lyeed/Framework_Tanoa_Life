/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_info"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {};

_info = _target getVariable "laboratory_info";
if (isNil "_info") exitWith {};

if (_target getVariable ["inUse", false]) exitWith {
	["L'objet est déjà en cours d'utilisation"] call AlysiaClient_fnc_error;
};

if ((_target getVariable ["sabotage", 0]) > serverTime) exitWith {
	["Ce laboratoire a déjà été saboté"] call AlysiaClient_fnc_error;
};

if (!(["Sabotage", 15, _target, "", "AinvPknlMstpsnonWnonDnon_medic_1"] call AlysiaClient_fnc_showProgress)) exitWith {};

if ((_target getVariable ["sabotage", 0]) > serverTime) exitWith {
	["Ce laboratoire a déjà été saboté"] call AlysiaClient_fnc_error;
};

_target setVariable ["sabotage", serverTime + (120 * 60), true];
["Sabotage <t color='#01DF01'>réussi</t>"] call AlysiaClient_fnc_error;
