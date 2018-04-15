/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_obj"];
_obj = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _obj) exitWith {};

_obj say3D "light_bug";
[_obj, false] call AlysiaClient_fnc_lightOn;
sleep  0.3;
[_obj, true] call AlysiaClient_fnc_lightOn;
sleep  0.3;
[_obj, false] call AlysiaClient_fnc_lightOn;
sleep  0.6;
[_obj, true] call AlysiaClient_fnc_lightOn;
