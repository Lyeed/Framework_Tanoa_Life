/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_player", "_illegal_money", "_dollars_amount", "_type"];
_player =  [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_illegal_money =  [_this, 1, 0, [0]] call BIS_fnc_param;
_dollars_amount =  [_this, 2, 0, [0]] call BIS_fnc_param;
_type = [_this, 3, "", [""]] call BIS_fnc_param;

"extLOG" callExtension format
[
	"1:SERVER_LAUNDER_LOG:Player %1 [%2] launder %3$ and received %4$ (type : %5)",
	_player getVariable "realname",
	getPlayerUID _player,
	[_illegal_money] call AlysiaClient_fnc_numberText,
	[_dollars_amount] call AlysiaClient_fnc_numberText,
	_type
];
