/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[TAXES] Saving...";

{
	[
		format
		[
			"INSERT INTO taxes (variable,value) VALUES ('%1','%2') ON DUPLICATE KEY UPDATE variable='%1',value='%2'",
			(configName _x),
			(call compile (configName _x))
		], 1
	] call ExtDB3_fnc_async;
} forEach ("true" configClasses (missionConfigFile >> "ALYSIA_TAXES"));

diag_log "[TAXES] Saved";
