/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_vehicle";
_vehicle = vehicle player;

if (!(_vehicle isKindOf "Car") || ((driver _vehicle) != player)) exitWith {};
if ((_vehicle getVariable ["nitro", 0]) < 1) exitWith {};
if ((speed _vehicle) <= 10) exitWith {
	["Vous devez rouler à plus de <t color='#FF8000'>10km/h</t> pour activer la nitro."] call AlysiaClient_fnc_error;
};

_vehicle setVariable ["nitro", ((_vehicle getVariable ["nitro", 0]) - 1), true];
[_vehicle, true, 20, 0] call AlysiaClient_fnc_velocity;
