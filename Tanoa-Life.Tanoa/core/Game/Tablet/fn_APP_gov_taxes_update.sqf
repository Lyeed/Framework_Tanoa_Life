/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_sel", "_taxes", "_display"];

disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if (_sel isEqualTo -1) exitWith {};

_taxes = _list lbData _sel;
if (_taxes isEqualTo "") exitWith {};

_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

(_display displayCtrl 9802) ctrlSetText str(_list lbValue _sel);
