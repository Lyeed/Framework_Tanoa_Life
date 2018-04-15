/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_sel", "_display", "_station", "_fuel", "_amount"];
disableSerialization;

_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if ((_sel isEqualTo -1) || (isNull _list)) exitWith {};

_display = findDisplay 16000;
if (isNull _display) exitWith {};

_station = missionNamespace getVariable ["refuel_pump", objNull];
if (isNull _station) exitWith {
	["Impossible de trouver la station."] call AlysiaClient_fnc_error;
};

_fuel = _list lbData _sel;
if (_fuel isEqualTo "") exitWith {
	["Impossible de trouver l'essence sélectionnée."] call AlysiaClient_fnc_error;
};

(_display displayCtrl 16008) ctrlSetStructuredText parseText format
[
	"<t align='center' size='2'>%1</t>",
	([_station, _fuel] call AlysiaClient_fnc_fuelStation_fuel_getPrice)
];

_amount = [_station, _fuel] call AlysiaClient_fnc_fuelStation_fuel_getStock;
(_display displayCtrl 16011) ctrlSetStructuredText parseText format
[
	"<t align='center' size='1.6'> %1L</t>",
	_amount
];

if ((_amount <= 0) && ((buttonAction 16017) isEqualTo "[] spawn AlysiaClient_fnc_fuelStation_refuel_action_vehicle;")) then
{
	ctrlShow[16013, false];
	ctrlShow[16014, false];
	ctrlShow[16016, false];
	ctrlShow[16015, false];
	ctrlShow[16017, false];
} else {
	ctrlShow[16013, true];
	ctrlShow[16014, true];
	ctrlShow[16016, true];
	ctrlShow[16015, true];
	ctrlShow[16017, true];
};
