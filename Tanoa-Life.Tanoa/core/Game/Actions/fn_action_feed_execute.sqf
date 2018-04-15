/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (isNull g_interaction_target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

_sel = lbCurSel 69002;
if (_sel isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné d'objet à faire consommer."] call AlysiaClient_fnc_error;
};

_item = lbData[69002, _sel];
if (_item isEqualTo "") exitWith {
	["Impossible de récupérer les informations de l'objet à faire consommer."] call AlysiaClient_fnc_error;
};

if (!(g_interaction_target getVariable ['restrained',false]) && !(g_interaction_target getVariable ['surrender',false])) exitWith {
	["La cible doit avoir être menottés ou avoir les mains sur la tête pour être force-feed."] call AlysiaClient_fnc_error;
};

closeDialog 0;
if ([false, _item, 1] call AlysiaClient_fnc_handleInv) then {
	[_item] remoteExecCall ["AlysiaClient_fnc_eatFood", g_interaction_target];
} else {
	["Impossible de récupérer l'objet à faire consommmer dans votre inventaire."] call AlysiaClient_fnc_error;
};
