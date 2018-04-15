/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_from", "_to", "_amount"];
_from = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_to = [_this, 1, objNull, [objNull]] call BIS_fnc_param;
_amount = [_this, 2, 0, [0]] call BIS_fnc_param;

if ((isNull _from) || (isNull _to)) exitWith {};

"extLOG" callExtension format
[
	"1:SERVER_REFUND_LOG:%1 [%2] refund %3$ to %4 [%5]",
	_from getVariable "realname",
	getPlayerUID _from,
	[_amount] call AlysiaClient_fnc_numberText,
	_to getVariable "realname",
	getPlayerUID _to
];
