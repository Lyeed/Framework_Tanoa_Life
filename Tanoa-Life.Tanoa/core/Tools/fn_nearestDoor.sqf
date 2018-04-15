/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_res"];
_target = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;

if (isNull _target) exitWith {0};

_res = 0;

for "_i" from 1 to getNumber(configFile >> "CfgVehicles" >> (typeOf _target) >> "numberOfDoors") do
{
	if ((player distance (_target modelToWorld (_target selectionPosition format["Door_%1_trigger", _i]))) <= 1.8) exitWith {_res = _i};
};

_res;
