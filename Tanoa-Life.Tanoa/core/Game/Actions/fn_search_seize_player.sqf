/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_data", "_sel"];

if (isNull g_interaction_target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if ((time - g_action_delay) < 1) exitWith {
	["Veuillez ralentir dans vos actions."] call AlysiaClient_fnc_error;
};

_sel = lbCurSel 69002;
if (_sel isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné d'objet à retirer."] call AlysiaClient_fnc_error;
};

_data = lbData[69002, _sel];
if (_data isEqualTo "") exitWith {
	["Impossible de récupérer les informations de l'objet à retirer."] call AlysiaClient_fnc_error;
};

[player, (call compile _data)] remoteExecCall ["AlysiaClient_fnc_search_seize_target", g_interaction_target];

closeDialog 0;
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
g_action_delay = time;
