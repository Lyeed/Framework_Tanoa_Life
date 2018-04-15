/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_timer"];
_type = [_this, 0, true, [true]] call BIS_fnc_param;

if (isNull g_interaction_target) exitWith {};
if (isNull (findDisplay 12000)) exitWith {};
if (g_action_inUse) exitWith {};
if (g_interaction_target getVariable ["bomb_activate", false]) exitWith {};

g_action_inUse = true;

_timer = g_interaction_target getVariable ["bomb_timer", 0];
if (_type) then
{
	if (_timer < 3599) then {
		g_interaction_target setVariable ["bomb_timer", _timer + 1];
	};
} else {
	if (_timer > 0) then {
		g_interaction_target setVariable ["bomb_timer", _timer - 1];
	};
};

[g_interaction_target, "c4_bip", 3] call AlysiaClient_fnc_globalSay3d;

[] call AlysiaClient_fnc_c4_update;

g_action_inUse = false;
