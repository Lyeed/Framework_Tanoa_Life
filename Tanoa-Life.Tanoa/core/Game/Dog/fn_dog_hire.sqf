/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (isNull g_dog) exitWith {
	["Impossible de trouver votre chien."] call AlysiaClient_fnc_error;
};

deleteVehicle g_dog;
[player, "whistle", 15] call AlysiaClient_fnc_globalSay3d;
