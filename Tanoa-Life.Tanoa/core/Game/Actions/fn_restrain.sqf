/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (((player getVariable ["surrender", false]) || ((animationState player) == "incapacitated")) && !(player getVariable ["restrained", false])) then
{
	[player, "handcuffs", 10] call AlysiaClient_fnc_globalSay3d;
	player setVariable ["restrained", true, true];
	if (player getVariable ["restrained_down", false]) then {
		player setVariable ["restrained_down", false, true];
	};
	if (player getVariable ["surrender", false]) then {
		player setVariable ["surrender", false, true];
	};

	while {(player getVariable ["restrained", false])} do
	{
		if ((vehicle player) isKindOf "Man") then
		{
				if (player getVariable ["restrained_down", false]) then
				{
					if ((animationState player) != "Acts_AidlPsitMstpSsurWnonDnon_loop") then
					{
						[player, ""] remoteExecCall ["switchMove", -2];
						player playMove "Acts_AidlPsitMstpSsurWnonDnon_loop";
						waitUntil {(!(player getVariable ["restrained", false]) || ((animationState player) == "Acts_AidlPsitMstpSsurWnonDnon_loop"))};
					};
				} else {
					if ((animationState player) != "unaercposlechvelitele4") then
					{
						[player, "UnaErcPoslechVelitele4"] remoteExecCall ["switchMove", -2];
						player playMove "UnaErcPoslechVelitele4";
						waitUntil {(!(player getVariable ["restrained", false]) || ((animationState player) == "UnaErcPoslechVelitele4"))};
					};
				};
		} else {
			if (((driver (vehicle player)) isEqualTo player)) then
			{
				player action ["eject", (vehicle player)];
			};
		};

		if (cameraView isEqualTo "EXTERNAL") then {
			player switchCamera "Internal";
		};

		uiSleep 0.3;
	};

	[player, "cuffout", 10] call AlysiaClient_fnc_globalSay3d;
	if (player getVariable ["restrained_down", false]) then
	{
		player playMove "Acts_AidlPsitMstpSsurWnonDnon_out";
		player setVariable ["restrained_down", false, true];
	} else {
		[player, "AMOVPERCMSTPSNONWNONDNON_EASEOUT"] remoteExecCall ["switchMove", -2];
		player playMove "AMOVPERCMSTPSNONWNONDNON_EASEOUT";
	};
};
