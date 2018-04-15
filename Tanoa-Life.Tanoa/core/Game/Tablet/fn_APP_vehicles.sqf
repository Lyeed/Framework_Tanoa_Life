/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

if ("VEHICLES" in g_apps) then
{
	if ("ItemGPS" in (assignedItems player)) then {
		[7702, true] call AlysiaClient_fnc_tabletShow;
	} else {
		[7700, true] call AlysiaClient_fnc_tabletShow;
	};
	[7701, true] call AlysiaClient_fnc_tabletShow;
};

_list = _display displayCtrl 7705;
lbClear _list;

{
	if (alive _x) then
	{
		_index = _list lbAdd getText(configFile >> "CfgVehicles" >> typeOf(_x) >> "displayName");
		_list lbSetPicture [_index, getText(configFile >> "CfgVehicles" >> typeOf(_x) >> "picture")];
		_list lbSetValue [_index, _forEachIndex];
	};
} forEach g_vehicles;
if ((lbSize _list) isEqualTo 0) then {
	_list lbAdd "Aucune";
} else {
	[7706, true] call AlysiaClient_fnc_tabletShow;
	[7707, true] call AlysiaClient_fnc_tabletShow;
	[7708, true] call AlysiaClient_fnc_tabletShow;
};

[] call AlysiaClient_fnc_hideAllMarkers;

_list lbSetCurSel 0;

waitUntil {(g_app != "VEHICLES")};

[] call AlysiaClient_fnc_showAllMarkers;
