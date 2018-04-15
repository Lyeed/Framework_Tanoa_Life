/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if ((player getVariable ["tf_voiceVolume", 0]) isEqualTo 0) exitWith
{
	g_speaking = false;

	if (((goggles player) isEqualTo "G_Bandanna_blk") && !g_yielding) then
	{
		[] spawn
		{
			g_yielding = true;
			[player, (["part1", "part2", "part3", "part4"] call BIS_fnc_selectRandom), 25] call AlysiaClient_fnc_globalSay3d;
			uiSleep 5;
			g_yielding = false;
		};
	};

	false;
};

g_speaking = _this;
