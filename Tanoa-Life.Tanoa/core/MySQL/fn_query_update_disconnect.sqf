/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (missionNamespace getVariable ["g_connected", false]) then
{
	private["_msgs", "_allow"];

	_msgs = missionNamespace getVariable ["g_phone_messages", []];
	_allow = getText(missionConfigFile >> "ALYSIA_PHONE" >> "SMS" >> "characters_allowed");
	{
		if (([(_x select 3), _allow] call AlysiaClient_fnc_TextAllowed) != "") then {
			_msgs = _msgs - [_x];
		};
	} forEach _msgs;

	[
		(getPlayerUID player),
		playerSide,
		missionNamespace getVariable ["g_cash", 0],
		missionNamespace getVariable ["g_atm", 0],
		([] call AlysiaClient_fnc_getInv),
		missionNamespace getVariable ["g_is_alive", false],
		[g_deseases, g_medecine, g_vaccins],
		g_totalSession,
		missionNamespace getVariable ["g_blood", 4000],
		missionNamespace getVariable ["g_bleed", 0],
		missionNamespace getVariable ["g_hunger", 100],
		missionNamespace getVariable ["g_thirst", 100],
		missionNamespace getVariable ["g_phone_contacts", []],
		_msgs,
		missionNamespace getVariable ["g_phone_forfait", "none"],
		missionNamespace getVariable ["g_phone_blacklist", []],
		missionNamespace getVariable ["g_apps", []],
		([] call AlysiaClient_fnc_getLicenses),
		g_dynamic_markers,
		g_alcool,
		g_phone_annuaire
	] remoteExec ["AlysiaServer_fnc_query_update_disconnect", 2];
	[false] call AlysiaClient_fnc_temporyInventory_reset;
	saveProfileNamespace;
	if (!isNull(g_dog)) then {
		deleteVehicle g_dog;
	};
};
