/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_bed";
_bed = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _bed) exitWith {};
if (player getVariable ["bed_awake", false]) exitWith {};
if ((attachedTo player) != _bed) exitWith {};

g_bleed = 0;
player setVariable ["bed_awake", true, true];
while {((player getVariable ["is_coma", false]) && ((attachedTo player) isEqualTo _bed))} do
{
	if (random(100) <= 15) exitWith {player setVariable ["is_coma", false, true]};
	uiSleep 10;
};

