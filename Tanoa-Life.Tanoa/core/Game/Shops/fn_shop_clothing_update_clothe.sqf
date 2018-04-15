/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_item", "_list", "_sel", "_price", "_price_condition", "_rank", "_rank_condition", "_licenses", "_licenses_condition", "_licenses_text"];
disableSerialization;

_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if ((isNull _list) || (_sel isEqualTo -1)) exitWith {};

_display = findDisplay 3100;
if (isNull _display) exitWith {};

_item = _list lbData _sel;
if (_item isEqualTo "") exitWith {};

g_shop_clothing_active = true;

switch (lbData[3102, (lbCurSel 3102)]) do
{
	case "headgear":
	{
		removeHeadgear player;
		player addHeadgear _item;
	};
	case "goggles":
	{
		removeGoggles player;
		player addGoggles _item;
	};
	case "backpacks":
	{
		removeBackpack player;
		player addBackpack _item;
		clearAllItemsFromBackpack player;
	};
	case "uniforms":
	{
		removeUniform player;
		player forceAddUniform _item;
	};
	case "vests":
	{
		removeVest player;
		player addVest _item;
	};
};

_price = _list lbValue _sel;
if (g_cash >= _price) then {
	_price_condition = true;
} else {
	_price_condition = false;
};

_rank = getNumber(missionConfigFile >> "ALYSIA_ITEMS_ARMA" >> _item >> format["buy_condition_%1", playerSide]);
if ((_rank isEqualTo 0) || ((_rank > 0) && ((player getVariable ["rank", 0]) >= _rank))) then {
	_rank_condition = true;
} else {
	_rank_condition = false;
};


_licenses = getArray(missionConfigFile >> "ALYSIA_ITEMS_ARMA" >> _item >> format["buy_license_%1", playerSide]);
if (count(_licenses) > 0) then
{
	_licenses_text = "";
	_licenses_condition = true;

	{
		if ([_x] call AlysiaClient_fnc_hasLicense) then {
			_licenses_text = _licenses_text + format["<t color='#31B404'>%1</t><br/>", [_x] call AlysiaClient_fnc_licenseGetName];
		} else {
			_licenses_text = _licenses_text + format["<t color='#DF0101'>%1</t><br/>", [_x] call AlysiaClient_fnc_licenseGetName];
			_licenses_condition = false;
		};
	} forEach _licenses;
} else {
	_licenses_text = "<t color='#31B404'>Aucune</t><br/>";
	_licenses_condition = true;
};

(_display displayCtrl 3105) ctrlSetStructuredText parseText format
[
	"<t align='center'>%1</t>",
	(_list lbText _sel)
];

(_display displayCtrl 3104) ctrlSetStructuredText parseText format
[
		"<t font='EtelkaMonospacePro' size='0.8'>"
	+	"<t align='left'>Rank</t><t align='right' color='%1'>%2</t><br/>"
	+	"<t align='left'>Licence(s)</t><t align='right'>%3</t>"
	+	"<t align='left'>Prix</t><t align='right' color='%4'>%5$</t><br/>"
	+	"</t>",
	if (_rank_condition) then {"#31B404"} else {"#DF0101"},
	([playerSide, _rank] call AlysiaClient_fnc_rankToStr),
	_licenses_text,
	if (_price_condition) then {"#31B404"} else {"#DF0101"},
	[_price] call AlysiaClient_fnc_numberText
];

if (_price_condition && _rank_condition && _licenses_condition) then {
	{
		ctrlShow[_x, true];
	} forEach ([3108,3109,3110,3111,3112]);
} else {
	{
		ctrlShow[_x, false];
	} forEach ([3108,3109,3110,3111,3112]);
};

g_shop_clothing_active = false;
