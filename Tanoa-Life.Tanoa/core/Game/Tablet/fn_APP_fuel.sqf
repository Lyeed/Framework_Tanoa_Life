/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_list = _display displayCtrl 9400;
lbClear _list;

{
	if (isClass(missionConfigFile >> "ALYSIA_FUEL_STATION" >> typeof(_x))) then
	{
		_index = _list lbAdd format["Station service - %1", (mapGridPosition _x)];
		_list lbSetData [_index, str([typeOf(_x), (getPos _x)])];
		_list lbSetValue [_index, (player distance _x)];
	};
} forEach (allMissionObjects "All");

if ((lbSize _list) isEqualTo 0) then {
	_list lbAdd "Aucune";
} else {
	[9402, true] call AlysiaClient_fnc_tabletShow;
	[9403, true] call AlysiaClient_fnc_tabletShow;
	[9404, true] call AlysiaClient_fnc_tabletShow;
	[9405, true] call AlysiaClient_fnc_tabletShow;
	[9406, true] call AlysiaClient_fnc_tabletShow;
	[9407, true] call AlysiaClient_fnc_tabletShow;
	[9408, true] call AlysiaClient_fnc_tabletShow;
	[9411, true] call AlysiaClient_fnc_tabletShow;
	lbSortByValue _list;
};

_list lbSetCurSel 0;

[] call AlysiaClient_fnc_hideAllMarkers;

waitUntil {(g_app != "FUEL")};

[] call AlysiaClient_fnc_showAllMarkers;
