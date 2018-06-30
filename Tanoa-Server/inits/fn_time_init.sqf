/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_queryResult";

diag_log "[TIME] Setup";

_queryResult = ["SELECT year,month,day,hour,minute FROM serverinfo", 2] call ExtDB3_fnc_async;
if (_queryResult isEqualTo []) then
{
	private "_start";
	_start = getArray(configFile >> "Cfg_Server" >> "starting_time");

	[
		format
		[
			"INSERT INTO serverinfo (year,month,day,hour,minute) VALUES ('%1','%2','%3','%4','%5')",
			_start select 0,
			_start select 1,
			_start select 2,
			_start select 3,
			_start select 4
		], 1
	] call ExtDB3_fnc_async;
	_queryResult = _start;
} else {
	_queryResult = _queryResult select 0;
};

setDate [(_queryResult select 0), (_queryResult select 1), (_queryResult select 2), (_queryResult select 3), (_queryResult select 4)];

gServer_year = _queryResult select 0;
publicVariable "gServer_year";

diag_log format["Date : %1", [] call AlysiaClient_fnc_strDate];

diag_log "[TIME] Ready";
