/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_nearVehicles", "_spikeStrip", "_vehicle"];
_spikeStrip = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;

if (isNull _spikeStrip) exitWith {};

waitUntil
{
	_nearVehicles = nearestObjects[(getPos _spikeStrip), ["Car"], 2.9];
	((count _nearVehicles > 0) || (isNull _spikeStrip))
};

if (isNull _spikeStrip) exitWith {};

_vehicle = _nearVehicles select 0;
if (isNil "_vehicle") exitWith {};

[_vehicle, "HitLFWheel", 1] call AlysiaClient_fnc_setHitPointDamage;
[_vehicle, "HitLF2Wheel", 1] call AlysiaClient_fnc_setHitPointDamage;
[_vehicle, "HitRFWheel", 1] call AlysiaClient_fnc_setHitPointDamage;
[_vehicle, "HitRF2Wheel", 1] call AlysiaClient_fnc_setHitPointDamage;
deleteVehicle _spikeStrip;
