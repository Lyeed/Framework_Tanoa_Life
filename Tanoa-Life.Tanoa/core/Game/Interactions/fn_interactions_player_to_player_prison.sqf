/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (!(g_interaction_target getVariable ["arrested", false])) exitWith {closeDialog 0};
[
	([_this, 0, objNull, [objNull]] call BIS_fnc_param),
	"player_to_player_prison",
	[
		["arrest", "Durée", "[] spawn AlysiaClient_fnc_prisonArrestMenu_use_time;", "true"],
		["arrest", "Caution", "[] spawn AlysiaClient_fnc_prisonArrestMenu_use_caution;", "true"],
		["arrest", "Relâcher", "[] spawn AlysiaClient_fnc_prisonArrestMenu_use_release;", "true"]
	],
	"Gestion de Peine"
] spawn AlysiaClient_fnc_interactions_create;
