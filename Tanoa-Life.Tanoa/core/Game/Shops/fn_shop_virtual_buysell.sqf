/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_total";

if (g_shop_active) exitWith {};

g_shop_active = true;

[] call AlysiaClient_fnc_shop_virtual_update_basket;

if ((g_shop_receive_dollar + g_shop_receive_illegal + g_cash) < g_shop_bill_dollar) exitWith
{
	["Vous n'avez pas assez d'argent."] call AlysiaClient_fnc_error;
	g_shop_active = false;
};
if ((g_shop_tmp_sell isEqualTo []) && (g_shop_tmp_buy isEqualTo [])) exitWith
{
	["La panier est vide."] call AlysiaClient_fnc_error;
	g_shop_active = false;
};
if (g_shop_lock_bool && (g_interaction_target getVariable [format["UID_%1", getPlayerUID player], 0]) > serverTime) exitWith
{
	[
		format
		[
			"<t color='#DF0101'>Impossible</t> de vendre :<br/>%1<br/>Vous avez déjà effectué une <t color='#FF8000'>vente récemment</t>.<br/>Veuillez attendre %2",
			g_shop_lock_str,
			[(g_interaction_target getVariable [format["UID_%1", getPlayerUID player], 0]) - serverTime, "H:MM:SS"] call CBA_fnc_formatElapsedTime
		]
	] call AlysiaClient_fnc_error;
	g_shop_active = false;
};

ctrlShow[2414, false];
ctrlShow[2415, false];
ctrlShow[2416, false];
ctrlShow[2417, false];
ctrlShow[2418, false];

uiSleep(random(0.5) + 0.2);

if ((time - g_action_delay) < 2) exitWith {};
g_action_delay = time;

playSound "buy";
_total = g_shop_receive_dollar - g_shop_bill_dollar;
if (_total != 0) then
{
	if (_total > 0) then {
		[true, _total] call AlysiaClient_fnc_handleCash;
	} else {
		[false, abs(_total)] call AlysiaClient_fnc_handleCash;
	};
};
g_shop_bill_dollar = 0;
g_shop_receive_dollar = 0;

if (g_shop_lock_bool) then {
	g_interaction_target setVariable [format["UID_%1", getPlayerUID player], serverTime + (60 * 75), true];
};

if (g_shop_receive_illegal > 0) then
{
	[true, "illegal_money", g_shop_receive_illegal] call AlysiaClient_fnc_handleInv;
	g_shop_receive_illegal = 0;
};

if ((g_shop_receive_company > 0) && !(isNull g_company)) then
{
	[g_company, true, g_shop_receive_company, (player getVariable "realname"), "Activité professionnelle"] remoteExec ["AlysiaServer_fnc_company_bank_handle", 2];
	g_shop_receive_company = 0;
};

{
	[true, (_x select 0), (_x select 1)] call AlysiaClient_fnc_handleInv;
} forEach g_shop_tmp_buy;

g_shop_tmp_buy = [];
g_shop_tmp_sell = [];

[] call AlysiaClient_fnc_shop_virtual_update_basket;

uiSleep 0.2;

g_shop_active = false;
