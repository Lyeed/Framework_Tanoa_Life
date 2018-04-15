/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (g_staff_god) exitWith {};

g_combatTime = time;
if (!g_firstCombatActive) then
{
	g_firstCombatActive = true;
	[] spawn
	{
		while {(g_combatTime > (time - 60))} do
		{
			if ((cameraView isEqualTo "EXTERNAL") && ((vehicle player) isKindOf "Man")) then
			{
				player switchCamera "Internal";
			};

			uiSleep 0.2;
		};

		g_firstCombatActive = false;
	};
};
