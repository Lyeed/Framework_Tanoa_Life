/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_list = _display displayCtrl 7652;
lbClear _list;

{
	_list lbAdd _x;
} forEach g_atm_from;
if ((lbSize _list) isEqualTo 0) then {
	_list lbAdd "Vide";
};
