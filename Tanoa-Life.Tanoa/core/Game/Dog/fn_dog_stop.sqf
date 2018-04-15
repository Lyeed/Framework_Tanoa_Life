/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (isNull g_dog) exitWith {
	["Impossible de trouver votre chien."] call AlysiaClient_fnc_error;
};

if (g_dog getVariable ["follow", false]) then {
	g_dog setVariable ["follow", false, true];
};

if (g_dog getVariable ["search", false]) then
{
	g_dog setVariable ["search", false, true];
	g_dog setVariable ["search_target", objNull];
};

[player, "whistle", 15] call AlysiaClient_fnc_globalSay3d;
[g_dog, "dog_one", 30] call AlysiaClient_fnc_globalSay3d;
