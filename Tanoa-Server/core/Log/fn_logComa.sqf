/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_bloodInfo", "_victim", "_direct_killer"];
_victim = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_bloodInfo = [_this, 1, [], [[]]] call BIS_fnc_param;
_direct_killer = [_this, 2, objNull, [objNull]] call BIS_fnc_param;

if (isNull _victim) exitWith {};

"extLOG" callExtension format
[
	"1:SERVER_PLAYER_COMA_LOG:%1 [%2] coma in %3 | %4 | %5",
	_victim getVariable "realname",
	getPlayerUID _victim,
	mapGridPosition _victim,
	if (_bloodInfo isEqualTo []) then {"No players damage info"} else {format["Players damage info %1", _bloodInfo]},
	if (isNull _direct_killer) then {"No direct killer"} else {format["%1 [%2]", _direct_killer getVariable "realname", getPlayerUID _direct_killer]}
];
