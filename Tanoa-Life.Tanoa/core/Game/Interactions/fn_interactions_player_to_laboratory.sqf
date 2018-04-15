/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

[
	[_this, 0, objNull, [objNull]] call BIS_fnc_param,
	"player_to_laboratory",
	[
		[
			"construction",
			"Matériaux",
			"[g_interaction_target,'construction_require'] spawn AlysiaClient_fnc_virtual_menu_reduce_open;",
			"(g_interaction_target getVariable ['construction', false])"
		],
		[
			"finish",
			"Construire",
			"[g_interaction_target] spawn AlysiaClient_fnc_labo_build;",
			"
				(g_interaction_target getVariable ['construction', false]) &&
				((g_interaction_target getVariable ['construction_require', []]) isEqualTo [])
			"
		],
		[
			"process",
			"Traitements",
			"[g_interaction_target] call AlysiaClient_fnc_labo_process;",
			"
				(count getArray(missionConfigFile >> 'ALYSIA_LABORATORIES' >> ((g_interaction_target getVariable ['laboratory_info',['','','']]) select 2) >> 'process') > 0) &&
				!(g_interaction_target getVariable ['construction', false])
			"
		],
		[
			"destroy",
			"Détruire",
			"[g_interaction_target] spawn AlysiaClient_fnc_labo_destroy;",
			"
				(
					((['destroy_labo'] call AlysiaClient_fnc_itemCount) > 0) &&
					(str(playerSide) in getArray(missionConfigFile >> 'ALYSIA_LABORATORIES' >> ((g_interaction_target getVariable ['laboratory_info',['','','']]) select 2) >> 'destroy'))
				) || (
					((g_interaction_target getVariable 'laboratory_info') select 1) isEqualTo (getPlayerUID player)
				)
			"
		],
		[
			"inventory",
			"Stockage",
			"[g_interaction_target,'laboratory_inv_virtual',true,true,false,true,false] spawn AlysiaClient_fnc_virtual_menu_exhange_open;",
			"!(g_interaction_target getVariable ['construction', false])"
		],
		[
			"sabotage",
			"Saboter",
			"[g_interaction_target] spawn AlysiaClient_fnc_labo_sabotage;",
			"
				((g_interaction_target getVariable ['sabotage',0]) < serverTime) &&
				!(g_interaction_target getVariable ['construction', false])
			"
		]
	],
	"Laboratoire",
	"Alysia_Client_Texture\Data\interactions\player_to_laboratory\background_lab.jpg",
	true,
	false
] spawn AlysiaClient_fnc_interactions_create;
