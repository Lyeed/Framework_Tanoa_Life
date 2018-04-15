/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_sel", "_vehicle", "_find"];

if (g_interaction_trade_active) exitWith {};

_sel = lbCurSel 10005;
if (_sel isEqualTo -1) exitWith {};

_vehicle = g_vehicles select (lbValue[10005, _sel]);
if (_vehicle in g_interaction_trade_keys_vehicles) exitWith {};

g_interaction_trade_active = true;
g_interaction_trade_keys_vehicles pushBack _vehicle;
[] call AlysiaClient_fnc_interactionMenu_action_trade_update;
g_interaction_trade_active = false;
