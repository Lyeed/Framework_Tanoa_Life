/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_sel", "_app", "_price"];

if ((time - g_action_delay) < 1) exitWith {
	["Veuillez ralentir dans vos actions"] call AlysiaClient_fnc_error;
};

_sel = lbCurSel 8110;
if (_sel isEqualTo -1) exitWith {};

_app = (call compile format["%1", (lbData[8110, _sel])]) select 0;
if (_app in g_apps) exitWith {};

_price = lbValue[8110, _sel];
if (g_atm < _price) exitWith {};

g_action_delay = time;

g_apps pushBack _app;
playSound "buy";
[false, _price, "Application"] call AlysiaClient_fnc_handleATM;
["STORE_APPLICATIONS"] spawn AlysiaClient_fnc_tabletApp;
