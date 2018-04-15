/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (g_adrenaline isEqualTo 0) then
{
	g_adrenaline = getNumber(missionConfigFile >> "ALYSIA_MEDICAL" >> "adrenaline" >> "seringue_amount");
	[] spawn
	{
		while {g_adrenaline > 0} do
		{
			g_adrenaline = g_adrenaline - getNumber(missionConfigFile >> "ALYSIA_MEDICAL" >> "adrenaline" >> "tick_amount");
			uiSleep getNumber(missionConfigFile >> "ALYSIA_MEDICAL" >> "adrenaline" >> "tick_timer");
		};
	};
} else {
	g_adrenaline = g_adrenaline + getNumber(missionConfigFile >> "ALYSIA_MEDICAL" >> "adrenaline" >> "seringue_amount");
};
