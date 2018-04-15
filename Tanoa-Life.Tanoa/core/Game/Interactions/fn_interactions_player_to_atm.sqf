/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

[
	[_this, 0, objNull, [objNull]] call BIS_fnc_param,
	"player_to_atm",
	[
		[
			"take",
			"Accéder",
			"['home', g_interaction_target] call AlysiaClient_fnc_atmScreen;",
			"
				(true)
			"
		],[
			"money_transfer",
			"Remplir",
			"[g_interaction_target] spawn AlysiaClient_fnc_atm_bag_deposit;",
			"
				(getNumber(missionConfigFile >> 'ALYSIA_ATM' >> typeOf(g_interaction_target) >> 'company_money_transfert') isEqualTo 1) &&
				!(isNull(player getVariable ['wallet_obj', objNull])) &&
				(['company_money_tranfer'] call AlysiaClient_fnc_hasLicense)
			"
		],[
			"money_transfer",
			"Investir",
			"[g_interaction_target] spawn AlysiaClient_fnc_atm_bag_get;",
			"
				(getNumber(missionConfigFile >> 'ALYSIA_ATM' >> typeOf(g_interaction_target) >> 'company_money_get') isEqualTo 1) &&
				(isNull(player getVariable ['wallet_obj', objNull])) &&
				(['company_money_tranfer'] call AlysiaClient_fnc_hasLicense)
			"
		]
	],
	"Distributeur",
	"Alysia_Client_Texture\Data\interactions\background.jpg",
	true,
	false
] spawn AlysiaClient_fnc_interactions_create;
