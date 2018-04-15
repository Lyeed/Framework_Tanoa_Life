/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_player", "_from", "_money"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_from = [_this, 1, objNull, [objNull]] call BIS_fnc_param;
_money = [_this, 2, 0, [0]] call BIS_fnc_param;
_inventory = [_this, 3, [], [[]]] call BIS_fnc_param;

if ((isNull _player) || (isNull _from)) exitWith {};

"extLOG" callExtension format
[
	"1:SERVER_PLAYER_TRADE_LOG:%1 [%2] received %3$ and %4 from %5 [%6]",
	_player getVariable "realname",
	getPlayerUID _player,
	[_money] call AlysiaClient_fnc_numberText,
	_inventory,
	_from getVariable "realname",
	getPlayerUID _from
];
