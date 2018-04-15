/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

switch ([_this, 0, sideUnknown, [sideUnknown]] call BIS_fnc_param) do
{
	case west: {gServer_faction_WEST_bank};
	case east: {gServer_faction_EAST_bank};
	case independent: {gServer_faction_GUER_bank};
	case civilian:{gServer_faction_CIV_bank};
	default {0};
};
