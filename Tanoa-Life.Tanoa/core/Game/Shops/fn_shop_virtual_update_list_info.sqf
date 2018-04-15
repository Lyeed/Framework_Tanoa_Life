/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_sel", "_item", "_display", "_config", "_rank", "_license", "_price", "_rank_condition", "_license_condition"];
disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

_display = findDisplay 2400;
if (isNull _display) exitWith {};

if (_sel isEqualTo -1) exitWith
{
	ctrlShow[2407, false];
	ctrlShow[2408, false];
	ctrlShow[2409, false];
	ctrlShow[2410, false];
	(_display displayCtrl 2403) ctrlSetStructuredText parseText "";
	(_display displayCtrl 2404) ctrlSetStructuredText parseText "";
};

_item = _list lbData _sel;
_config = missionConfigFile >> "ALYSIA_ITEMS" >> _item;
if ((_item isEqualTo "") || !(isClass(_config))) exitWith
{
	ctrlShow[2407, false];
	ctrlShow[2408, false];
	ctrlShow[2409, false];
	ctrlShow[2410, false];
	(_display displayCtrl 2403) ctrlSetStructuredText parseText "";
	(_display displayCtrl 2404) ctrlSetStructuredText parseText "";
};

(_display displayCtrl 2403) ctrlSetStructuredText parseText format
[
	"<t align='center'>%1</t>",
	_list lbText _sel
];

if (g_shop_mod isEqualTo 0) then
{
	_rank = getNumber(_config >> format["buy_rank_%1", playerSide]);
	_license = getText(_config >> format["buy_license_%1", playerSide]);
	_price = [_item] call AlysiaClient_fnc_itemGetBuyPrice;
} else {
	_rank = getNumber(_config >> format["sell_rank_%1", playerSide]);
	_license = getText(_config >> format["sell_license_%1", playerSide]);
	_price = [_item] call AlysiaClient_fnc_itemGetSellPrice;
};

if ((_rank isEqualTo 0) || ((_rank > 0) && ((player getVariable ["rank", 0]) >= _rank))) then {
	_rank_condition = true;
} else {
	_rank_condition = false;
};

if ((_license isEqualTo "") || ([_license] call AlysiaClient_fnc_hasLicense)) then {
	_license_condition = true;
} else {
	_license_condition = false;
};

(_display displayCtrl 2404) ctrlSetStructuredText parseText format
[
	"<t font='EtelkaMonospacePro' size='0.7'>" +
	"<t align='center'>- Prérequis -</t><br/>" +
	"<t align='left'>Rank</t><t align='right' color='%1'>%2</t><br/>" +
	"<t align='left'>Licence</t><t align='right' color='%3'>%4</t><br/>" +
	"<t align='center'>- Informations - </t><br/>" +
	"<t align='left'>Prix par unité</t><t align='right' color='#8cff9b'>%5$</t><br/>" +
	"</t>",
	if (_rank_condition) then {"#31B404"} else {"#DF0101"},
	[playerSide, _rank] call AlysiaClient_fnc_rankToStr,
	if (_license_condition) then {"#31B404"} else {"#DF0101"},
	if (_license isEqualTo "") then {"Aucune"} else {[_license] call AlysiaClient_fnc_licenseGetName},
	[_price] call AlysiaClient_fnc_numberText
];

if (_rank_condition && _license_condition) then
{
	if (g_shop_mod isEqualTo 0) then
	{
		if (([_item, 1, g_shop_weight_actual, g_maxWeight] call AlysiaClient_fnc_calWeightDiff) isEqualTo 1) then
		{
			ctrlShow[2407, true];
			ctrlShow[2408, true];
		} else {
			ctrlShow[2407, false];
			ctrlShow[2408, false];
		};

		if (([_item, 2, g_shop_weight_actual, g_maxWeight] call AlysiaClient_fnc_calWeightDiff) isEqualTo 2) then
		{
			ctrlShow[2409, true];
			ctrlShow[2410, true];
		} else {
			ctrlShow[2409, false];
			ctrlShow[2410, false];
		};
	} else {
		ctrlShow[2407, true];
		ctrlShow[2408, true];
		if ((_list lbValue _sel) > 1) then
		{
			ctrlShow[2409, true];
			ctrlShow[2410, true];
		} else {
			ctrlShow[2409, false];
			ctrlShow[2410, false];
		};
	};
} else {
	ctrlShow[2407, false];
	ctrlShow[2408, false];
	ctrlShow[2409, false];
	ctrlShow[2410, false];
};
