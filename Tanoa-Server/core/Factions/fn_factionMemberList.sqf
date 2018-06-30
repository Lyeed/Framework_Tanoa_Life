/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_player", "_list"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _player) exitWith {};

_list = switch (side _player) do
{
	case east: {["SELECT EAST_level, profileName, uid FROM players WHERE EAST_level>'0' ORDER BY EAST_level DESC", 2] call ExtDB3_fnc_async};
	case west: {["SELECT WEST_level, profileName, uid FROM players WHERE WEST_level>'0' ORDER BY WEST_level DESC", 2] call ExtDB3_fnc_async};
	case independent: {["SELECT GUER_level, profileName, uid FROM players WHERE GUER_level>'0' ORDER BY GUER_level DESC", 2] call ExtDB3_fnc_async};
};
if (isNil "_list") exitWith {};

[_list] remoteExec ["AlysiaClient_fnc_APP_faction_leader_officeHandler", (owner _player), false];
