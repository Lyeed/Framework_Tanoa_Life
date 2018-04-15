/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

[
	[_this, 0, objNull, [objNull]] call BIS_fnc_param,
	"player_to_skull",
	[
		[
			"search",
			"Fouiller",
			"[] spawn AlysiaClient_fnc_skullMenu_search_open;",
			"true"
		],
		[
			"take",
			"Récupérer le corps",
			"[g_interaction_target] spawn AlysiaClient_fnc_skullMenu_take;",
			"(getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'skull_take') isEqualTo 1)"
		],
		[
			"who",
			"Identité",
			"[g_interaction_target] spawn AlysiaClient_fnc_skullMenu_who;",
			"
				(getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'skull_who') isEqualTo 1) &&
				((['adn'] call AlysiaClient_fnc_itemCount) > 0)
			"
		]
	],
	"Cadavre",
	"Alysia_Client_Texture\Data\skull\background.jpg",
	true,
	false
] spawn AlysiaClient_fnc_interactions_create;
