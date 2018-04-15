/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_magazines";

if (((uniform player) isEqualTo "") && ((vest player) isEqualTo "")) exitWith {
	["Vous n'avez pas de tenue/gilet à corriger."] call AlysiaClient_fnc_error;
};

[7829, false] call AlysiaClient_fnc_tabletShow;

uiSleep(random(1) + 0.1);

if ((time - g_action_delay) < 2) exitWith {
	["Veuillez ralentir dans vos actions."] call AlysiaClient_fnc_error;
};
g_action_delay = time;

_magazines = magazinesAmmoFull player;

if ((uniform player) != "") then
{
	_items = uniformItems player;
	_uniform = uniform player;

	removeUniform player;
	waitUntil {((uniform player) isEqualTo "")};
	player forceAddUniform _uniform;

	{
        if (!isClass(configFile >> "CfgMagazines" >> _x)) then {player addItemToUniform _x};
	} forEach _items;
};

if ((vest player) != "") then
{
	_items = vestItems player;
	_vest = vest player;

	removeVest player;
	waitUntil {((vest player) isEqualTo "")};
	player addVest _vest;

	{
		if (!isClass(configFile >> "CfgMagazines" >> _x)) then {player addItemToVest _x};
	} forEach _items;
};

{
    if ((_x select 4) in ["Uniform", "Vest"]) then
    {
        player addMagazine [(_x select 0), (_x select 1)];
    };
} forEach _magazines;
