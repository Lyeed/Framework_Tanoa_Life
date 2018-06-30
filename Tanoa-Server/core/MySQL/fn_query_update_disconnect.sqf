/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

[
	format
	[
		"UPDATE players SET POS_alive='%1',HEALTH_deseases='%2',STATS_global_played=STATS_global_played+'%3',HEALTH_blood='%4',HEALTH_bleed='%5',HEALTH_hunger='%6',HEALTH_thirst='%7',PHONE_contacts='%8',PHONE_messages='%9',PHONE_forfait='%10',PHONE_blacklist='%11',TABLET_apps='%12',%13_cash='%14',%13_atm='%15',%13_inventory='%16',%13_licenses='%17',DYN_markers='%19',HEALTH_alcool='%20',PHONE_annuaire='%21' WHERE uid='%18'",
		([[_this, 5, false, [false]] call BIS_fnc_param] call AlysiaServer_fnc_bool),
		([[_this, 6, [], [[]]] call BIS_fnc_param] call AlysiaServer_fnc_mresArray),
		([_this, 7, 0, [0]] call BIS_fnc_param),
		([_this, 8, 4000, [0]] call BIS_fnc_param),
		([_this, 9, 0, [0]] call BIS_fnc_param),
		([_this, 10, 100, [0]] call BIS_fnc_param),
		([_this, 11, 100, [0]] call BIS_fnc_param),
		([[_this, 12, [], [[]]] call BIS_fnc_param] call AlysiaServer_fnc_mresArray),
		([[_this, 13, [], [[]]] call BIS_fnc_param] call AlysiaServer_fnc_mresArray),
		([_this, 14, "none", [""]] call BIS_fnc_param),
		([[_this, 15, [], [[]]] call BIS_fnc_param] call AlysiaServer_fnc_mresArray),
		([[_this, 16, [], [[]]] call BIS_fnc_param] call AlysiaServer_fnc_mresArray),
		str([_this, 1, sideUnknown, [civilian]] call BIS_fnc_param),
		([_this, 2, 0, [0]] call BIS_fnc_param),
		([_this, 3, 0, [0]] call BIS_fnc_param),
		([[_this, 4, [], [[]]] call BIS_fnc_param] call AlysiaServer_fnc_mresArray),
		([[_this, 17, [], [[]]] call BIS_fnc_param] call AlysiaServer_fnc_mresArray),
		([_this, 0, "", [""]] call BIS_fnc_param),
		([[_this, 18, [], [[]]] call BIS_fnc_param] call AlysiaServer_fnc_mresArray),
		([_this, 19, 0, [0]] call BIS_fnc_param),
		([[_this, 20, false, [false]] call BIS_fnc_param] call AlysiaServer_fnc_bool)
	], 1
] call ExtDB3_fnc_async;
