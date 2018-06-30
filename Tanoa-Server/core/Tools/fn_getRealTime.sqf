/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
(["SELECT HOUR(CURTIME()), MINUTE(CURTIME()), MONTH(CURDATE()), YEAR(CURDATE()), DAYOFMONTH(CURDATE())", 2] call ExtDB3_fnc_async) select 0;
/*	0 : Month
	1 : Minute
	2 : Month
	3 : Year
	4 : Day
*/
