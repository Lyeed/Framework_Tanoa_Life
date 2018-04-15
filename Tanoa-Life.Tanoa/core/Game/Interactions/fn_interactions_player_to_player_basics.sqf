/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

[
	[_this, 0, objNull, [objNull]] call BIS_fnc_param,
	"player_to_player_basics",
	[
		[
			"wallet",
			"Porte-feuille",
			"[g_interaction_target] spawn AlysiaClient_fnc_wallet_try;",
			"
				isNull (g_interaction_target getVariable ['escorted',objNull])
			"
		],[
			"trade",
			"Echanger",
			"[g_interaction_target] spawn AlysiaClient_fnc_interactionMenu_action_trade_open;",
			"
				!(g_interaction_target getVariable ['restrained',false]) &&
				!(g_interaction_target getVariable ['surrender',false]) &&
				!(g_interaction_target getVariable ['is_coma',false])
			"
		],[
			"escort",
			"Escorter",
			"[g_interaction_target] spawn AlysiaClient_fnc_escort;",
			"
				(g_interaction_target getVariable ['restrained',false]) &&
				(isNull (player getVariable ['escorting',objNull])) &&
				(isNull (g_interaction_target getVariable ['escorted',objNull])) &&
				!(g_interaction_target getVariable ['restrained_down', false])
			"
		],[
			"stopescort",
			"Arrêter l'escorte",
			"[g_interaction_target] spawn AlysiaClient_fnc_stopescort;",
			"
				!(isNull (g_interaction_target getVariable ['escorted',objNull])) ||
				!(isNull (g_interaction_target getVariable ['escorting',objNull]))
			"
		],[
			"restrain",
			"Menotter",
			"[g_interaction_target] spawn AlysiaClient_fnc_interactionMenu_action_restrain;",
			"
				(
					(
						(g_interaction_target getVariable ['surrender',false]) ||
						((animationState g_interaction_target) isEqualTo 'incapacitated')
					) &&
					!(g_interaction_target getVariable ['restrained',false]) &&
					((['handcuffs'] call AlysiaClient_fnc_itemCount) > 0)
				)
			"
		],[
			"unrestrain",
			"Démenotter",
			"[g_interaction_target] spawn AlysiaClient_fnc_interactionMenu_action_unrestrain;",
			"
				(g_interaction_target getVariable ['restrained',false]) &&
				((['handcuffkeys'] call AlysiaClient_fnc_itemCount) > 0) &&
				(isNull (g_interaction_target getVariable ['escorted',objNull]))
			"
		],[
			"lockpick",
			"Crochetter",
			"[g_interaction_target] spawn AlysiaClient_fnc_interactionMenu_action_lockpick;",
			"
				(g_interaction_target getVariable ['restrained',false]) &&
				('Alysia_Lockpick' in (magazines player)) &&
				(isNull (g_interaction_target getVariable ['escorted',objNull]))
			"
		],[
			"ticket",
			"Paiement",
			"[g_interaction_target] spawn AlysiaClient_fnc_interactionMenu_action_ticket;",
			"
				(
					(
						(playerSide in [independent,east,west]) || !(isNull g_company)
					) &&
					(isNull (g_interaction_target getVariable ['escorted',objNull]))
				)
			"
		],[
			"search",
			"Fouiller",
			"[g_interaction_target] spawn AlysiaClient_fnc_search_action;",
			"
				(
					(g_interaction_target getVariable ['surrender',false]) ||
					(g_interaction_target getVariable ['restrained',false])
				) && (
					isNull (g_interaction_target getVariable ['escorted',objNull])
				)
			"
		],[
			"bandage",
			"Bandage",
			"[nil,nil,nil,g_interaction_target] spawn AlysiaClient_fnc_item_bandage_use;",
			"
				(g_interaction_target getVariable ['is_bleeding',false]) &&
				('SkylineItems_Bandage' in (magazines player))
			"
		],[
			"morphine",
			"Morphine",
			"[nil,nil,nil,g_interaction_target] spawn AlysiaClient_fnc_item_morphine_use;",
			"('SkylineItems_Morphine' in (magazines player))"
		],[
			"company_create",
			"Entreprise",
			"[g_interaction_target] call AlysiaClient_fnc_company_create_open;",
			"
				(
					isClass(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'create') &&
					(
						(getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'create' >> 'rank') <= (player getVariable ['rank',0])) &&
						(
							(getText(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'create' >> 'license') isEqualTo '') ||
							([getText(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'companies' >> 'create' >> 'license')] call AlysiaClient_fnc_hasLicense)
						)
					)
				) && (
					getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(side(g_interaction_target)) >> 'companies' >> 'owner') isEqualTo 1
				)
			"
		],[
			"company_recrut",
			"Recruter",
			"[g_interaction_target,g_company] call AlysiaClient_fnc_company_member_invite;",
			"
				(getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(side g_interaction_target) >> 'companies' >> 'employee') isEqualTo 1) &&
				!(isNull g_company) &&
				{((g_company getVariable 'company_info') select 1) isEqualTo (getPlayerUID player)}
			"
		],[
			"alcool",
			"Alcootest",
			"[g_interaction_target] spawn AlysiaClient_fnc_interactionMenu_action_alcootest;",
			"
				(
					(g_interaction_target getVariable ['surrender',false]) ||
					(g_interaction_target getVariable ['restrained',false])
				) &&
				(isNull (g_interaction_target getVariable ['escorted',objNull])) &&
				((['alcool_test'] call AlysiaClient_fnc_itemCount) > 0)
			"
		],[
			"license",
			"Donner licence",
			"[g_interaction_target] spawn AlysiaClient_fnc_interactionMenu_action_license_give_open;",
			"
				count
				(
					'
						(
							((player getVariable [''rank'',0]) >= getNumber(_x >> ''rank'')) &&
							((getText(_x >> ''license'') isEqualTo '''') || ([getText(_x >> ''license'')] call AlysiaClient_fnc_hasLicense)) &&
							((getNumber(_x >> ''same_side_only'') isEqualTo 0) || ((getNumber(_x >> ''same_side_only'') isEqualTo 1) && ((side g_interaction_target) isEqualTo playerSide))) &&
							(isClass(missionConfigFile >> ''ALYSIA_LICENSES'' >> (configName _x) >> ''factions'' >> str(side g_interaction_target)))
						)
					'
					configClasses (missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'licenses_give')
				) > 0
			"
		],[
			"dna",
			"Test ADN",
			"[g_interaction_target] spawn AlysiaClient_fnc_item_adn_use;",
			"
				(
					(g_interaction_target getVariable ['surrender',false]) ||
					(g_interaction_target getVariable ['restrained',false])
				) &&
				(isNull (g_interaction_target getVariable ['escorted',objNull])) &&
				((['adn'] call AlysiaClient_fnc_itemCount) > 0) &&
				(['guer_gen'] call AlysiaClient_fnc_hasLicense)
			"
		],[
			"doctor",
			"Diagnostic",
			"[player, g_interaction_target] call AlysiaClient_fnc_doctor_start;",
			"
				(isNull (g_interaction_target getVariable ['escorted',objNull])) &&
				(['guer_medical'] call AlysiaClient_fnc_hasLicense) &&
				((['stethoscope'] call AlysiaClient_fnc_itemCount) > 0)
			"
		],[
			"headbag_put",
			"Mettre cagoule",
			"[g_interaction_target] spawn AlysiaClient_fnc_headbag_put_action;",
			"
				(
					(g_interaction_target getVariable ['surrender',false]) ||
					(g_interaction_target getVariable ['restrained',false])
				) &&
				(isNull (g_interaction_target getVariable ['escorted',objNull])) &&
				('mgsr_headbag' in (items player)) &&
				((headgear g_interaction_target) != 'mgsr_headbag')
			"
		],[
			"headbag_take",
			"Enlever cagoule",
			"[g_interaction_target] spawn AlysiaClient_fnc_headbag_take_action;",
			"
				(isNull (g_interaction_target getVariable ['escorted',objNull])) &&
				((headgear g_interaction_target) isEqualTo 'mgsr_headbag')
			"
		],[
			"silence_put",
			"Mettre baillon",
			"[g_interaction_target] spawn AlysiaClient_fnc_silence_put_action;",
			"
				(
					(g_interaction_target getVariable ['surrender',false]) ||
					(g_interaction_target getVariable ['restrained',false])
				) &&
				(isNull (g_interaction_target getVariable ['escorted',objNull])) &&
				('G_Bandanna_blk' in (items player)) &&
				((goggles g_interaction_target) != 'G_Bandanna_blk')
			"
		],[
			"silence_take",
			"Enlever baillon",
			"[g_interaction_target] spawn AlysiaClient_fnc_silence_take_action;",
			"
				(isNull (g_interaction_target getVariable ['escorted',objNull])) &&
				((goggles g_interaction_target) isEqualTo 'G_Bandanna_blk')
			"
		],[
			"morphine",
			"Vaccin : Rhume",
			"[g_interaction_target,'Alysia_Vaccin_Rhume'] spawn AlysiaClient_fnc_item_vaccin_use;",
			"('Alysia_Vaccin_Rhume' in (magazines player)) && (playerSide isEqualTo independent)"
		],[
			"morphine",
			"Vaccin : Toux",
			"[g_interaction_target,'Alysia_Vaccin_Toux'] spawn AlysiaClient_fnc_item_vaccin_use;",
			"('Alysia_Vaccin_Toux' in (magazines player)) && (playerSide isEqualTo independent)"
		],[
			"morphine",
			"Piqure Chlore",
			"[g_interaction_target] spawn AlysiaClient_fnc_item_chlore_use;",
			"('Alysia_Chlore' in (magazines player)) && (playerSide isEqualTo independent)"
		],[
			"feed",
			"Force-feed",
			"[g_interaction_target] spawn AlysiaClient_fnc_action_feed_open;",
			"
				(
					(g_interaction_target getVariable ['restrained',false]) ||
					(g_interaction_target getVariable ['surrender',false])
				) &&
				(isNull (player getVariable ['escorting',objNull])) &&
				(isNull (g_interaction_target getVariable ['escorted',objNull]))
			"
		],[
			"restrain",
			"Mettre au sol",
			"g_interaction_target setVariable ['restrained_down', true, true];",
			"
				(g_interaction_target getVariable ['restrained',false]) &&
				!(g_interaction_target getVariable ['restrained_down',false]) &&
				(isNull (g_interaction_target getVariable ['escorted',objNull]))
			"
		],[
			"restrain",
			"Relever",
			"g_interaction_target setVariable ['restrained_down', false, true];",
			"
				(g_interaction_target getVariable ['restrained',false]) &&
				(g_interaction_target getVariable ['restrained_down',false]) &&
				(isNull (g_interaction_target getVariable ['escorted',objNull]))
			"
		]
	],
	"Interactions"
] spawn AlysiaClient_fnc_interactions_create;
