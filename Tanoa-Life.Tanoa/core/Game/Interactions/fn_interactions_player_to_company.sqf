/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_object";
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _object) exitWith {};

[
	_object,
	"player_to_company",
	[
		[
			"search",
			"Perquisition",
			"[g_interaction_target,'company'] spawn AlysiaClient_fnc_item_perquisition;",
			"
				(getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'search') isEqualTo 1) &&
				!(g_interaction_target getVariable ['perquisition',false]) &&
				!(g_interaction_target getVariable ['construction',false])
			"
		],[
			"info",
			"Infos",
			"[g_interaction_target] call AlysiaClient_fnc_company_info_open;",
			"
				!(g_interaction_target getVariable ['construction',false])
			"
		],[
			"book",
			"Livre Comptes",
			"[g_interaction_target,player] remoteExecCall ['AlysiaServer_fnc_company_history_get',2];",
			"
				!(g_interaction_target getVariable ['construction',false]) &&
				(
					((getPlayerUID player) isEqualTo ((g_interaction_target getVariable 'company_info') select 1)) ||
					(
						isClass(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'history') &&
						(
							(getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'history' >> 'rank') <= (player getVariable ['rank',0])) &&
							(
								(getText(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'history' >> 'license') isEqualTo '') ||
								([getText(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'history' >> 'license')] call AlysiaClient_fnc_hasLicense)
							)
						)
					)
				)
			"
		],[
			"construction",
			"Matériaux",
			"[g_interaction_target,'construction_require'] spawn AlysiaClient_fnc_virtual_menu_reduce_open;",
			"
				(g_interaction_target getVariable ['construction',false])
			"
		],[
			"finish",
			"Construire",
			"[g_interaction_target] spawn AlysiaClient_fnc_company_construction_build;",
			"
				(g_interaction_target getVariable ['construction',false]) &&
				((g_interaction_target getVariable ['construction_require',[]]) isEqualTo []) &&
				(['company_construction'] call AlysiaClient_fnc_hasLicense)
			"
		],[
			"process",
			"Traitements",
			"[g_interaction_target] call AlysiaClient_fnc_company_process;",
			"
				!(g_interaction_target getVariable ['construction',false]) &&
				(isClass(missionConfigFile >> 'ALYSIA_COMPANIES_TYPES' >> ((g_interaction_target getVariable 'company_info') select 2) >> 'process')) &&
				{((player distance (g_interaction_target modelToWorld getArray(missionConfigFile >> 'ALYSIA_COMPANIES_TYPES' >> ((g_interaction_target getVariable 'company_info') select 2) >> 'process' >> 'modelPos'))) <= getNumber(missionConfigFile >> 'ALYSIA_COMPANIES_TYPES' >> ((g_interaction_target getVariable 'company_info') select 2) >> 'process' >> 'posDistance'))}
			"
		],[
			"inventory",
			"Coffre",
			"[g_interaction_target] spawn AlysiaClient_fnc_company_storage;",
			"
				isClass(missionConfigFile >> 'ALYSIA_COMPANIES_TYPES' >> ((g_interaction_target getVariable 'company_info') select 2) >> 'storage') &&
				!(g_interaction_target getVariable ['construction',false]) &&
				(
					(g_company isEqualTo g_interaction_target) ||
					(
						(getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'search') isEqualTo 1) &&
						(g_interaction_target getVariable ['perquisition',false])
					)
				)
			"
		],[
			"garage",
			"Garage",
			"[g_interaction_target] call AlysiaClient_fnc_company_garage;",
			"
				isClass(missionConfigFile >> 'ALYSIA_COMPANIES_TYPES' >> ((g_interaction_target getVariable 'company_info') select 2) >> 'garage') &&
				!(g_interaction_target getVariable ['construction',false]) &&
				(g_company isEqualTo g_interaction_target)
			"
		],[
			"store",
			"Rentrer",
			"[g_interaction_target] spawn AlysiaClient_fnc_garageStoreOpen;",
			"
				isClass(missionConfigFile >> 'ALYSIA_COMPANIES_TYPES' >> ((g_interaction_target getVariable 'company_info') select 2) >> 'garage') &&
				!(g_interaction_target getVariable ['construction',false]) &&
				(g_company isEqualTo g_interaction_target)
			"
		],[
			"launder",
			"Blanchiment",
			"[g_interaction_target] spawn AlysiaClient_fnc_company_launder_open;",
			"
				(g_company isEqualTo g_interaction_target) &&
				((['illegal_money'] call AlysiaClient_fnc_itemCount) > 0) &&
				!(g_interaction_target getVariable ['construction',false])
			"
		],[
			"destroy",
			"Détruire",
			"[g_interaction_target] spawn AlysiaClient_fnc_company_destroy;",
			"
				isClass(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'destroy') &&
				(
					(getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'destroy' >> 'rank') <= (player getVariable ['rank',0])) &&
					(
						(getText(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'destroy' >> 'license') isEqualTo '') ||
						([getText(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'destroy' >> 'license')] call AlysiaClient_fnc_hasLicense)
					)
				)
			"
		],[
			"light",
			"Lumière",
			"[g_interaction_target] call AlysiaClient_fnc_building_light_handle;",
			"
				(g_company isEqualTo g_interaction_target) ||
				(
					(getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'search') isEqualTo 1) &&
					(g_interaction_target getVariable ['perquisition',false])
				)
			"
		],[
			"lock",
			"Serrure",
			"[g_interaction_target,false] call AlysiaClient_fnc_building_door_lock_handle;",
			"
				(([g_interaction_target] call AlysiaClient_fnc_nearestDoor) != 0) &&
				(
					(g_interaction_target isEqualTo g_company) ||
					(
						(getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'search') isEqualTo 1) &&
						(g_interaction_target getVariable ['perquisition',false])
					)
				)
			"
		],[
			"knock",
			"Toquer",
			"[g_interaction_target] call AlysiaClient_fnc_building_door_knock;",
			"
				(([g_interaction_target] call AlysiaClient_fnc_nearestDoor) != 0) &&
				((g_interaction_target animationPhase format['door_%1_rot',(([g_interaction_target] call AlysiaClient_fnc_nearestDoor) != 0)]) isEqualTo 0)
			"
		],[
			"bell",
			"Sonner",
			"[g_interaction_target] call AlysiaClient_fnc_building_door_doorbell;",
			"
				(([g_interaction_target] call AlysiaClient_fnc_nearestDoor) != 0) &&
				((g_interaction_target animationPhase format['door_%1_rot',(([g_interaction_target] call AlysiaClient_fnc_nearestDoor) != 0)]) isEqualTo 0)
			"
		],[
			"lock",
			"Crochetter",
			"[g_interaction_target,true] spawn AlysiaClient_fnc_building_door_lock_handle;",
			"
				('Alysia_Lockpick' in (magazines player)) &&
				(([g_interaction_target] call AlysiaClient_fnc_nearestDoor) != 0) &&
				((g_interaction_target animationPhase format['door_%1_rot',(([g_interaction_target] call AlysiaClient_fnc_nearestDoor) != 0)]) isEqualTo 0)
			"
		]
	],
	(_object getVariable "company_info") select 0,
	"Alysia_Client_Texture\Data\interactions\player_to_company\background_company.jpg",
	false,
	false
] spawn AlysiaClient_fnc_interactions_create;
