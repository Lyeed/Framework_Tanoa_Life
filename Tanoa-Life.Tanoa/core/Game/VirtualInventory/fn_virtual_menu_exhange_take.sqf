/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_sel", "_type", "_amount", "_item"];
_type = [_this, 0, false, [false]] call BIS_fnc_param;

if (isNull g_interaction_target) exitWith {};

_sel = lbCurSel 503;
if (_sel isEqualTo -1) exitWith {};
if (!g_interaction_target_trunk_take) exitWith {};

_item = lbData[503, _sel];
if (_item isEqualTo "") exitWith {};

if (g_interaction_target_trunk_transfer) exitWith {};
g_interaction_target_trunk_transfer = true;

if (_type) then {
	_amount = [_item, ([(g_interaction_target getVariable [g_interaction_target_trunk_type, []]), _item] call AlysiaClient_fnc_itemTrunk), g_carryWeight, g_maxWeight] call AlysiaClient_fnc_calWeightDiff;
} else {
	_amount = 1;
};

[g_interaction_target, player, g_interaction_target_trunk_type, _item, _amount, false] call AlysiaClient_fnc_transfertVirtualItem;
[] call AlysiaClient_fnc_virtual_menu_exhange_update_lists;

g_interaction_target_trunk_transfer = false;
