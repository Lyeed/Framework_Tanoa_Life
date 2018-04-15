/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_price", "_desc"];

if (isNull g_interaction_target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

_price = ctrlText 17001;
if (!([_price] call AlysiaClient_fnc_isNumber)) exitWith {
	["La somme à payer doit être <t color='#04B404'>un nombre</t> valide."] call AlysiaClient_fnc_error;
};

_price = parseNumber(_price);
if (_price < 100) exitWith {
	["La somme à payer doit être <t color='#04B404'>supérieure ou égale à 100$</t>."] call AlysiaClient_fnc_error;
};
if (_price > 999999) exitWith {
	["La somme à payer ne doit pas <t color='#04B404'>dépasser</t> <t color='8cff9b'>999.999</t>$."] call AlysiaClient_fnc_error;
};

_desc = ctrlText 17002;
if (_desc isEqualTo "") then {
	_desc = "Aucune";
};

if (([_desc] call CBA_fnc_strLen) > 90) exitWith {
	["La description ne doit pas dépasser <t color='#04B404'>90 caractères</t>."] call AlysiaClient_fnc_error;
};

closeDialog 0;
["Demande de paiement <t color='#01DF01'>proposée</t>."] call AlysiaClient_fnc_info;
[_price, _desc, player, g_company] remoteExec ["AlysiaClient_fnc_interactionMenu_action_ticket_receive", g_interaction_target];
