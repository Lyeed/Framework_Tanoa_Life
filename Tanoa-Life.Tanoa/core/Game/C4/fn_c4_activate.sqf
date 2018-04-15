/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (isNull g_interaction_target) exitWith {};
if (isNull (findDisplay 12000)) exitWith {};
if (g_interaction_target getVariable ["bomb_activate", false]) exitWith {};

g_interaction_target setVariable ["bomb_timer", (g_interaction_target getVariable ["bomb_timer", 0]), true];
g_interaction_target setVariable ["bomb_activate", true, true];
g_interaction_target setVariable ["bomb_explosion", floor(serverTime) + (g_interaction_target getVariable ["bomb_timer", 0]), true];
[g_interaction_target, g_interaction_target getVariable "bomb_timer"] remoteExec ["AlysiaServer_fnc_c4_bomb", 2];
[g_interaction_target, "c4_validate", 7] call AlysiaClient_fnc_globalSay3d;
