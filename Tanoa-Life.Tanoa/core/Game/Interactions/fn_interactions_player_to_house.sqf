/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

[
	[_this, 0, objNull, [objNull]] call BIS_fnc_param,
	"player_to_house",
	[
		[
			"search",
			"Perquisition",
			"[g_interaction_target, 'house'] spawn AlysiaClient_fnc_item_perquisition;",
			"
				(getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'housing' >> 'search') isEqualTo 1) &&
				!(g_interaction_target getVariable ['perquisition', false]) &&
				!((g_interaction_target getVariable ['house_owner', []]) isEqualTo [])
			"
		],[
			"search",
			"Propriétaire",
			"[g_interaction_target] call AlysiaClient_fnc_house_menu_action_owner;",
			"
				(getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'housing' >> 'search') isEqualTo 1) &&
				(g_interaction_target getVariable ['perquisition', false])
			"
		],[
			"sell",
			"Vendre",
			"[g_interaction_target] spawn AlysiaClient_fnc_house_menu_action_sell;",
			"
				(((g_interaction_target getVariable ['house_owner', ['', '']]) select 0) isEqualTo (getPlayerUID player))
			"
		],[
			"sell",
			"Acheter",
			"[g_interaction_target] call AlysiaClient_fnc_house_menu_open_buy;",
			"
				(isClass(missionConfigFile >> 'ALYSIA_HOUSES' >> (typeOf g_interaction_target) >> 'factions' >> str(playerSide))) &&
				((g_interaction_target getVariable ['house_owner', []]) isEqualTo [])
			"
		],[
			"storage",
			"Coffre",
			"[g_interaction_target] spawn AlysiaClient_fnc_house_menu_action_storage;",
			"
				isClass(missionConfigFile >> 'ALYSIA_HOUSES' >> typeOf(g_interaction_target) >> 'storage') &&
				(
					(g_interaction_target in g_houses) ||
					(
						(g_interaction_target getVariable ['perquisition', false]) &&
						(getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'housing' >> 'search') isEqualTo 1)
					)
				)
			"
		],[
			"garage",
			"Garage",
			"[g_interaction_target] call AlysiaClient_fnc_house_menu_action_garage;",
			"
				isClass(missionConfigFile >> 'ALYSIA_HOUSES' >> typeOf(g_interaction_target) >> 'garage') &&
				(g_interaction_target in g_houses)
			"
		],[
			"store",
			"Rentrer",
			"[g_interaction_target] spawn AlysiaClient_fnc_garageStoreOpen;",
			"
				isClass(missionConfigFile >> 'ALYSIA_HOUSES' >> typeOf(g_interaction_target) >> 'garage') &&
				(g_interaction_target in g_houses)
			"
		],[
			"light",
			"Lumière",
			"[g_interaction_target] call AlysiaClient_fnc_building_light_handle;",
			"
				(g_interaction_target in g_houses) ||
				(
					(g_interaction_target getVariable ['perquisition', false]) &&
					(getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'housing' >> 'search') isEqualTo 1)
				)
			"
		],[
			"lock",
			"Serrure",
			"[g_interaction_target, false] call AlysiaClient_fnc_building_door_lock_handle;",
			"
				(([g_interaction_target] call AlysiaClient_fnc_nearestDoor) != 0) &&
				(
					(g_interaction_target in g_houses) ||
					(
						(g_interaction_target getVariable ['perquisition', false]) &&
						(getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'housing' >> 'search') isEqualTo 1)
					)
				)
			"
		],[
			"lock",
			"Crochetter",
			"[g_interaction_target, true] spawn AlysiaClient_fnc_building_door_lock_handle;",
			"
				('Alysia_Lockpick' in (magazines player)) &&
				(([g_interaction_target] call AlysiaClient_fnc_nearestDoor) != 0) &&
				((g_interaction_target animationPhase format['door_%1_rot', (([g_interaction_target] call AlysiaClient_fnc_nearestDoor) != 0)]) isEqualTo 0)
			"
		],[
			"spawn",
			"Spawn ici",
			"[g_interaction_target] call AlysiaClient_fnc_house_menu_action_spawn_set;",
			"
				(g_interaction_target in g_houses) &&
				(g_respawn_point != g_interaction_target) &&
				isClass(missionConfigFile >> 'ALYSIA_HOUSES' >> typeof(g_interaction_target) >> 'house') &&
				(((g_interaction_target getVariable ['house_owner', ['', '']]) select 0) isEqualTo (getPlayerUID player))
			"
		],[
			"spawn",
			"Annuler Spawn",
			"[true] call AlysiaClient_fnc_house_menu_action_spawn_cancel;",
			"
				(g_respawn_point isEqualTo g_interaction_target)
			"
		],[
			"knock",
			"Toquer",
			"[g_interaction_target] call AlysiaClient_fnc_building_door_knock;",
			"
				(([g_interaction_target] call AlysiaClient_fnc_nearestDoor) != 0) &&
				((g_interaction_target animationPhase format['door_%1_rot', (([g_interaction_target] call AlysiaClient_fnc_nearestDoor) != 0)]) isEqualTo 0)
			"
		],[
			"bell",
			"Sonner",
			"[g_interaction_target] call AlysiaClient_fnc_building_door_doorbell;",
			"
				(([g_interaction_target] call AlysiaClient_fnc_nearestDoor) != 0) &&
				((g_interaction_target animationPhase format['door_%1_rot', (([g_interaction_target] call AlysiaClient_fnc_nearestDoor) != 0)]) isEqualTo 0)
			"
		]
	],
	"Bâtiment",
	"Alysia_Client_Texture\Data\interactions\player_to_house\background_house.jpg",
	false,
	false
] spawn AlysiaClient_fnc_interactions_create;
