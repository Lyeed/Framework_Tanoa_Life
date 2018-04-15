/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_ret";

if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};
if (player getVariable ["surrender", false]) exitWith {
	["Vous ne pouvez pas effectuer une animation alors que vous avez les mains sur la tête."] call AlysiaClient_fnc_error;
};
if (player getVariable ["restrained", false]) exitWith {
	["Vous ne pouvez pas effectuer une animation alors que vous êtes menotté."] call AlysiaClient_fnc_error;
};

_ret = false;
if (player getVariable ["victim_on", false]) then
{
	if ((vehicle player) isKindOf "Man") then
	{
		[player, ""] remoteExecCall ["switchMove", -2];
		player setVariable ["victim_on", false];
		_ret = true;
	};
} else {
	if ((vehicle player) isKindOf "Man") then
	{
		[player, "ApanPercMrunSnonWnonDf"] remoteExecCall ["switchMove", -2];
		player setVariable ["victim_on", true];
		_ret = true;
		[] spawn
		{
			while {player getVariable ["victim_on", true]} do
			{
				if (surfaceIsWater (getPos player)) exitWith
				{
					[player, ""] remoteExecCall ["switchMove", -2];
					player setVariable ["victim_on", false];
				};

				uiSleep 0.5;
			};
		};
	};
};

_ret;
