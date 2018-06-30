/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_plate", "_name"];
_plate = [_this, 0, -1, [-1]] call BIS_fnc_param;
_name = [_this, 1, "", [""]] call BIS_fnc_param;

if ((_plate isEqualTo -1) || (_name isEqualTo "")) exitWith {};

[format["UPDATE vehicles SET displayname='%1' WHERE plate='%2'", _name, _plate], 1] call ExtDB3_fnc_async;
