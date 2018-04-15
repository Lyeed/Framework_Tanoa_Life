/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_veh", "_hitpoints"];
_veh = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

_hitpoints = getAllHitPointsDamage _veh;
if (_hitpoints isEqualTo []) then {
	_hitpoints = [[], [], []];
};

_hitpoints;
