/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_amount";
_amount = round([_this, 0, 0, [0]] call BIS_fnc_param);

if (_amount < 3) exitWith {};
if (player getVariable ["is_coma", false]) exitWith {};

if (g_bleed isEqualTo 0) then
{
	player setVariable ["is_bleeding", true, true];
	g_bleed = _amount;
	[] spawn
	{
		while {((g_bleed > 0) && (player getVariable ["is_bleeding", false]) && !g_staff_god)} do
		{
			if ((vehicle player) isKindOf "Man") then
			{
				player setBleedingRemaining 2;
			};
			[(g_bleed * -1), objNull, false] call AlysiaClient_fnc_handleBlood;
			[] call AlysiaEvent_fnc_onPlayerFireNear;
			sleep 2;
		};
		g_bleed = 0;
		if (player getVariable ["is_bleeding", false]) then {
			player setVariable ["is_bleeding", false, true];
		};
	};
} else {
	g_bleed = g_bleed + _amount;
};
