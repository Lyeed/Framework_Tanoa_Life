/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

[
	[_this, 0, objNull, [objNull]] call BIS_fnc_param,
	"player_to_speaker",
	[
		["sabot", "Saboter", "[g_interaction_target] spawn AlysiaClient_fnc_border_south_speaker_destroy;", "!(g_interaction_target getVariable ['destroyed',false])"],
		["repair", "Réparer", "[g_interaction_target] spawn AlysiaClient_fnc_border_south_speaker_repair;", "(g_interaction_target getVariable ['destroyed',false])"]
	],
	"Haut parleur",
	"Alysia_Client_Texture\Data\interactions\background.jpg",
	false,
	false
] spawn AlysiaClient_fnc_interactions_create;
