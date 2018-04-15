/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

"extLOG" callExtension format
[
	"1:SERVER_HOUSE_SELL: %1 [%2] sold his building | Target : %3 | Classname : %4 | position : %5",
	(_this select 1) getVariable "realname",
	getPlayerUID (_this select 1),
	(_this select 0) getVariable "house_owner",
	typeOf(_this select 0),
	mapGridPosition (_this select 0)
];
