/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (dialog) then {
	closeDialog 0;
};

createDialog "RscDisplayPlayerTrade";

g_interaction_target = _target;
g_interaction_trade_inventory = [];
g_interaction_trade_keys_vehicles = [];
g_interaction_trade_keys_buildings = [];
g_interaction_trade_money = 0;
g_interaction_trade_active = false;

[] call AlysiaClient_fnc_interactionMenu_action_trade_update;

while {!(isNull (findDisplay 10000))} do
{
	if (isNull _target) exitWith
	{
		["Echange <t color='#FFBF00'>interrompu</t>.<br/>Cible invalide."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (player getVariable ["is_coma", false]) exitWith
	{
		["Echange <t color='#FFBF00'>interrompu</t>.<br/>Vous êtes dans le coma."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if ((player distance _target) > ((((boundingBox _target) select 1) select 0) + 2.5)) exitWith
	{
		["Echange <t color='#FFBF00'>interrompu</t>.<br/>Vous êtes trop loin de la cible."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (player getVariable ["restrained", false]) exitWith
	{
		["Echange <t color='#FFBF00'>interrompu</t>.<br/>Vous êtes menotté."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (player getVariable ["surrender", false]) exitWith
	{
		["Echange <t color='#FFBF00'>interrompu</t>.<br/>Vous avez les mains sur la tête."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (_target getVariable ["is_coma", false]) exitWith
	{
		["Echange <t color='#FFBF00'>interrompu</t>.<br/>La cible est dans le coma."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (_target getVariable ["restrained", false]) exitWith
	{
		["Echange <t color='#FFBF00'>interrompu</t>.<br/>La cible est menotté."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (_target getVariable ["surrender", false]) exitWith
	{
		["Echange <t color='#FFBF00'>interrompu</t>.<br/>La cible a les mains sur la tête."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};

	uiSleep 0.5;
};

{
	[true, (_x select 0), (_x select 1)] call AlysiaClient_fnc_handleInv;
} forEach g_interaction_trade_inventory;
[true, g_interaction_trade_money] call AlysiaClient_fnc_handleCash;
