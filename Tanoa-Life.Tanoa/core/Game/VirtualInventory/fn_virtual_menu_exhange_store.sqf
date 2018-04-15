/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_sel", "_type", "_item", "_amount", "_storeType"];
_type = [_this, 0, false, [false]] call BIS_fnc_param;

if (isNull g_interaction_target) exitWith {};

_sel = lbCurSel 505;
if (_sel isEqualTo -1) exitWith {};
if (!g_interaction_target_trunk_store) exitWith {};

_item = lbData[505, _sel];
_storeType = getArray(missionConfigFile >> "ALYSIA_ITEMS" >> _item >> "store");
if (!(_storeType isEqualTo []) && !(typeOf(g_interaction_target) in _storeType)) exitWith
{
	[
		format
		[
			"<t color='#FF8000'>%1</t> ne peut pas être entreposer ici.",
			[_item] call AlysiaClient_fnc_itemGetName
		]
	] call AlysiaClient_fnc_error;
};

if (g_interaction_target_trunk_transfer) exitWith {};
g_interaction_target_trunk_transfer = true;

if (_type) then {
	_amount = [_item, ([_item] call AlysiaClient_fnc_itemCount), ([(g_interaction_target getVariable [g_interaction_target_trunk_type, []])] call AlysiaClient_fnc_weightGenerate), g_interaction_target_trunk_weight_max] call AlysiaClient_fnc_calWeightDiff;
} else {
	_amount = 1;
};

[player, g_interaction_target, g_interaction_target_trunk_type, _item, _amount, false] call AlysiaClient_fnc_transfertVirtualItem;
[] call AlysiaClient_fnc_virtual_menu_exhange_update_lists;

g_interaction_target_trunk_transfer = false;
