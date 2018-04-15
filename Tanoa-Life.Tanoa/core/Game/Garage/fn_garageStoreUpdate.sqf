/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_sel", "_display", "_vehicle", "_price", "_hasIllegal"];

disableSerialization;
_display = findDisplay 35000;
if (isNull _display) exitWith {};

_list = _display displayCtrl 35003;
_sel = lbCurSel 35003;

if ((_sel isEqualTo -1) || (isNull _list)) exitWith {};
if ((_list lbText _sel) isEqualTo "Aucun véhicule") exitWith {};

_vehicle = g_vehicles select (_list lbValue _sel);
if (isNil "_vehicle") exitWith {};
if (isNull _vehicle) exitWith {};

_price = 0;
_hasIllegal = false;
if ((cbChecked (_display displayCtrl 35006)) && g_garage_pay) then
{
	private "_weight";
	_weight = 0;

	{
		if (getNumber(missionConfigFile >> "ALYSIA_ITEMS" >> (_x select 0) >> "illegal") isEqualTo 1) then {
			_hasIllegal = true;
		};
		_weight = _weight + ([_x select 0] call AlysiaClient_fnc_itemGetWeight);
	} forEach (_vehicle getVariable ["Trunk", []]);
	_price = round((_weight + 4) * 75);
};

(_display displayCtrl 35008) ctrlSetStructuredText parseText format
[
	"<t align='center' color='%2'>%1</t><t align='right'>$</t>",
	[_price] call AlysiaClient_fnc_numberText,
	if (g_atm < _price) then {"#ff8c8c"} else {"#8cff9b"}
];

if ((g_atm < _price) || _hasIllegal) then
{
	ctrlShow[35010, false];
	ctrlShow[35011, false];
	ctrlShow[35012, false];
	ctrlShow[35013, false];
	ctrlShow[35014, false];
} else {
	ctrlShow[35010, true];
	ctrlShow[35011, true];
	ctrlShow[35012, true];
	ctrlShow[35013, true];
	ctrlShow[35014, true];
};
