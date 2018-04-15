/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_phone", "_c_channel"];
_phone = call TFAR_fnc_ActiveSwRadio;
_c_channel = (_phone call TFAR_fnc_getSwChannel) + 1;

while {((missionNamespace getVariable "calling") && (call AlysiaClient_fnc_hasPhone))} do
{
	if (([_phone, _c_channel] call TFAR_fnc_GetChannelFrequency) isEqualTo (missionNamespace getVariable "calling_freq")) then
	{
		if (isNull (missionNamespace getVariable "calling_target")) then
		{
			if (player getVariable ["tf_sw_speakers", false]) then {
				[player, "phone_busy", 6] call AlysiaClient_fnc_globalSay3d;
			} else {
				playSound "phone_busy";
			};
		} else {
			if ((player getVariable ["tf_sendingDistanceMultiplicator", 1]) != 20) then {
				player setVariable ["tf_sendingDistanceMultiplicator", 20, true];
			};
			if ((player getVariable ["tf_receivingDistanceMultiplicator", 1]) != 1) then {
				player setVariable ["tf_receivingDistanceMultiplicator", 1, true];
			};
			if ((player getVariable ["tf_terrain_interception_coefficient", 7]) != 5) then {
				player setVariable ["tf_terrain_interception_coefficient", 5, true];
			};
		};

		if (!TF_tangent_sw_pressed) then {
			call TFAR_fnc_onSwTangentPressed;
		};
	} else {
		if (((missionNamespace getVariable "calling_time") % 5) isEqualTo 0) then
		{
			if (player getVariable ["tf_sw_speakers", false]) then {
				[player, "phone_tonalite", 6] call AlysiaClient_fnc_globalSay3d;
			} else {
				playSound "phone_tonalite";
			};

			if (isNull (missionNamespace getVariable "calling_target")) then
			{
				missionNamespace setVariable ["calling_target", ([(missionNamespace getVariable "calling_number")] call AlysiaClient_fnc_phone_number_to_unit)];
				if (!(isNull (missionNamespace getVariable "calling_target"))) then
				{
					[player, missionNamespace getVariable "calling_freq"] remoteExec ["AlysiaClient_fnc_phone_call_receive", (missionNamespace getVariable "calling_target")];
				};
			};
		};
	};

	if (g_app isEqualTo "PHONE_CALLING") then
	{
		[] call AlysiaClient_fnc_APP_phone_calling_update;
	};

	uiSleep 1;
	missionNamespace setVariable ["calling_time", (missionNamespace getVariable "calling_time") + 1];
};

if (!(call AlysiaClient_fnc_hasPhone)) then {
	[true, false] call AlysiaClient_fnc_APP_phone_call_hangup;
};

[] call AlysiaClient_fnc_phone_call_end;
