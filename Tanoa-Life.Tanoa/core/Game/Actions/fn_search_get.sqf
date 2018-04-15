/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_inv_arma", "_from"];
_from = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _from) exitWith {};

_inv_arma = [];

if ((primaryWeapon player) != "") then {_inv_arma pushBack [(primaryWeapon player), 1]};
if ((secondaryWeapon player) != "") then {_inv_arma pushBack [(secondaryWeapon player), 1]};
if ((handgunWeapon player) != "") then {_inv_arma pushBack [(handgunWeapon player), 1]};
if ((uniform player) != "") then {_inv_arma pushBack [(uniform player), 0]};
if ((vest player) != "") then {_inv_arma pushBack [(vest player), 0]};
if ((backpack player) != "") then {_inv_arma pushBack [(backpack player), 0]};
if ((goggles player) != "") then {_inv_arma pushBack [(goggles player), 1]};
if ((headgear player) != "") then {_inv_arma pushBack [(headgear player), 1]};

{
	if (_x != "") then {_inv_arma pushBack [_x, 1]};
} forEach ((primaryWeaponItems player) + (assignedItems player) + (uniformItems player) + (vestItems player) + (backpackItems player));

[([] call AlysiaClient_fnc_getInv), _inv_arma, g_cash] remoteExec ["AlysiaClient_fnc_search_open", _from];
