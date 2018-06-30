/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_plate", "_fuel"];
_plate = [_this, 0, -1, [-1]] call BIS_fnc_param;
_fuel = [_this, 1, 100, [0]] call BIS_fnc_param;

if (_plate isEqualTo -1) exitWith {};

[format["UPDATE vehicles SET fuel='%1' WHERE plate='%2'", _fuel, _plate], 1] call ExtDB3_fnc_async;
