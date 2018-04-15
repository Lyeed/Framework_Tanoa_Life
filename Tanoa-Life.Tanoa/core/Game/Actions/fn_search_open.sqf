/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list", "_inv_virtual", "_inv_arma", "_money", "_array", "_ctrl_btn"];
_inv_virtual = [_this, 0, [], [[]]] call BIS_fnc_param;
_inv_arma = [_this, 1, [], [[]]] call BIS_fnc_param;
_money = [_this, 2, 0, [0]] call BIS_fnc_param;

if (dialog) then {
	closeDialog 0;
};

createDialog "RscDisplayDefaultListChoice";

disableSerialization;
_display = findDisplay 69000;
if (isNull _display) exitWith {};

(_display displayCtrl 69001) ctrlSetStructuredText parseText "<t size='1.5' align='center'>Fouille</t>";

_list = _display displayCtrl 69002;
lbClear _list;

_list ctrlSetEventHandler ["LBSelChanged", "_this call AlysiaClient_fnc_search_update;"];

if (_money > 0) then
{
	_index = _list lbAdd format["%1$", [_money] call AlysiaClient_fnc_numberText];
	_list lbSetPicture [_index, "Alysia_Client\Textures\Items_virtual\money.paa"];
	_list lbSetValue [_index, 0];
};

_array = [];

{
	private "_delete";

	_className = _x select 0;
	if (isClass(missionConfigFile >> "ALYSIA_ITEMS" >> _className >> "remove")) then {
		_delete = 1;
	} else {
		_delete = 0;
	};

	_array pushBack [
		format["%1x %2", ([(_x select 1)] call AlysiaClient_fnc_numberText), ([_className] call AlysiaClient_fnc_itemGetName)],
		[_className] call AlysiaClient_fnc_itemGetImage,
		_className,
		_delete,
		"VIRTUAL"
	];
} forEach _inv_virtual;

{
	_info = [(_x select 0)] call AlysiaClient_fnc_fetchCfgDetails;
	_array pushBack [
		_info select 1,
		_info select 2,
		_x select 0,
		_x select 1,
		"ARMA"
	];
} forEach _inv_arma;

_ctrl_btn = _display displayCtrl 69007;

_ctrl_btn buttonSetAction "[] spawn AlysiaClient_fnc_search_seize_player;";
_ctrl_btn ctrlSetEventHandler["MouseEnter","
	((findDisplay 69000) displayCtrl 69006) ctrlSetStructuredText parseText ""<t align='center' size='1.3' color='#000000'>Saisir</t>"";
	((findDisplay 69000) displayCtrl 69004) ctrlSetBackgroundColor [1,1,1,1];
	ctrlSetText[69005, ""Alysia_Client_Texture\Data\interactions\player_to_skull\action_search_select.paa""];
	ctrlShow[69003, false];"
];
_ctrl_btn ctrlSetEventHandler["MouseExit","
	((findDisplay 69000) displayCtrl 69006) ctrlSetStructuredText parseText ""<t align='center' size='1.3' color='#FFFFFF'>Saisir</t>"";
	((findDisplay 69000) displayCtrl 69004) ctrlSetBackgroundColor [0,0,0,0.6];
	ctrlSetText[69005, ""Alysia_Client_Texture\Data\interactions\player_to_skull\action_search.paa""];
	ctrlShow[69003, true];"
];

(_display displayCtrl 69005) ctrlSetText "Alysia_Client_Texture\Data\interactions\player_to_skull\action_search.paa";
(_display displayCtrl 69006) ctrlSetStructuredText parseText "<t align='center' size='1.3'>Saisir</t>";

if (_array isEqualTo []) then {
	_list lbAdd "Vide";
} else {
	{
		_index = _list lbAdd (_x select 0);
		_list lbSetPicture [_index, (_x select 1)];
		_list lbSetData [_index, str(_x)];
		_list lbSetValue [_index, (_x select 3)];
	} forEach (_array call CBA_fnc_shuffle);
};

_list lbSetCurSel 0;

while {!(isNull _display)} do
{
	if (isNull g_interaction_target) exitWith
	{
		["Fouille <t color='#FFBF00'>interrompu</t>.<br/>Cible invalide."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (!(g_interaction_target getVariable ["restrained", false]) && !(g_interaction_target getVariable ["surrender", false])) exitWith
	{
		["Fouille <t color='#FFBF00'>interrompu</t>.<br/>La cible ne peut plus être fouillée."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (g_interaction_target getVariable ["is_coma", false]) exitWith
	{
		["Fouille <t color='#FFBF00'>interrompu</t>.<br/>La cible est dans le coma."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if ((player distance g_interaction_target) > ((((boundingBox g_interaction_target) select 1) select 0) + 2.5)) exitWith
	{
		["Fouille <t color='#FFBF00'>interrompu</t>.<br/>Vous êtes trop loin de la cible."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (player getVariable ["is_coma", false]) exitWith
	{
		["Fouille <t color='#FFBF00'>interrompu</t>.<br/>Vous êtes dans le coma."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (player getVariable ["restrained", false]) exitWith
	{
		["Fouille <t color='#FFBF00'>interrompu</t>.<br/>Vous êtes menotté."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (player getVariable ["surrender", false]) exitWith
	{
		["Fouille <t color='#FFBF00'>interrompu</t>.<br/>Vous avez les mains sur la tête."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};

	uiSleep 0.5;
};
