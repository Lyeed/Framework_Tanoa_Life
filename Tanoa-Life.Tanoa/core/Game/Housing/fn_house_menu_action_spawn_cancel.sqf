/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

g_respawn_point = objNull;
profileNamespace setVariable ["ALYSIA_house_spawn_info", nil];
if ([_this, 0, false, [false]] call BIS_fnc_param) then {
	["Vous réapparaitrez à l'hôpital de <t color='#3ADF00'>Malieuville</t>."] call AlysiaClient_fnc_info;
};
