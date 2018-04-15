/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_sel", "_taxes", "_value"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_sel = lbCurSel 9801;
if (_sel isEqualTo -1) exitWith {};

_taxes = lbData[9801, _sel];
if (_taxes isEqualTo "") exitWith {};

_value = ctrlText 9802;
if (!([_value] call AlysiaClient_fnc_isNumber)) exitWith {
	["La valeur doit être <t color='#04B404'>un nombre</t>."] call AlysiaClient_fnc_error;
};

_value = abs(round(parseNumber(_value)));
if (_value > 100) exitWith {
	["La valeur doit être <t color='#04B404'>compris</t> entre 0 et 100."] call AlysiaClient_fnc_error;
};

call compile format["%1 = %2; publicVariable '%1';", _taxes, (_value / 100)];
[] call AlysiaClient_fnc_APP_gov_taxes;
