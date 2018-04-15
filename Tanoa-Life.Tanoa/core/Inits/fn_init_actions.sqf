/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

/* ==================[CONFIG]===================*/
if (getNumber(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "interaction_seize_gear") isEqualTo 1) then
{
	player addAction
	[
		"<img image='Alysia_Client_Texture\Data\actions_menu\seize.paa'/> <t color='#3F51B5'>Saisir</t> les objets proches</t>",
		AlysiaClient_fnc_seizeObjects, "", 0, false, false, "", '(count(nearestObjects [player, ["WeaponHolder","GroundWeaponHolder","WeaponHolderSimulated","Skyline_Alysia_Boite_01_F"], 3]) > 0)'
	];
};

/* ==================[MEDICAL]===================*/
player addAction
[
	"<img image='Alysia_Client_Texture\Data\actions_menu\morphine.paa'/> Se faire une <t color='#FF5722'>piqure d'adrénaline</t>",
	AlysiaClient_fnc_item_adrenaline_use, player, 0, false, true, "", '(("SkylineItems_Adrenaline" in (magazines player)) && !(player getVariable ["is_coma",false]) && !g_action_inUse)'
];

player addAction
[
	"<img image='Alysia_Client_Texture\Data\actions_menu\morphine.paa'/> Se faire une <t color='#FF5722'>piqure de morphine</t>",
	AlysiaClient_fnc_item_morphine_use, player, 0, false, true, "", '(("SkylineItems_Morphine" in (magazines player)) && !(player getVariable ["is_coma",false]) && !g_action_inUse)'
];

if (playerSide isEqualTo independent) then
{
	player addAction
	[
		"<img image='Alysia_Client_Texture\Data\actions_menu\morphine.paa'/> Se faire un <t color='#FF5722'>vaccin</t> contre le Rhume",
		{[player,'Alysia_Vaccin_Rhume'] spawn AlysiaClient_fnc_item_vaccin_use}, "", 0, false, true, "", '(("Alysia_Vaccin_Rhume" in (magazines player)) && !(player getVariable ["is_coma",false]) && !g_action_inUse)'
	];

	player addAction
	[
		"<img image='Alysia_Client_Texture\Data\actions_menu\morphine.paa'/> Se faire un <t color='#FF5722'>vaccin</t> contre la Toux",
		{[player,'Alysia_Vaccin_Toux'] spawn AlysiaClient_fnc_item_vaccin_use}, player, 0, false, true, "", '(("Alysia_Vaccin_Toux" in (magazines player)) && !(player getVariable ["is_coma",false]) && !g_action_inUse)'
	];
};

player addAction
[
	"<img image='Alysia_Client_Texture\Data\actions_menu\morphine.paa'/> Se faire une <t color='#FF5722'>piqure de chlore</t>",
	{[player] spawn AlysiaClient_fnc_item_chlore_use}, "", 0, false, true, "", '(("Alysia_Chlore" in (magazines player)) && !(player getVariable ["is_coma",false]) && !g_action_inUse)'
];

player addAction
[
	"<img image='Alysia_Client_Texture\Data\actions_menu\bandage.paa'/> Se faire un <t color='#FF5722'>bandage</t>",
	AlysiaClient_fnc_item_bandage_use, player, 0, true, true, "", '((g_bleed > 0) && ("SkylineItems_Bandage" in (magazines player)) && !(player getVariable ["is_coma",false]) && !g_action_inUse)'
];
//---------------

/* ==================[SEATBELT]===================*/
player addAction
[
	"<img image='Alysia_Client_Texture\Data\actions_menu\seatbelt_on.paa'/> Mettre sa <t color='#74DF00'>ceinture</t>",
	{
		g_seatbelt = true;
		playSound "seatbelt_on";
	}, "", 99999, false, false, "", '(!g_action_inUse && ((vehicle player) != player) && !g_seatbelt && ((vehicle player) isKindOf "Car"))'
];

player addAction
[
	"<img image='Alysia_Client_Texture\Data\actions_menu\seatbelt_off.paa'/> Enlever sa <t color='#FE642E'>ceinture</t>",
	{
		g_seatbelt = false;
		playSound "seatbelt_off";
	}, "", 99999, false, false, "", '!g_action_inUse && (vehicle player) != player && g_seatbelt'
];
//---------------
