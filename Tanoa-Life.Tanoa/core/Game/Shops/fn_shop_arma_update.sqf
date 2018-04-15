/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_price", "_sel", "_display", "_desc", "_item", "_list", "_price_condition", "_rank", "_rank_condition", "_license", "_licenses_condition", "_licenses_text"];

disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

_item = _list lbData _sel;
if (_item isEqualTo "") exitWith
{
	{
		ctrlShow[_x, false];
	} forEach ([38403, 38404, 38405, 38406, 38407, 38408, 38409, 38410]);
};

_display = findDisplay 38400;
if (isNull _display) exitWith {};

g_shop_active = true;

_price = getNumber(missionConfigFile >> "ALYSIA_ITEMS_ARMA" >> _item >> "buy_price");
if ((_price > 0) && (g_cash >= _price)) then {
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

if ((_license isEqualTo "") || ((_license != "") && ([_license] call AlysiaClient_fnc_hasLicense))) then {
	_licenses_condition = true;
} else {
	_licenses_condition = false;
};

_desc = ([_item] call AlysiaClient_fnc_fetchCfgDetails) select 9;

(_display displayCtrl 38404) ctrlSetStructuredText parseText format
[
	"<t align='center'>%1</t>",
	_list lbText _sel
];

(_display displayCtrl 38405) ctrlSetStructuredText parseText format
[
		"<t font='EtelkaMonospacePro' size='0.8'>"
	+	"<t align='center'>- Prérequis -</t><br/>"
	+	"<t align='left'>Rank</t><t align='right' color='%1'>%2</t><br/>"
	+	"<t align='left'>Licence(s)</t><t align='right'>%3</t>"
	+	"<t align='left'>Prix</t><t align='right' color='%4'>%5$</t><br/>"
	+	"<t align='center'>- Description - </t><br/>"
	+	"<t align='center'>%6</t>"
	+	"</t>",
	if (_rank_condition) then {"#31B404"} else {"#DF0101"},
	([playerSide, _rank] call AlysiaClient_fnc_rankToStr),
	_licenses_text,
	if (_price_condition) then {"#31B404"} else {"#DF0101"},
	[_price] call AlysiaClient_fnc_numberText,
	if (_desc isEqualTo "") then {"Aucune"} else {_desc}
];

if (_price_condition && _rank_condition && _licenses_condition) then
{
	ctrlShow[38406, true];
	ctrlShow[38407, true];
	ctrlShow[38408, true];
	ctrlShow[38409, true];
	ctrlShow[38410, true];
} else {
	ctrlShow[38406, false];
	ctrlShow[38407, false];
	ctrlShow[38408, false];
	ctrlShow[38409, false];
	ctrlShow[38410, false];
};

g_shop_active = false;
