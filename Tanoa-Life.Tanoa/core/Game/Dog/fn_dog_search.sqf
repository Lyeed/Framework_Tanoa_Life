/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target_distance", "_target"];

if (isNull g_dog) exitWith {
	["Impossible de trouver votre chien."] call AlysiaClient_fnc_error;
};

[player, "whistle", 15] call AlysiaClient_fnc_globalSay3d;

uiSleep 2;

_target_distance = 700;
_target = objNull;

{
	if (((_x getVariable ["realname", ""]) != "") && ((side _x) isEqualTo civilian)) then
	{
		_distance = g_dog distance _x;
		if ((_distance < 600) && (_distance < _target_distance)) then
		{
			_target = _x;
			_target_distance = _distance;
		};
	};
} forEach allPlayers;
if (isNull _target) exitWith {
	[g_dog, "dog_one", 80] call AlysiaClient_fnc_globalSay3d;
};

g_dog setVariable ["follow", true, true];
g_dog setVariable ["search", true, true];
g_dog setVariable ["search_target", _target];
