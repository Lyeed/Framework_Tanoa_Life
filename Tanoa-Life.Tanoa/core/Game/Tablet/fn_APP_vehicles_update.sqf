/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_sel", "_list", "_display", "_distance", "_vehicle", "_index", "_ctrl_map"];

disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if (_sel isEqualTo -1) exitWith {};
if ((_list lbText _sel) isEqualTo "Aucune") exitWith {};

_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_index = _list lbValue _sel;
_vehicle = g_vehicles select _index;
_ctrl_map = _display displayCtrl 7703;

if ("ItemGPS" in (assignedItems player)) then
{
	_distance = round(player distance _vehicle);
	(_display displayCtrl 7708) ctrlSetStructuredText parseText format
	[
		"<t align='center'><t size='1.5'>%1</t><br/>mètre%2</t>",
		_distance,
		if (_distance > 1) then {"s"} else {""}
	];
} else {
	(_display displayCtrl 7708) ctrlSetStructuredText parseText "<t align='center' size='1.5'>Inconnu</t>";
};

if ("VEHICLES" in g_apps) then
{
	_marker = createMarkerLocal [format["vehicles_tablet_%1", _index], (getPos _vehicle)];
	_marker setMarkerShapeLocal "ICON";
	_marker setMarkerTypeLocal "c_car";
	_marker setMarkerColorLocal "ColorRed";
	_marker setMarkerTextLocal getText(configFile >> "CfgVehicles" >> typeOf(_vehicle) >> "displayName");

	_ctrl_map ctrlMapAnimAdd [0, 0.09, _vehicle];
	ctrlMapAnimCommit _ctrl_map;

	while {!(isNull _display) && ((lbCurSel _list) isEqualTo _sel) && (g_app isEqualTo "VEHICLES") && (alive _vehicle)} do
	{
		_marker setMarkerPosLocal (getPos _vehicle);
		uiSleep 0.3;
	};

	deleteMarkerLocal _marker;
	if (!(alive _vehicle) && (g_app isEqualTo "VEHICLES") && !(isNull _display) && ((lbCurSel _list) isEqualTo _sel)) then
	{
		_list lbDelete _sel;
		if ((lbSize _list) isEqualTo 0) then
		{
			_list lbAdd "Aucune";
			[7706, false] call AlysiaClient_fnc_tabletShow;
			[7707, false] call AlysiaClient_fnc_tabletShow;
			[7708, false] call AlysiaClient_fnc_tabletShow;
			[7702, false] call AlysiaClient_fnc_tabletShow;
			[7700, false] call AlysiaClient_fnc_tabletShow;
			[7701, false] call AlysiaClient_fnc_tabletShow;
		};
		_list lbSetCurSel 0;
	};
};
