/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_skull", "_data", "_pos"];

_pos = getPosATL player;
if (count (nearestObjects [_pos, ["Car", "Air"], 5]) > 0) then {
	_pos = [_pos, 10] call CBA_fnc_randPos;
};

_skull = createVehicle ["Skyline_Alysia_Crane_01_F", [0,0,0], [], 0, "CAN_COLLIDE"];
_skull setPosATL _pos;
_skull setDir random(360);

_data = [];

if (g_cash > 0) then {
	_data pushBack ["money", g_cash];
};

{
	_data pushBack ["virtual", _x];
} forEach ([] call AlysiaClient_fnc_getInv);

{
	if (_x != "") then {_data pushBack ["arma", _x]};
} forEach (
	(primaryWeaponItems player) +
	(assignedItems player) +
	(uniformItems player) +
	(vestItems player) +
	(backpackItems player) +
	[
		(primaryWeapon player),
		(secondaryWeapon player),
		(handgunWeapon player),
		(uniform player),
		(vest player),
		(backpack player),
		(goggles player),
		(headgear player),
		(binocular player)
	]
);

_skull setVariable ["inv", _data, true];

_skull setVariable ["info",
	[
		[] call AlysiaClient_fnc_strDate,
		[] call AlysiaClient_fnc_strTime,
		(getPlayerUID player),
		g_nationality,
		g_sexe,
		(getPlayerUID g_killer)
	], true
];

_skull;
