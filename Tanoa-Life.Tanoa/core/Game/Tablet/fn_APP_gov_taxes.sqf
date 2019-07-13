/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_list = _display displayCtrl 9801;
lbClear _list;

{
	_index = _list lbAdd getText(_x >> "name");
	_list lbSetValue [_index, ((call compile (configName _x)) * 100)];
	_list lbSetData [_index, (configName _x)];
} forEach ("true" configClasses (missionConfigFile >> "ALYSIA_TAXES"));

if ((lbCurSel _list) isEqualTo -1) then {
	_list lbSetCurSel 0;
} else {
	_list lbSetCurSel (lbCurSel _list);
};
