/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_phone", "_c_channel"];

_phone = call TFAR_fnc_ActiveSwRadio;
_c_channel = (_phone call TFAR_fnc_getSwChannel) + 1;
if (([_phone, _c_channel] call TFAR_fnc_GetChannelFrequency) isEqualTo (missionNamespace getVariable "calling_freq")) then
{
	call TFAR_fnc_onSwTangentReleased;
	[_phone, _c_channel, (missionNamespace getVariable "calling_freq_old")] call TFAR_fnc_SetChannelFrequency;
};

if ((player getVariable ["tf_sendingDistanceMultiplicator", 1]) != 1) then {
	player setVariable ["tf_sendingDistanceMultiplicator", 1, true];
};
if ((player getVariable ["tf_receivingDistanceMultiplicator", 1]) != 1) then {
	player setVariable ["tf_receivingDistanceMultiplicator", 1, true];
};
if ((player getVariable ["tf_terrain_interception_coefficient", 7]) != 7) then {
	player setVariable ["tf_terrain_interception_coefficient", 7, true];
};

missionNamespace setVariable ["calling", false];
missionNamespace setVariable ["calling_target", objNull];
missionNamespace setVariable ["calling_freq_old", ""];
missionNamespace setVariable ["calling_freq", ""];
missionNamespace setVariable ["calling_time", 0];
missionNamespace setVariable ["calling_number", ""];
missionNamespace setVariable ["calling_answer", nil];

if (g_app isEqualTo "PHONE_CALLING") then {
	["PHONE_CALL"] spawn AlysiaClient_fnc_tabletApp;
};
