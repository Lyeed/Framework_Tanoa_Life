/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_vid", "_unit", "_vehicle"];
_vid = [_this, 0, -1, [-1]] call BIS_fnc_param;
_vehicle = [_this, 1, objNull, [objNull]] call BIS_fnc_param;
_unit = [_this, 2, objNull, [objNull]] call BIS_fnc_param;

if ((_vid isEqualTo -1) || (isNull _unit) || (isNull _vehicle)) exitWith {};

[(getPlayerUID _unit), (side _unit), _vehicle] call AlysiaServer_fnc_keyManagement;
[format["UPDATE vehicles SET active='1' WHERE plate='%1'", _vid], 1] call ExtDB3_fnc_async;
