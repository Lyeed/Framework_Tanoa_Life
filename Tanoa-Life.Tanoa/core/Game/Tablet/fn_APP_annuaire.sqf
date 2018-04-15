/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_list = _display displayCtrl 12002;
lbClear _list;

{
	_list lbAdd format["%1 : %2", (_x select 0), (_x select 1)];
} forEach gServer_phone_annuaire;

{
	_list lbAdd format["%1 -", _x];
} forEach (["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]);

lbSort [_list, "ASC"];
