/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_val";

if (g_interaction_trade_active) exitWith {};

_val = ctrlText 10008;
if (!([_val] call AlysiaClient_fnc_isNumber)) exitWith {["La somme d'argent à donner doit être un nombre"] call AlysiaClient_fnc_error};

_val = parseNumber(_val);
if (_val < 0) exitWith {
	["La somme d'argent à donner doit être supérieur à zéro"] call AlysiaClient_fnc_error;
};
if (g_cash < _val) exitWith {
	["Vous n'avez pas autant d'argent"] call AlysiaClient_fnc_error;
};

g_interaction_trade_active = true;
g_interaction_trade_money = g_interaction_trade_money + _val;
[false, _val] call AlysiaClient_fnc_handleCash;
[] call AlysiaClient_fnc_interactionMenu_action_trade_update;
g_interaction_trade_active = false;
