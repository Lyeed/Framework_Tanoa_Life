/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[TAXES] Setup";

{
	_config = missionConfigFile >> "ALYSIA_TAXES" >> (_x select 0);
	if (isClass(_config)) then
	{
		[(_x select 0), (_x select 1)] call CBA_fnc_publicVariable;
		diag_log format["Loading taxe [%1] : %2%3", getText(_config >> "name"), (_x select 1) * 100, "%"];
	} else {
		diag_log format["[ERROR] Taxe [%1] is not defined in ALYSIA_TAXES", (_x select 0)];
	};
} forEach (["SELECT variable,value FROM taxes", 2] call ExtDB3_fnc_async);

diag_log "[TAXES] Ready";
