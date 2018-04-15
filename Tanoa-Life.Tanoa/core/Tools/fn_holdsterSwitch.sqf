/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if ((vehicle player) isKindOf "Man") then
{
	if (((getPosASLW player) select 2) < 0) then {
		["Vous ne pouvez pas utiliser votre holdster sous l'eau."] call AlysiaClient_fnc_error;
	} else {
		if ((currentWeapon player) isEqualTo "") then
		{
			if (g_curWep_h in (weapons player)) then
			{
				player selectWeapon g_curWep_h;
				g_curWep_h = "";
			};
		} else {
			g_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
		};
	};
} else {
	["Vous ne pouvez pas utiliser votre holdster en véhicule."] call AlysiaClient_fnc_error;
};

true;
