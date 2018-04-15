/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

switch ([_this, 0, "", [""]] call BIS_fnc_param) do
{
	case "CIV": {civilian};
	case "EAST": {east};
	case "WEST": {west};
	case "GUER": {independent};
	default {sideUnknown};
};
