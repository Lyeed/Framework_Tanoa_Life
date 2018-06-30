/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_uid"];
_uid = [_this, 0, "", [""]] call BIS_fnc_param;

if (_uid isEqualTo "") exitWith {};

[
	format
	[
		"UPDATE players SET POS_alive='%1',HEALTH_blood='%2',HEALTH_bleed='%3',HEALTH_hunger='%4',HEALTH_thirst='%5',PHONE_forfait='%6',%7_cash='%8',%7_atm='%9',%7_inventory='%10',%7_licenses='%11' WHERE uid='%12'",
		([[_this, 5, false, [false]] call BIS_fnc_param] call AlysiaServer_fnc_bool),
		([_this, 6, 4000, [0]] call BIS_fnc_param),
		([_this, 7, 0, [0]] call BIS_fnc_param),
		([_this, 8, 100, [0]] call BIS_fnc_param),
		([_this, 9, 100, [0]] call BIS_fnc_param),
		([_this, 10, "none", [""]] call BIS_fnc_param),
		str([_this, 1, sideUnknown, [civilian]] call BIS_fnc_param),
		([_this, 2, 0, [0]] call BIS_fnc_param),
		([_this, 3, 0, [0]] call BIS_fnc_param),
		([[_this, 4, [], [[]]] call BIS_fnc_param] call AlysiaServer_fnc_mresArray),
		([[_this, 11, [], [[]]] call BIS_fnc_param] call AlysiaServer_fnc_mresArray),
		_uid
	], 1
] call ExtDB3_fnc_async;

if (player getVariable ["arrested", false]) then
{
	[3] call AlysiaDB_fnc_query_update_partial;
};
