/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_target", "_inventory", "_can_store", "_can_take", "_playSound", "_back_button", "_weight", "_distance"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_inventory = [_this, 1, "Trunk", ["Trunk"]] call BIS_fnc_param;
_can_store = [_this, 2, true, [true]] call BIS_fnc_param;
_can_take = [_this, 3, true, [true]] call BIS_fnc_param;
_playSound = [_this, 4, true, [true]] call BIS_fnc_param;
_back_button = [_this, 5, true, [true]] call BIS_fnc_param;
_delete_on_empty = [_this, 6, false, [false]] call BIS_fnc_param;

if (isNull _target) exitWith {};
if (g_action_inUse) exitWith {};
if (dialog) then {closeDialog 0};

_inUse = _target getVariable ["trunk_in_use_ID", ""];
if ((_inUse != "") && !(_inUse isEqualTo (getPlayerUID player))) exitWith {
	["Le coffre est déjà en cours d'utilisation."] call AlysiaClient_fnc_error;
};

if (!(["Accès au stockage", round(random(2) + 0.5), _target] call AlysiaClient_fnc_showProgress)) exitWith {};

_weight = [_target] call AlysiaClient_fnc_getVehicleWeightMax;
if (_weight isEqualTo 0) exitWith {
	["Impossible de déterminer l'inventaire maximum de la cible."] call AlysiaClient_fnc_error;
};

_inUse = _target getVariable ["trunk_in_use_ID", ""];
if ((_inUse != "") && !(_inUse isEqualTo (getPlayerUID player))) exitWith {
	["Le coffre est déjà en cours d'utilisation."] call AlysiaClient_fnc_error;
};

g_interaction_target = _target;
g_interaction_target setVariable ["trunk_in_use_ID", (getPlayerUID player), true];
g_interaction_target_trunk_type = _inventory;
g_interaction_target_trunk_store = _can_store;
g_interaction_target_trunk_take = _can_take;
g_interaction_target_trunk_delete = _delete_on_empty;
g_interaction_target_trunk_transfer = false;
g_interaction_target_trunk_weight_max = _weight;

createDialog "RscDisplayVirtualExhange";

disableSerialization;
_display = findDisplay 500;
_distance  = (player distance _target) + 2;

if ((vehicle player) isEqualTo player) then {
	player playAction "Gear";
};

if (!_back_button) then
{
	ctrlShow[19503, false];
	ctrlShow[19504, false];
	ctrlShow[19505, false];
	ctrlShow[19506, false];
};

(_display displayCtrl 501) ctrlSetStructuredText parseText format
[
	"<t align='center' size='1.8'>%1</t>",
	getText(configFile >> "CfgVehicles" >> typeOf(g_interaction_target) >> "displayName")
];

(_display displayCtrl 515) ctrlSetStructuredText parseText format
[
	"<t align='center'>%1</t>",
	g_maxWeight
];

(_display displayCtrl 514) ctrlSetStructuredText parseText format
[
	"<t align='center'>%1</t>",
	g_interaction_target_trunk_weight_max
];

[] call AlysiaClient_fnc_virtual_menu_exhange_update_lists;

while {!(isNull _display)} do
{
	if ((isNull g_interaction_target) || !(alive g_interaction_target)) exitWith
	{
		["Fouille du stockage <t color='#FFBF00'>interrompu</t>.<br/>Cible invalide."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if ((player distance g_interaction_target) > _distance) exitWith
	{
		["Fouille du stockage <t color='#FFBF00'>interrompu</t>.<br/>Vous êtes trop loin de la cible."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (((g_interaction_target getVariable ["trunk_in_use_ID", ""]) != (getPlayerUID player)) && ((g_interaction_target getVariable ["trunk_in_use_ID", ""]) != "")) exitWith
	{
		["Fouille du stockage <t color='#FFBF00'>interrompu</t>.<br/>Quelqu'un d'autre fouille le même stockage que vous."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (((locked g_interaction_target) isEqualTo 2) && !(g_interaction_target in g_vehicles)) exitWith
	{
		["Fouille du stockage <t color='#FFBF00'>interrompu</t>.<br/>Le stockage est vérrouillé et vous ne possédez pas les clefs."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (player getVariable ["is_coma", false]) exitWith
	{
		["Fouille du stockage <t color='#FFBF00'>interrompu</t>.<br/>Vous êtes dans le coma."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (player getVariable ["restrained", false]) exitWith
	{
		["Fouille du stockage <t color='#FFBF00'>interrompu</t>.<br/>Vous êtes menotté."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (player getVariable ["surrender", false]) exitWith
	{
		["Fouille du stockage <t color='#FFBF00'>interrompu</t>.<br/>Vous avez les mains sur la tête."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};

	uiSleep 0.5;
};

g_interaction_target setVariable [g_interaction_target_trunk_type, (g_interaction_target getVariable [g_interaction_target_trunk_type, []]), true];
[true] call AlysiaClient_fnc_temporyInventory_update;

if (_playSound) then {
	[g_interaction_target, "trunk_close", 20] call AlysiaClient_fnc_globalSay3d;
};

if ((g_interaction_target getVariable ["trunk_in_use_ID", ""]) isEqualTo (getPlayerUID player)) then {
	g_interaction_target setVariable ["trunk_in_use_ID", "", true];
};
