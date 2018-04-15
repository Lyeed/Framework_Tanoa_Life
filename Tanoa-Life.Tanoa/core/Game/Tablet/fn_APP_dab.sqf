/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_list = _display displayCtrl 9900;
lbClear _list;

{
	_config = missionConfigFile >> "ALYSIA_ATM" >> typeOf(_x);
	if (isClass(_config)) then
	{
		if (getNumber(_config >> "tablet") isEqualTo 1) then
		{
			_index = _list lbAdd format["Distributeur - %1", (mapGridPosition _x)];
			_list lbSetData [_index, str([typeOf(_x), (getPos _x)])];
			_list lbSetValue [_index, (player distance _x)];
		};
	};
} forEach (allMissionObjects "All");

if ((lbSize _list) isEqualTo 0) then {
	_list lbAdd "Aucun";
} else {
	[9903, true] call AlysiaClient_fnc_tabletShow;
	[9905, true] call AlysiaClient_fnc_tabletShow;
	[9906, true] call AlysiaClient_fnc_tabletShow;
	[9907, true] call AlysiaClient_fnc_tabletShow;
	[9908, true] call AlysiaClient_fnc_tabletShow;
	[9909, true] call AlysiaClient_fnc_tabletShow;
	[9910, true] call AlysiaClient_fnc_tabletShow;
	lbSortByValue _list;
};

_list lbSetCurSel 0;

[] call AlysiaClient_fnc_hideAllMarkers;

waitUntil {(g_app != "DAB")};

[] call AlysiaClient_fnc_showAllMarkers;
