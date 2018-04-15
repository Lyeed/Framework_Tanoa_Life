/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

[
	[_this, 0, objNull, [objNull]] call BIS_fnc_param,
	"player_to_chair",
	[
		[
			"sit",
			"S'asseoir",
			"[g_interaction_target] call AlysiaClient_fnc_sitDown",
			"true"
		],[
			"take",
			"Récupérer",
			"[g_interaction_target] spawn AlysiaClient_fnc_dynamicObject_packup;",
			"(g_interaction_target getVariable ['isPackable', false])"
		],[
			"take",
			"Escorter",
			"[g_interaction_target] call AlysiaClient_fnc_dynamicObject_escort;",
			"(getNumber(missionConfigFile >> 'ALYSIA_DYN_OBJECTS' >> typeOf(g_interaction_target) >> 'escort') isEqualTo 1)"
		]
	],
	"Chaise",
	"Alysia_Client_Texture\Data\interactions\background.jpg",
	true,
	false
] spawn AlysiaClient_fnc_interactions_create;
