/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if ((time - g_action_delay) < 2) exitWith {};

if ((["sifflet"] call AlysiaClient_fnc_itemCount) > 0) then
{
	if ((vehicle player) isEqualTo player) then
	{
		[player, "sifflet", 60] call AlysiaClient_fnc_globalSay3d;
		player setFatigue ((getFatigue player) + 0.05);
		g_action_delay = time;
	} else {
		["Vous devez être à pied pour utiliser le sifflet"] call AlysiaClient_fnc_error;
	};
} else {
	["Vous n'avez pas de sifflet"] call AlysiaClient_fnc_error;
};

true;
