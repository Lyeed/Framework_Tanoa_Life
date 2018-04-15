/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_object";
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _object) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};
if (_object getVariable ["destroyed", false]) exitWith {
	["Ce haut parleur a déjà été saboté."] call AlysiaClient_fnc_error;
};

if (["Sabotage d'un haut parleur", 7, _object, "", "AinvPknlMstpsnonWnonDnon_medic_1"] call AlysiaClient_fnc_showProgress) then
{
	if (_object getVariable ["destroyed", false]) exitWith {
		["Le haut parleur a déjà été saboté."] call AlysiaClient_fnc_error;
	};
	[_object, (["radio_buzz_1", "radio_buzz_2"] call BIS_fnc_selectRandom), 200] call AlysiaClient_fnc_globalSay3d;
	_object setVariable ["destroyed", true, true];
	["Vous avez saboté le haut parleur."] call AlysiaClient_fnc_info;
};
