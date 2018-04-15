/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_index", "_display", "_price"];

disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_index = [_this, 1, -1, [-1]] call BIS_fnc_param;

if ((_index isEqualTo -1) || (isNull _list)) exitWith {};
if ((_list lbText _index) isEqualTo "Aucune") exitWith {};

_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_price = _list lbValue _index;
(_display displayCtrl 8111) ctrlSetStructuredText parseText format
[
	"<br/><br/><br/><t align='center' font='PuristaBold'><t size='2.1'>Prix</t><br/><t size='1.8'><t color='#%2'>%1</t>$</t></t>",
	([_price] call AlysiaClient_fnc_numberText),
	if (g_atm >= _price) then {"8cff9b"} else {"ff8c8c"}
];

[8111, true] call AlysiaClient_fnc_tabletShow;

if (g_atm < _price) then
{
	[8108, false] call AlysiaClient_fnc_tabletShow;
	[8109, false] call AlysiaClient_fnc_tabletShow;
} else {
	[8108, true] call AlysiaClient_fnc_tabletShow;
	[8109, true] call AlysiaClient_fnc_tabletShow;
};
