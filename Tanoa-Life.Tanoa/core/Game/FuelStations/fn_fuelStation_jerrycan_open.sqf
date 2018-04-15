/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_station";
_station = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;

if (isNull _station) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

[_station] call AlysiaClient_fnc_fuelStation_refuel_open;
((findDisplay 16000) displayCtrl 16017) buttonSetAction "[g_interaction_target] spawn AlysiaClient_fnc_fuelStation_jerrycan_action;";
