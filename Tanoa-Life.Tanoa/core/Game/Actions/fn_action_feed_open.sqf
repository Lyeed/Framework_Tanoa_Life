/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_list", "_display"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

g_interaction_target = _target;

createDialog "RscDisplayDefaultListChoice";

disableSerialization;
_display = findDisplay 69000;
if (isNull _display) exitWith {};

(_display displayCtrl 69001) ctrlSetStructuredText parseText "<t size='1.5' align='center'>Force-feed</t>";

_list = _display displayCtrl 69002;
lbClear _list;

{
	_item = configName _x;
	_val = [_item] call AlysiaClient_fnc_itemCount;
	if (_val > 0) then
	{
		_index = _list lbAdd format["%1x %2", ([_val] call AlysiaClient_fnc_numberText), ([_item] call AlysiaClient_fnc_itemGetName)];
		_list lbSetData [_index, _item];
		_list lbSetPicture [_index, ([_item] call AlysiaClient_fnc_itemGetImage)];
		_list lbSetTooltip [_index, ([_item] call AlysiaClient_fnc_itemGetName)];
	};
} forEach ("isClass(_x >> 'food')" configClasses (missionConfigFile >> "ALYSIA_ITEMS"));

if ((lbSize _list) isEqualTo 0) then
{
	_list lbAdd "Aucun";
	ctrlShow[69003, false];
	ctrlShow[69004, false];
	ctrlShow[69005, false];
	ctrlShow[69006, false];
	ctrlShow[69007, false];
} else {
	(_display displayCtrl 69007) buttonSetAction "[] call AlysiaClient_fnc_action_feed_execute;";
};

_list lbSetCurSel 0;

while {!(isNull _display)} do
{
	if (isNull _target) exitWith
	{
		["Force-feed <t color='#FFBF00'>interrompu</t>.<br/>Cible invalide."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (!(_target getVariable ["restrained", false]) && !(_target getVariable ["surrender", false])) exitWith
	{
		["Force-feed <t color='#FFBF00'>interrompu</t>.<br/>La cible ne peut plus être fouillée."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (_target getVariable ["is_coma", false]) exitWith
	{
		["Force-feed <t color='#FFBF00'>interrompu</t>.<br/>La cible est dans le coma."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if ((player distance _target) > ((((boundingBox _target) select 1) select 0) + 2.5)) exitWith
	{
		["Force-feed <t color='#FFBF00'>interrompu</t>.<br/>Vous êtes trop loin de la cible."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (player getVariable ["is_coma", false]) exitWith
	{
		["Force-feed <t color='#FFBF00'>interrompu</t>.<br/>Vous êtes dans le coma."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (player getVariable ["restrained", false]) exitWith
	{
		["Force-feed <t color='#FFBF00'>interrompu</t>.<br/>Vous êtes menotté."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (player getVariable ["surrender", false]) exitWith
	{
		["Force-feed <t color='#FFBF00'>interrompu</t>.<br/>Vous avez les mains sur la tête."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};

	uiSleep 0.5;
};
