/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_vehicle";
_vehicle = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _vehicle) exitWith {};

"extLOG" callExtension format
[
	"1:SERVER_VEHICLES_DEAD_LOG: %1 | Info : %2 | Trunk : %3",
	typeOf(_vehicle),
	_vehicle getVariable ["info", []],
	_vehicle getVariable ["Trunk", []]
];
