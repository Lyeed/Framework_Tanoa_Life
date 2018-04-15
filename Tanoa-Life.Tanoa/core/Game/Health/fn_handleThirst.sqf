/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_value"];
_value = round([_this, 0, 0, [0]] call BIS_fnc_param);

if (_value isEqualTo 0) exitWith {};
if (g_staff_god) exitWith {};

g_thirst = g_thirst + _value;
if (g_thirst > 100) then {
	g_thirst = 100;
} else {
	if (g_thirst <= 0) then
	{
		["Vous mourrez de soif"] call AlysiaClient_fnc_info;
		g_thirst = 0;
		[] spawn
		{
			while {(g_thirst <= 0)} do
			{
				[-40] call AlysiaClient_fnc_handleBlood;
				player setFatigue 1;
				sleep 4;
			};
		};
	} else {
		switch (true) do
		{
			case (g_thirst > 20 && g_thirst <= 30):
			{
				["Vous avez très soif"] call AlysiaClient_fnc_info;
				[player, "thirst_1", 7] call AlysiaClient_fnc_globalSay3d;
			};
			case (g_thirst > 10 && g_thirst <= 20):
			{
				["Vous êtes assoiffé"] call AlysiaClient_fnc_info;
				[player, "thirst_1", 7] call AlysiaClient_fnc_globalSay3d;
			};
			case (g_thirst > 0 && g_thirst <= 10):
			{
				["Vous êtes sur le point de mourir de déshydratation"] call AlysiaClient_fnc_info;
				[player, "thirst_1", 7] call AlysiaClient_fnc_globalSay3d;
			};
		};
	};
};
