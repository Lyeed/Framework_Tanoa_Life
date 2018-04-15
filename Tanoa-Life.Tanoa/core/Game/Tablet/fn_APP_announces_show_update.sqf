/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_sel", "_list", "_text", "_display"];
disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if (_sel isEqualTo -1) exitWith {};

_text = _list lbData _sel;
if (_text isEqualTo "") exitWith {};

_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

(_display displayCtrl 9552) ctrlSetStructuredText parseText _text;
[9552, true] call AlysiaClient_fnc_tabletShow;
