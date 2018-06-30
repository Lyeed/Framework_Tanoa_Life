/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_plate", "_position"];
_plate = [_this, 0, -1, [-1]] call BIS_fnc_param;
_position = [_this, 1, [], [[]]] call BIS_fnc_param;

if ((_plate isEqualTo -1) || (_position isEqualTo [])) exitWith {};

[format["UPDATE vehicles SET POS_store_x='%1', POS_store_y='%2', POS_store_z='%3' WHERE plate='%4'", (_position select 0), (_position select 1), (_position select 2), _plate], 1] call ExtDB3_fnc_async;
