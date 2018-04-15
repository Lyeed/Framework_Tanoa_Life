/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_veh", "_part", "_dmg"];
_veh = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_part = [_this, 1, "", [""]] call BIS_fnc_param;
_dmg = [_this, 2, 0, [0]] call BIS_fnc_param;

if ((isNull _veh) || (_part isEqualTo "")) exitWith {};
if ((_veh getHitPointDamage _part) isEqualTo _dmg) exitWith {};

if (local _veh) then {
	_veh setHitPointDamage [_part, _dmg];
} else {
	[_veh, [_part, _dmg]] remoteExecCall ["setHitPointDamage", _veh];
};
