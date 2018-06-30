/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[TIME] Saving ...";

[
	format
	[
		"UPDATE serverinfo SET minute='%1',hour='%2',day='%3',month='%4',year='%5' WHERE id='1'",
		date select 4,
		date select 3,
		date select 2,
		date select 1,
		date select 0
	],
	1
] call ExtDB3_fnc_async;

diag_log "[TIME] Saved";
