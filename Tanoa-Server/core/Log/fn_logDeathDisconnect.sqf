/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_unit", "_uid"];
_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_uid = [_this, 1, "", [""]] call BIS_fnc_param;

if (gServer_soonReboot || (isNull _unit)) exitWith {};

"extLOG" callExtension format
[
	"1:SERVER_PLAYER_DEATH_DISCONNECT_LOG:%1 [%2] disconnect in %3 during coma | PrimaryWeapon [%4] | HandgunWeapon [%5]",
	_unit getVariable "realname",
	_uid,
	mapGridPosition _unit,
	if ((primaryWeapon _unit) isEqualTo "") then {"None"} else {getText(configFile >> "CfgWeapons" >> (primaryWeapon _unit) >> "displayName")},
	if ((handgunWeapon _unit) isEqualTo "") then {"None"} else {getText(configFile >> "CfgWeapons" >> (handgunWeapon _unit) >> "displayName")}
];
