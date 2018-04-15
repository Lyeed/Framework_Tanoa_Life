/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_player";
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _player) exitWith {};

"extLOG" callExtension format
[
	"1:SERVER_PLAYER_SUICIDE_LOG:%1 [%2] suicide in %3",
	_player getVariable "realname",
	getPlayerUID _player,
	mapGridPosition _player
];
