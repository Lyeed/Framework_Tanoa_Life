/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_sel", "_type", "_display", "_price", "_price_condition", "_license", "_config"];

disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if (_sel isEqualTo -1) exitWith {};

_type = _list lbData _sel;
if (_type isEqualTo "") exitWith {};

_display = findDisplay 90000;
if (isNull _display) exitWith {};

_config = missionConfigFile >> "ALYSIA_COMPANIES_TYPES" >> _type;
if (!isClass(_config)) exitWith {};

(_display displayCtrl 90008) ctrlSetStructuredText parseText format["<t align='center'>%1</t>", _list lbText _sel];

_price = getNumber(_config >> "price");
_license = getText(_config >> "license");

if (g_atm >= _price) then {
	_price_condition = true;
} else {
	_price_condition = false;
};

(_display displayCtrl 90009) ctrlSetStructuredText parseText format
[
	"<t font='EtelkaMonospacePro' size='0.8'>" +
	"<t align='center'>- Prérequis -</t><br/>" +
	"<t align='left'>Prix</t><t align='right' color='%1'>%2$</t><br/>" +
	"<t align='center'>- Description - </t><br/>" +
	"<t align='left'>Licence</t><t align='right'>%3</t><br/>" +
	"</t>",
	if (_price_condition) then {"#31B404"} else {"#DF0101"},
	[_price] call AlysiaClient_fnc_numberText,
	if (_license isEqualTo "") then {"Aucune"} else {getText(missionConfigFile >> "ALYSIA_LICENSES" >> _license >> "name")}
];

if (_price_condition) then
{
	ctrlShow[90001, true];
	ctrlShow[90002, true];
	ctrlShow[90003, true];
	ctrlShow[90004, true];
	ctrlShow[90005, true];
} else {
	ctrlShow[90001, false];
	ctrlShow[90002, false];
	ctrlShow[90003, false];
	ctrlShow[90004, false];
	ctrlShow[90005, false];
};
