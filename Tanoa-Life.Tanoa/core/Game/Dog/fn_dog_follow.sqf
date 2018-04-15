/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (isNull g_dog) exitWith {
	["Impossible de trouver votre chien."] call AlysiaClient_fnc_error;
};

g_dog setVariable ["follow", true, true];
if (g_dog getVariable ["search", false]) then
{
	g_dog setVariable ["search", false, true];
	g_dog setVariable ["search_target", objNull];
};

[player, "whistle", 15] call AlysiaClient_fnc_globalSay3d;
[g_dog, "dog_two", 30] call AlysiaClient_fnc_globalSay3d;
