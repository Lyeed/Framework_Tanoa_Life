/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list_members", "_sel_members", "_display"];

disableSerialization;
_list_members = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel_members = [_this, 1, -1, [-1]] call BIS_fnc_param;

if (_sel_members isEqualTo -1) exitWith {};

_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

(_display displayCtrl 8737) lbSetCurSel (_list_members lbValue _sel_members);
