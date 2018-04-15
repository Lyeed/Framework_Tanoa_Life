/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_health", "_target"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if (!(createDialog "RscDisplayVehicleRepair")) exitWith {};

disableSerialization;
_display = findDisplay 2900;
if (isNull _display) exitWith {};

g_interaction_target = _target;

_health = floor((1 - (damage _target)) * 100);
(_display displayCtrl 2910) ctrlSetStructuredText parseText format
[
	"<t align='center'><t color='%2'>%3</t>%1</t>",
	"%",
	([_health] call AlysiaClient_fnc_vehicleMenu_repair_getColor) select 1,
	_health
];

[] call AlysiaClient_fnc_vehicleMenu_repair_fill;

while {!(isNull _display)} do
{
	if (
			(isNull _target) ||
			!(alive _target) ||
			(player distance _target) > ((((boundingBox _target) select 1) select 0) + 2.5) ||
			(player getVariable ["restrained", false]) ||
			(player getVariable ["surrender", false])
	) exitWith {closeDialog 0};
	uiSleep 0.5;
};
