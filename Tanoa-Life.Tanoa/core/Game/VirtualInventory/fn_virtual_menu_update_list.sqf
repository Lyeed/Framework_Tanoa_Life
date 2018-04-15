/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_actual", "_inv"];

disableSerialization;
_display = uinamespace getvariable ["RscDisplayInventory", displayNull];

if (isNull _display) exitWith {};

(_display displayCtrl 85000) ctrlSetStructuredText parseText format
[
	"<t align='left'>Poids</t><t align='right'>%1/%2</t>",
	g_carryWeight,
	g_maxWeight
];

(_display displayCtrl 85004) ctrlSetStructuredText parseText format
[
	"<t align='left'>Porte-feuille</t><t align='right'><t color='#8cff9b'>%1</t>$</t>",
	[g_cash] call AlysiaClient_fnc_numberText
];

(_display displayCtrl 85005) progressSetPosition (g_carryWeight / g_maxWeight);

_inv =  uiNamespace getVariable "last_inv";
_actual = [] call AlysiaClient_fnc_getInv;
if ((isNil "_inv") || {!(_inv isEqualTo _actual)}) then
{
	uiNamespace setVariable ["last_inv", _actual];
	[(_display displayCtrl 85001), true, true] call AlysiaClient_fnc_fillUpWithinv;
};
