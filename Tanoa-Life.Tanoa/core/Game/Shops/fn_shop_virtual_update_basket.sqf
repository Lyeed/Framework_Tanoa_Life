/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list"];

disableSerialization;
_display = findDisplay 2400;
if (isNull _display) exitWith {};

_list = _display displayCtrl 2406;
lbClear _list;

g_shop_bill_dollar = 0;
g_shop_receive_dollar = 0;
g_shop_receive_illegal = 0;
g_shop_receive_company = 0;
g_shop_weight_actual = g_carryWeight;
g_shop_lock_bool = false;
g_shop_lock_str = "";

{
	_item = _x select 0;
	_amount = _x select 1;
	_index = _list lbAdd format["+ %1x %2", [_amount] call AlysiaClient_fnc_numberText, [_item] call AlysiaClient_fnc_itemGetName];
	_list lbSetTooltip [_index, _list lbText _index];
	_list lbSetData [_index, "BUY"];
	_list lbSetValue [_index, _forEachIndex];
	g_shop_bill_dollar = g_shop_bill_dollar + (([_item] call AlysiaClient_fnc_itemGetBuyPrice) * _amount);
	g_shop_weight_actual = g_shop_weight_actual + (([_item] call AlysiaClient_fnc_itemGetWeight) * _amount);
} forEach g_shop_tmp_buy;

{
	_item = _x select 0;
	_amount = _x select 1;
	_index = _list lbAdd format["- %1x %2", [_amount] call AlysiaClient_fnc_numberText, [_item] call AlysiaClient_fnc_itemGetName];
	_list lbSetData [_index, "SELL"];
	_list lbSetValue [_index, _forEachIndex];
	if (getNumber(missionConfigFile >> "ALYSIA_ITEMS" >> _item >> "illegal") isEqualTo 1) then {
		g_shop_receive_illegal = g_shop_receive_illegal + (([_item] call AlysiaClient_fnc_itemGetSellPrice) * _amount);
	} else {
		if (
				!(isNull g_company) &&
				{count(getArray(missionConfigFile >> "ALYSIA_COMPANIES_TYPES" >> ((g_company getVariable ["company_info", ["","",""]]) select 2) >> "ressources_link")) > 0}
		) then {
			_total = ([_item] call AlysiaClient_fnc_itemGetSellPrice) * _amount;
			_forCompany = _total * ((g_company getVariable "company_link_percentage") / 100);
			g_shop_receive_company = g_shop_receive_company + _forCompany;
			g_shop_receive_dollar = g_shop_receive_dollar + abs(_total - _forCompany);
		} else {
			g_shop_receive_dollar = g_shop_receive_dollar + (([_item] call AlysiaClient_fnc_itemGetSellPrice) * _amount);
		};
	};
	if (getNumber(missionConfigFile >> "ALYSIA_ITEMS" >> _item >> "lockShop") isEqualTo 1) then
	{
		g_shop_lock_bool = true;
		g_shop_lock_str = g_shop_lock_str + format["%1<br/>", [_item] call AlysiaClient_fnc_itemGetName];
	};
} forEach g_shop_tmp_sell;

if ((lbSize _list) isEqualTo 0) then {
	_list lbAdd "Vide";
};

(_display displayCtrl 2411) ctrlSetStructuredText parseText format
[
	"<t align='center' color='#8cff9b'>%1$<br/>%2$<br/>%3$</t>",
	[(g_shop_receive_dollar + g_shop_receive_illegal) - g_shop_bill_dollar] call AlysiaClient_fnc_numberText,
	[g_shop_receive_dollar + g_shop_receive_illegal] call AlysiaClient_fnc_numberText,
	[g_shop_bill_dollar] call AlysiaClient_fnc_numberText
];

(_display displayCtrl 2419) ctrlSetStructuredText parseText format
[
	"<t align='center'>%1<br/>%2</t>",
	g_shop_weight_actual,
	g_maxWeight
];

if (((g_shop_receive_dollar + g_shop_receive_illegal + g_cash) < g_shop_bill_dollar) || ((g_shop_tmp_sell isEqualTo []) && (g_shop_tmp_buy isEqualTo []))) then
{
	ctrlShow[2414, false];
	ctrlShow[2415, false];
	ctrlShow[2416, false];
	ctrlShow[2417, false];
	ctrlShow[2418, false];
} else {
	ctrlShow[2414, true];
	ctrlShow[2415, true];
	ctrlShow[2416, true];
	ctrlShow[2417, true];
	ctrlShow[2418, true];
};
