/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (missionNamespace getVariable ["g_connected", false]) then
{
	[
		(getPlayerUID player),
		playerSide,
		missionNamespace getVariable ["g_cash", 0],
		missionNamespace getVariable ["g_atm", 0],
		([] call AlysiaClient_fnc_getInv),
		missionNamespace getVariable ["g_is_alive", false],
		missionNamespace getVariable ["g_blood", 4000],
		missionNamespace getVariable ["g_bleed", 0],
		missionNamespace getVariable ["g_hunger", 100],
		missionNamespace getVariable ["g_thirst", 100],
		missionNamespace getVariable ["g_phone_forfait", "none"],
		([] call AlysiaClient_fnc_getLicenses)
	] remoteExec ["AlysiaServer_fnc_query_update_usual", 2];

	[true] call AlysiaClient_fnc_temporyInventory_reset;
};
