/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_trunk", "_find", "_target"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (isNull g_dog) exitWith {
	["Impossible de trouver votre chien."] call AlysiaClient_fnc_error;
};

if ((speed _target) > 0) exitWith {
	["Le véhicule doit être à l'arrêt."] call AlysiaClient_fnc_error;
};

[player, "whistle", 15] call AlysiaClient_fnc_globalSay3d;
g_dog setVariable ["follow", true, true];
g_dog setVariable ["search", true, true];
g_dog setVariable ["search_target", _target];

waitUntil {!(isNull g_dog) || !(alive g_dog) || ((g_dog distance _target) < 4)};

if ((isNull g_dog) || !(alive g_dog)) exitWith {};

uiSleep (random(5) + 1);

_trunk = _target getVariable ["trunk", []];

_find = false;
{
	if ((([_trunk, _x] call AlysiaClient_fnc_itemTrunk) > 0) && random(100) > 15) exitWith {_find = true};
} forEach ([
	"soufre",
	"cocaine",
	"cocainep",
	"cocainepc",
	"heroin",
	"heroinp",
	"hsoufre",
	"methp",
	"cannabis",
	"marijuana",
	"sandwich"
]);

if (_find) then {
	[g_dog, "dog_two", 100] call AlysiaClient_fnc_globalSay3d;
} else {
	[g_dog, "dog_one", 100] call AlysiaClient_fnc_globalSay3d;
};

g_dog setVariable ["follow", false, true];
g_dog setVariable ["search", false, true];
g_dog setVariable ["search_target", objNull];
