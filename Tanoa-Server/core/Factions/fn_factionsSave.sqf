/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[FACTION] Saving";

[
	format
	[
		"UPDATE factions SET bank='%1',history='%2' WHERE name='GUER'",
		gServer_faction_GUER_bank,
		[gServer_faction_GUER_history] call AlysiaServer_fnc_mresArray
	], 1
] call ExtDB3_fnc_async;
diag_log format["Saving faction GUER - money : %1", [gServer_faction_GUER_bank] call AlysiaClient_fnc_numberText];
diag_log format["Math : %1", ([gServer_faction_GUER_bank - gServer_faction_GUER_bank_HISTORY] call AlysiaClient_fnc_numberText)];

[
	format
	[
		"UPDATE factions SET bank='%1',history='%2' WHERE name='EAST'",
		gServer_faction_EAST_bank,
		[gServer_faction_EAST_history] call AlysiaServer_fnc_mresArray
	], 1
] call ExtDB3_fnc_async;
diag_log format["Saving faction EAST - money : %1", [gServer_faction_EAST_bank] call AlysiaClient_fnc_numberText];
diag_log format["Math : %1", ([gServer_faction_EAST_bank - gServer_faction_EAST_bank_HISTORY] call AlysiaClient_fnc_numberText)];

[
	format
	[
		"UPDATE factions SET bank='%1',history='%2' WHERE name='WEST'",
		gServer_faction_WEST_bank,
		[gServer_faction_WEST_history] call AlysiaServer_fnc_mresArray
	], 1
] call ExtDB3_fnc_async;
diag_log format["Saving faction WEST - money : %1", [gServer_faction_WEST_bank] call AlysiaClient_fnc_numberText];
diag_log format["Math : %1", ([gServer_faction_WEST_bank - gServer_faction_WEST_bank_HISTORY] call AlysiaClient_fnc_numberText)];


// [
// 	format
// 	[
// 		"UPDATE factions SET bank='%1',history='%2' WHERE name='CIV'",
// 		gServer_faction_CIV_bank,
// 		[gServer_faction_CIV_history] call AlysiaServer_fnc_mresArray
// 	], 1
// ] call ExtDB3_fnc_async;
// diag_log format["Saving faction CIVILIAN - money : %1", [gServer_faction_CIV_bank] call AlysiaClient_fnc_numberText];
// diag_log format["Math : %1", ([gServer_faction_CIV_bank - gServer_faction_CIV_bank_HISTORY] call AlysiaClient_fnc_numberText)];

diag_log "[FACTION] Saved";
