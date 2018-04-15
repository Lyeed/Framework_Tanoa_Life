/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_sel", "_display", "_fuel", "_station", "_data"];

disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if (_sel isEqualTo -1) exitWith {};
if ((_list lbText _sel) isEqualTo "Aucune") exitWith {};

_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_fuel = _list lbData _sel;
if (_fuel isEqualTo "") exitWith {};

_data = call compile (lbData[9400, lbCurSel 9400]);
_station = (nearestObjects [_data select 1, [_data select 0], 15]) select 0;

(_display displayCtrl 9411) ctrlSetStructuredText parseText format
[
		"<t font='EtelkaMonospacePro' size='1'>"
	+	"<t align='center'>- Informations -</t><br/>"
	+	"<t align='left'>Prix/L</t><t align='right'><t color='#8cff9b'>%1</t>$</t><br/>"
	+	"<t align='left'>Disponibilité</t><t align='right'>%2L</t>"
	+	"</t>",
	[[_station, _fuel] call AlysiaClient_fnc_fuelStation_fuel_getPrice] call AlysiaClient_fnc_numberText,
	[_station, _fuel] call AlysiaClient_fnc_fuelStation_fuel_getStock
];
