/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_player"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _player) exitWith {};

switch (side _player) do
{
	case east:
	{
		gServer_faction_EAST_history = [];
	};
	case west:
	{
		gServer_faction_WEST_history = [];
	};
	case independent:
	{
		gServer_faction_GUER_history = [];
	};
};
