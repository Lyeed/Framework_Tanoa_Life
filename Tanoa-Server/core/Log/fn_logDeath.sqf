/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_killer", "_victim"];
_killer = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_victim = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if ((isNull _killer) || (isNull _victim)) exitWith {};

"extLOG" callExtension format
[
	"1:SERVER_PLAYER_DEATH_LOG:%1 [%2] killed %3 [%4] in %5",
	_killer getVariable ["realname", (name _killer)],
	getPlayerUID _killer,
	_victim getVariable ["realname", (name _victim)],
	getPlayerUID _victim,
	mapGridPosition _victim
];
