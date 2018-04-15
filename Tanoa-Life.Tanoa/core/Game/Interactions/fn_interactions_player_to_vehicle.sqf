/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {};

[
	_target,
	"player_to_vehicle",
	[
		[
			"refuel",
			"Plein",
			"[g_interaction_target, (missionNamespace getVariable ['refuel_pump', objNull])] spawn AlysiaClient_fnc_fuelStation_refuel_progress;",
			"
				((player getVariable ['refuel_type', '']) != '') &&
				!(isNull (missionNamespace getVariable ['refuel_pump', objNull])) &&
				((vehicle player) isEqualTo player)
			"
		],[
			"stock_refuel",
			"Stock",
			"[g_interaction_target, (missionNamespace getVariable ['refuel_pump', objNull])] spawn AlysiaClient_fnc_fuelStation_stock_progress;",
			"
				((vehicle player) isKindOf 'Man') &&
				((player getVariable ['stock_station_type', '']) != '') &&
				!(isNull (missionNamespace getVariable ['refuel_pump', objNull])) &&
				(['company_fuel'] call AlysiaClient_fnc_hasLicense) &&
				{([(g_interaction_target getVariable ['Trunk', []]), getText(missionConfigFile >> 'ALYSIA_FUEL' >> (player getVariable ['stock_station_type', '']) >> 'item_refuel')] call AlysiaClient_fnc_itemTrunk) > 0} &&
				!(isNull g_company)
			"
		],[
			"refuel",
			"Jerrican",
			"[g_interaction_target] spawn AlysiaClient_fnc_vehicleMenu_refuel_open;",
			"
				((vehicle player) isEqualTo player)	&&
				((locked g_interaction_target) != 2) &&
				(
					('Alysia_jerrycan_sp98' in (magazines player)) ||
					('Alysia_jerrycan_sp95' in (magazines player)) ||
					('Alysia_jerrycan_diesel' in (magazines player)) ||
					('Alysia_jerrycan_gpl' in (magazines player)) ||
					('Alysia_jerrycan_kerosene' in (magazines player)) ||
					('Alysia_jerrycan_bio' in (magazines player))
				)
			"
		],[
			"siphon",
			"Siphon",
			"[g_interaction_target] spawn AlysiaClient_fnc_vehicleMenu_siphon;",
			"
				((vehicle player) isEqualTo player)	&&
				('Alysia_siphon' in (magazines player)) &&
				(['company_garagist'] call AlysiaClient_fnc_hasLicense)
			"
		],[
			"lock",
			"Verrouiller",
			"[g_interaction_target, true] call AlysiaClient_fnc_vehicleMenu_key;",
			"
				((locked g_interaction_target) != 2) &&
				(
					(g_interaction_target in g_vehicles) ||
					(
						(playerSide != civilian) &&
						(str(playerSide) isEqualTo getText(missionConfigFile >> 'ALYSIA_VEHICLES' >> typeOf(g_interaction_target) >> 'side'))
					)
				)
			"
		],[
			"unlock",
			"Déverrouiller",
			"[g_interaction_target, false] call AlysiaClient_fnc_vehicleMenu_key;",
			"
				((locked g_interaction_target) isEqualTo 2) &&
				(
					(g_interaction_target in g_vehicles) ||
					(
						(playerSide != civilian) &&
						(str(playerSide) isEqualTo getText(missionConfigFile >> 'ALYSIA_VEHICLES' >> typeOf(g_interaction_target) >> 'side'))
					)
				)
			"
		],[
			"inventory",
			"Coffre",
			"[g_interaction_target] spawn AlysiaClient_fnc_virtual_menu_exhange_open;",
			"
				((vehicle player) isKindOf 'Man') &&
				(
					((locked g_interaction_target) != 2) ||
					(g_interaction_target in g_vehicles)
				)
			"
		],[
			"repair",
			"Réparation",
			"[g_interaction_target] spawn AlysiaClient_fnc_vehicleMenu_repair_open;",
			"
				(vehicle player) isEqualTo player
			"
		],[
			"flip",
			"Retourner",
			"[g_interaction_target] spawn AlysiaClient_fnc_vehicleMenu_flip;",
			"
				!(g_interaction_target isKindOf 'Ship') &&
				!(g_interaction_target isKindOf 'Air') &&
				((vehicle player) isEqualTo player)
			"
		],[
			"flip",
			"Pousser",
			"[g_interaction_target] call AlysiaClient_fnc_vehicleMenu_push;",
			"
				(g_interaction_target isKindOf 'Ship') &&
				((vehicle player) isKindOf 'Man') &&
				((locked g_interaction_target) != 2)
			"
		],[
			"lockpick",
			"Crochetter",
			"[g_interaction_target] spawn AlysiaClient_fnc_vehicleMenu_steal;",
			"
				('Alysia_Lockpick' in (magazines player)) &&
				!(g_interaction_target in g_vehicles) &&
				((vehicle player) isEqualTo player)
			"
		],[
			"pullout",
			"Sortir",
			"[g_interaction_target] call AlysiaClient_fnc_vehicleMenu_pullout;",
			"
				((vehicle player) isEqualTo player)
			"
		],[
			"owner",
			"Boîte à gants",
			"[g_interaction_target] spawn AlysiaClient_fnc_vehicleMenu_owner;",
			"
				((vehicle player) isEqualTo g_interaction_target)
			"
		],[
			"owner",
			"Immatriculation",
			"[g_interaction_target] spawn AlysiaClient_fnc_vehicleMenu_plate;",
			"
				((vehicle player) isEqualTo player)
			"
		],[
			"impound",
			"Fourrière",
			"[g_interaction_target] spawn AlysiaClient_fnc_vehicleMenu_impound;",
			"
				(
					(playerSide in [east,west]) ||
					(
						(['company_garagist'] call AlysiaClient_fnc_hasLicense) &&
						([getPos g_interaction_target] call AlysiaClient_fnc_nearFourriere)
					)
				) && (
					(vehicle player) isEqualTo player
				)
			"
		],[
			"farm_gather",
			"Récolter",
			"[g_interaction_target] spawn AlysiaClient_fnc_vehicleMenu_farm_gather;",
			"
				(getNumber(missionConfigFile >> 'ALYSIA_VEHICLES' >> typeOf(g_interaction_target) >> 'tractor') isEqualTo 1) &&
				((vehicle player) isEqualTo g_interaction_target) &&
				((driver g_interaction_target) isEqualTo player)
			"
		],[
			"farm_plant",
			"Planter",
			"[g_interaction_target] spawn AlysiaClient_fnc_vehicleMenu_farm_plant;",
			"
				(getNumber(missionConfigFile >> 'ALYSIA_VEHICLES' >> typeOf(g_interaction_target) >> 'tractor') isEqualTo 1) &&
				((vehicle player) isEqualTo g_interaction_target) &&
				((driver g_interaction_target) isEqualTo player)
			"
		],[
			"dog",
			"Chercher",
			"[g_interaction_target] spawn AlysiaClient_fnc_vehicleMenu_dog;",
			"
				!(isNull g_dog) &&
				!(g_dog getVariable ['search', false])
			"
		],[
			"money_transfer",
			"Prendre sac",
			 "[g_interaction_target] spawn AlysiaClient_fnc_vehicleMenu_money_bag_take;",
			"
				((vehicle player) isKindOf 'Man') &&
				(isNull (player getVariable ['wallet_obj', objNull])) &&
				(([(g_interaction_target getVariable ['Trunk', []]), 'money_transfer'] call AlysiaClient_fnc_itemTrunk) > 0) &&
				(isClass(missionConfigFile >> 'ALYSIA_VEHICLES' >> typeOf(g_interaction_target) >> 'company_money_transfer')) &&
				{((player distance (g_interaction_target modelToWorld getArray(missionConfigFile >> 'ALYSIA_VEHICLES' >> typeOf(g_interaction_target) >> 'company_money_transfer' >> 'pos'))) <= 1)} &&
				!(isNull g_company) &&
				{(((g_company getVariable 'company_info') select 2) isEqualTo 'money_transfer')}
			 "
		],[
			"money_transfer",
			"Déposer sac",
			 "[g_interaction_target] spawn AlysiaClient_fnc_vehicleMenu_money_bag_deposit;",
			"
				((vehicle player) isKindOf 'Man') &&
				!(isNull (player getVariable ['wallet_obj', objNull])) &&
				(isClass(missionConfigFile >> 'ALYSIA_VEHICLES' >> typeOf(g_interaction_target) >> 'company_money_transfer')) &&
				{((player distance (g_interaction_target modelToWorld getArray(missionConfigFile >> 'ALYSIA_VEHICLES' >> typeOf(g_interaction_target) >> 'company_money_transfer' >> 'pos'))) <= 1)}
			 "
		],[
			"money_bomb",
			"Braquer",
			"[g_interaction_target] spawn AlysiaClient_fnc_vehicleMenu_bomb;",
			"
				((vehicle player) isKindOf 'Man') &&
				((attachedObjects g_interaction_target) isEqualTo []) &&
				('Bank_Bomb' in (magazines player)) &&
				(isClass(missionConfigFile >> 'ALYSIA_VEHICLES' >> typeOf(g_interaction_target) >> 'c4_bomb')) &&
				{((player distance (g_interaction_target modelToWorld getArray(missionConfigFile >> 'ALYSIA_VEHICLES' >> typeOf(g_interaction_target) >> 'c4_bomb' >> 'attachTo'))) <= 2.5)}
			"
		],[
			"speaker",
			"Haut-parleurs",
			"[g_interaction_target] spawn AlysiaClient_fnc_vehicleMenu_speaker;",
			"
				(count(getArray(missionConfigFile >> 'ALYSIA_VEHICLES' >> typeOf(g_interaction_target) >> 'speaker')) > 0) &&
				((vehicle player) isEqualTo g_interaction_target) &&
				((driver g_interaction_target) isEqualTo player)
			"
		]
	],
	getText(configFile >> "CfgVehicles" >> typeOf(_target) >> "displayName"),
	"Alysia_Client_Texture\Data\vehicle\background.jpg",
	(vehicle player) isKindOf "Man",
	false
] spawn AlysiaClient_fnc_interactions_create;
