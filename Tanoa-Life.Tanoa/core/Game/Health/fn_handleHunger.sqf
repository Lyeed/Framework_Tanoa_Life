/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_value"];
_value = round([_this, 0, 0, [0]] call BIS_fnc_param);

if (_value isEqualTo 0) exitWith {};
if (g_staff_god) exitWith {};

g_hunger = g_hunger + _value;
if (g_hunger > 100) then
{
	player setFatigue 1;
	g_hunger = 100;
} else {
	if (g_hunger <= 0) then
	{
		["Vous mourrez de faim"] call AlysiaClient_fnc_info;
		g_hunger = 0;
		[] spawn
		{
			while {(g_hunger <= 0)} do
			{
				[-40] call AlysiaClient_fnc_handleBlood;
				player setFatigue 1;
				sleep 4;
			};
		};
	} else {
		switch (true) do
		{
			case (g_hunger > 20 && g_hunger <= 30):
			{
				["Vous avez très faim"] call AlysiaClient_fnc_info;
				[player, "hunger_1", 7] call AlysiaClient_fnc_globalSay3d;
			};
			case (g_hunger > 10 && g_hunger <= 20):
			{
				["Vous êtes affamé"] call AlysiaClient_fnc_info;
				[player, "hunger_1", 7] call AlysiaClient_fnc_globalSay3d;
			};
			case (g_hunger > 0 && g_hunger <= 10):
			{
				["Vous êtes sur le point de mourir de faim"] call AlysiaClient_fnc_info;
				[player, "hunger_1", 7] call AlysiaClient_fnc_globalSay3d;
			};
		};
	};
};
