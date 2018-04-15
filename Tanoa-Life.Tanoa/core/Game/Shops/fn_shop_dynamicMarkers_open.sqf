/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (playerSide != civilian) exitWith {};

if (!(createDialog "RscDisplayShopDynMarkers")) exitWith {};

[] call AlysiaClient_fnc_shop_dynamicMarkers_update_list;
