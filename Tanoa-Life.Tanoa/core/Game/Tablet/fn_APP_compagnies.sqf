/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_list = _display displayCtrl 13000;
lbClear _list;

{
	_info = _x getVariable "company_info";
	if (!(isNil "_info") && !(_x getVariable ["construction", false])) then
	{
		_index = _list lbAdd (_info select 0);
		_list lbSetData [_index, str([typeOf(_x), (getPos _x)])];
		_list lbSetValue [_index, (player distance _x)];
	};
} forEach (allMissionObjects "All");

if ((lbSize _list) isEqualTo 0) then {
	_list lbAdd "Aucune";
} else {
	[13005, true] call AlysiaClient_fnc_tabletShow;
	[13006, true] call AlysiaClient_fnc_tabletShow;
	[13008, true] call AlysiaClient_fnc_tabletShow;
	[13009, true] call AlysiaClient_fnc_tabletShow;
	lbSortByValue _list;
};

_list lbSetCurSel 0;

if (!(isNull g_company)) then
{
	[13007, true] call AlysiaClient_fnc_tabletShow;
};

[] call AlysiaClient_fnc_hideAllMarkers;

waitUntil {(g_app != "COMPAGNIES")};

[] call AlysiaClient_fnc_showAllMarkers;
