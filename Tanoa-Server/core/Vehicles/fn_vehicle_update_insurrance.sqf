/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_plate", "_insurrance"];
_plate = [_this, 0, -1, [-1]] call BIS_fnc_param;
_insurrance = [_this, 1, 0, [0]] call BIS_fnc_param;

if (_plate isEqualTo -1) exitWith {};

[format["UPDATE vehicles SET assurance='%1' WHERE plate='%2'", _insurrance, _plate], 1] call ExtDB3_fnc_async;
