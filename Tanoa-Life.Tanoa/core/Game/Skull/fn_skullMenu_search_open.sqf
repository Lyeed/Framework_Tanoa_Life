/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_button"];

if (isNull g_interaction_target) exitWith {};
if ((g_interaction_target getVariable ["inventory_in_use_UID", ""]) != "") exitWith {
	["Quelqu'un est déjà en train de fouiller ce corps"] call AlysiaClient_fnc_error;
};

if (dialog) then
{
	closeDialog 0;
	waitUntil {!dialog};
};

createDialog "RscDisplayDefaultListChoice";

disableSerialization;
_display = findDisplay 69000;
if (isNull _display) exitWith {};

(_display displayCtrl 69008) ctrlSetText "Alysia_Client_Texture\Data\skull\background.jpg";
(_display displayCtrl 69001) ctrlSetStructuredText parseText "<t size='1.5' align='center'>Inventaire</t>";
(_display displayCtrl 69005) ctrlSetText "Alysia_Client_Texture\Data\skull\take.paa";
(_display displayCtrl 69006) ctrlSetStructuredText parseText "<t align='left' size='1.3'>Prendre</t>";

_button = _display displayCtrl 69007;
_button buttonSetAction "[] call AlysiaClient_fnc_skullMenu_search_take;";

_button ctrlSetEventHandler["MouseEnter",
	"((findDisplay 69000) displayCtrl 69006) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Prendre</t>"";
	((findDisplay 69000) displayCtrl 69004) ctrlSetBackgroundColor [1,1,1,1];
	ctrlSetText[69005, ""Alysia_Client_Texture\Data\skull\take_select.paa""];
	ctrlShow[69003, false];"
];

_button ctrlSetEventHandler["MouseExit",
	"((findDisplay 69000) displayCtrl 69006) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Prendre</t>"";
	((findDisplay 69000) displayCtrl 69004) ctrlSetBackgroundColor [0,0,0,0.6];
	ctrlSetText[69005, ""Alysia_Client_Texture\Data\skull\take.paa""];
	ctrlShow[69003, true];"
];

player playAction "Gear";

g_interaction_target setVariable ["inventory_in_use_UID", (getPlayerUID player), true];
g_interaction_target_inv = g_interaction_target getVariable ["inv", []];
g_interaction_target_inv_active = false;

[] call AlysiaClient_fnc_skullMenu_search_update;

while {!(isNull _display)} do
{
	if ((g_interaction_target getVariable ["inventory_in_use_UID", ""]) != (getPlayerUID player)) exitWith {
		closeDialog 0;
	};
	if (player getVariable ["restrained", false]) exitWith {
		closeDialog 0;
	};
	if (isNull g_interaction_target) exitWith {
		closeDialog 0;
	};
	if (player getVariable ["is_coma", false]) exitWith {
		closeDialog 0;
	};

	uiSleep 0.5;
};

g_interaction_target setVariable ["inv", g_interaction_target_inv, true];
g_interaction_target setVariable ["inventory_in_use_UID", "", true];
