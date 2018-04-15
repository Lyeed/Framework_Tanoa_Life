/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_index", "_vehicleGaragePosition", "_data", "_sel"];

_sel = lbCurSel 2802;
if (_sel isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné de véhicule."] call AlysiaClient_fnc_error;
};

_index = lbValue[2802, _sel];
if (_index isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné de véhicule."] call AlysiaClient_fnc_error;
};

_data = g_garage_vehicles select _index;
_vehicleGaragePosition = [_data select 6, _data select 7, _data select 8];
if (_vehicleGaragePosition isEqualTo [0, 0, 0]) exitWith {};

waitUntil
{
	closeDialog 0;
	!dialog
};

[] call AlysiaClient_fnc_hideAllMarkers;

createMarkerLocal ["myCar", _vehicleGaragePosition];
"myCar" setMarkerShapeLocal "ICON";
"myCar" setMarkerTypeLocal "c_car";
"myCar" setMarkerColorLocal "ColorRed";
"myCar" setMarkerTextLocal (lbText[2802, _sel]);

forceMap true;

mapAnimAdd [0, 0.07, (getPos player)];
mapAnimCommit;
mapAnimAdd [5, 0.07, _vehicleGaragePosition];
mapAnimCommit;
waitUntil {mapAnimDone};

uiSleep 1;

forceMap false;

deleteMarkerLocal "MyCar";

[] call AlysiaClient_fnc_showAllMarkers;

[g_garage_vehicles] call AlysiaClient_fnc_garageOpen;
