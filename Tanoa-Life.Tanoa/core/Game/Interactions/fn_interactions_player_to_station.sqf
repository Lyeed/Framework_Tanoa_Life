/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if ((player getVariable ["refuel_type", ""]) != "") exitWith
{
	["Plein annulé."] call AlysiaClient_fnc_info;
	player setVariable ["refuel_type", ""];
};

if ((player getVariable ["stock_station_type", ""]) != "") exitWith
{
	["Plein annulé."] call AlysiaClient_fnc_info;
	player setVariable ["stock_station_type", ""];
};

[
	[_this, 0, objNull, [objNull]] call BIS_fnc_param,
	"player_to_station",
	[
		[
			"refuel_veh",
			"Véhicule",
			"[g_interaction_target,0] call AlysiaClient_fnc_fuelStation_refuel_open;",
			"true"
		],
		[
			"stock_refuel",
			"Stock",
			"[g_interaction_target,1] call AlysiaClient_fnc_fuelStation_refuel_open;",
			"(['company_fuel'] call AlysiaClient_fnc_hasLicense)"
		],
		[
			"refuel_jerry",
			"Jerrycan",
			"[g_interaction_target] spawn AlysiaClient_fnc_fuelStation_jerrycan_open;",
			"('Alysia_jerrycan_empty' in (magazines player))"
		]
	],
	"Station Essence",
	"Alysia_Client_Texture\Data\vehicle\background.jpg",
	false,
	false
] spawn AlysiaClient_fnc_interactions_create;
