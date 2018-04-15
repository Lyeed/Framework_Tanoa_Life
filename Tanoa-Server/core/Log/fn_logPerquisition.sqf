/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_info";

_info = (_this select 0) getVariable "house_owner";
if (isNil "_info") then {
	_info = (_this select 0) getVariable "company_info";
};

if (isNil "_info") exitWith {};

"extLOG" callExtension format
[
	"1:SERVER_PERQUISITION: %1 [%2] perquisition. Target : %3",
	(_this select 1) getVariable "realname",
	getPlayerUID (_this select 1),
	_info
];
