/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

[] call AlysiaClient_fnc_skull_create;

[] call AlysiaClient_fnc_stripDownPlayer;

hideBody player;

if ((player getVariable ["tf_globalVolume", 0]) > 0) then {player setVariable ["tf_globalVolume", 0]};
if ((player getVariable ["tf_voiceVolume", 0]) > 0) then {player setVariable ["tf_voiceVolume", 0, true]};

{
	if ([configName _x] call AlysiaClient_fnc_hasLicense) then
	{
		missionNamespace setVariable [format["license_%1", (configName _x)], false];
	};
} forEach ("getNumber(_x >> 'factions' >> str(playerSide) >> 'lostOnDeath') isEqualTo 1" configClasses (missionConfigFile >> "ALYSIA_LICENSES"));

("deathLayer" call BIS_fnc_rscLayer) cutText ["Vous êtes en soin intensif", "BLACK FADED", 999999, true];

detach player;

with missionNamespace do
{
	g_is_alive = false;
	g_cash = 0;
	g_blood = 50;
	g_bleed = 0;
	g_alcool = 0;
	g_adrenaline = 0;
	g_morphine = 0;
	g_action_inUse = false;
	g_killer = ObjNull;
};

[] call AlysiaDB_fnc_query_update_usual;
