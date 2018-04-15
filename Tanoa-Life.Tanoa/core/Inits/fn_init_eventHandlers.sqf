/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

(findDisplay 46) displayAddEventHandler ["KeyDown", "(_this select 1) call AlysiaEvent_fnc_onPlayerKeyPress"];

player addEventHandler ["FiredNear", "_this call AlysiaEvent_fnc_onPlayerFireNear"];
player addEventHandler ["handleDamage", "_this call AlysiaEvent_fnc_onPlayerHandleDamage"];
player addEventHandler ["InventoryOpened", "[_this select 1] spawn AlysiaEvent_fnc_onPlayerInventoryOpen"];
// player addEventHandler ["Reloaded", "_this call AlysiaEvent_fnc_onPlayerReload"];

/* TASK_FORCE_RADIO */
// ["actionRadio", "OnTangent", {call AlysiaEvent_fnc_onPlayerSpeakRadio}, player] call TFAR_fnc_addEventHandler;
["actionSpeak", "OnSpeak", {(_this select 1) call AlysiaEvent_fnc_onPlayerSpeak}, player] call TFAR_fnc_addEventHandler;

"gServer_tablet_announces" addPublicVariableEventHandler
{
	if (missionNamespace getVariable ["g_connected", false]) then
	{
		if ("ANNOUNCES" in (missionNamespace getVariable ["g_apps", []])) then
		{
			playSound "tablet_app_announces";
			if ((missionNamespace getVariable ["g_app", ""]) isEqualTo "ANNOUNCES_SHOW") then
			{
				["ANNOUNCES"] spawn AlysiaClient_fnc_tabletApp;
			};
		};
	};
};

"gServer_market_event_next" addPublicVariableEventHandler
{
	{
		missionNamespace setVariable [format["market_sync_%1", (configName _x)], ([(configName _x)] call AlysiaClient_fnc_market_getPrice)];
	} foreach ("isClass(_x >> 'market')" configClasses (missionConfigFile >> "ALYSIA_ITEMS"));
};
