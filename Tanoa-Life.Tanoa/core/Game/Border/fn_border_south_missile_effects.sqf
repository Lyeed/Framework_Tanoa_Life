/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_missile", "_light"];
_missile = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _missile) exitWith {};

_missile say3D "missile_launch";

_light = "#lightpoint" createVehicle (position _missile);
_light setLightBrightness 9;
_light setLightAmbient [1.0, 1.0, 1.0];
_light setLightColor [1.0, 1.0, 1.0];
_light lightAttachObject [_missile, [0, -0.5, 0]];

waitUntil {!(alive _missile)};

deleteVehicle _light;
