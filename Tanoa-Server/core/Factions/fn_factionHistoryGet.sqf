/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_player", "_history"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _player) exitWith {};

_history = switch (side _player) do
{
	case east: {gServer_faction_EAST_history};
	case west: {gServer_faction_WEST_history};
	case independent: {gServer_faction_GUER_history};
};
if (isNil "_history") exitWith {};

[_history] remoteExec ["AlysiaClient_fnc_APP_faction_leader_history", (owner _player), false];
