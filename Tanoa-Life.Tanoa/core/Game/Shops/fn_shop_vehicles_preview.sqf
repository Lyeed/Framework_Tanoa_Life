/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_className", "_handle", "_veh_sel", "_color_sel"];

_veh_sel = lbCurSel 2302;
_color_sel = lbCurSel 2303;
if ((_veh_sel isEqualTo -1) || (_color_sel isEqualTo -1)) exitWith {
	["Vous n'avez pas sélectionné de véhicule."] call AlysiaClient_fnc_error;
};

_className = lbData[2303, _color_sel];
if (_className isEqualTo "") exitWith {
	["Impossible de récupérer les informations du véhicule."] call AlysiaClient_fnc_error;
};

closeDialog 0;

_handle = [_className] spawn AlysiaClient_fnc_vehiclePreview;
waitUntil {scriptDone _handle};

[nil, nil, nil, [g_shop_vehicles_type, g_shop_vehicles_spawn]] call AlysiaClient_fnc_shop_vehicles_open;

lbSetCurSel[2302, _veh_sel];

uiSleep 0.1;

lbSetCurSel[2303, _color_sel];
