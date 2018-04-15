/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (g_morphine isEqualTo 0) then
{
	g_morphine = getNumber(missionConfigFile >> "ALYSIA_MEDICAL" >> "morphine" >> "seringue_amount");
	[] spawn
	{
		while {g_morphine > 0} do
		{
			g_morphine = g_morphine - getNumber(missionConfigFile >> "ALYSIA_MEDICAL" >> "morphine" >> "tick_amount");
			sleep getNumber(missionConfigFile >> "ALYSIA_MEDICAL" >> "morphine" >> "tick_timer");
		};
	};
} else {
	g_morphine = g_morphine + getNumber(missionConfigFile >> "ALYSIA_MEDICAL" >> "morphine" >> "seringue_amount");
};
