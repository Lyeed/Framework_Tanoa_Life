/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_full", "_sel", "_amount", "_item", "_index", "_type"];
_type = [_this, 0, -1, [-1]] call BIS_fnc_param;
_full = [_this, 1, false, [false]] call BIS_fnc_param;
_sel = [_this, 2, -1, [-1]] call BIS_fnc_param;

if ((g_shop_active) || (_type isEqualTo -1) || (_sel isEqualTo -1)) exitWith {};

_item = lbData[2405, _sel];
if (_item isEqualTo "") exitWith {};

if (g_shop_active) exitWith {};
g_shop_active = true;

switch _type do
{
	case 0:
	{
		if (_full) then {
			_amount = [_item, floor((g_maxWeight - g_shop_weight_actual) / ([_item] call AlysiaClient_fnc_itemGetWeight)), g_shop_weight_actual, g_maxWeight] call AlysiaClient_fnc_calWeightDiff;
		} else {
			_amount = [_item, 1, g_shop_weight_actual, g_maxWeight] call AlysiaClient_fnc_calWeightDiff;
		};

		if (_amount > 0) then
		{
			_index = [_item, g_shop_tmp_buy] call AlysiaClient_fnc_index;
			if (_index isEqualTo -1) then {
				g_shop_tmp_buy pushBack [_item, _amount];
			} else {
				g_shop_tmp_buy set [_index, [_item, (_amount + ((g_shop_tmp_buy select _index) select 1))]];
			};
		} else {
			["Vous n'avez pas assez de place."] call AlysiaClient_fnc_error;
		};

		[] call AlysiaClient_fnc_shop_virtual_update_basket;
		lbSetCurSel[2405, _sel];
	};

	case 1:
	{
		if (_full) then {
			_amount = lbValue[2405, _sel];
		} else {
			_amount = 1;
		};

		if ([false, _item, _amount] call AlysiaClient_fnc_handleInv) then
		{
			_index = [_item, g_shop_tmp_sell] call AlysiaClient_fnc_index;
			if (_index isEqualTo -1) then {
				g_shop_tmp_sell pushBack [_item, _amount];
			} else {
				g_shop_tmp_sell set [_index, [_item, (_amount + ((g_shop_tmp_sell select _index) select 1))]];
			};
		};

		[] call AlysiaClient_fnc_shop_virtual_update_basket;
		[] call AlysiaClient_fnc_shop_virtual_update_list;
		if (!_full) then {
			lbSetCurSel[2405, _sel];
		};
	};
};

g_shop_active = false;
