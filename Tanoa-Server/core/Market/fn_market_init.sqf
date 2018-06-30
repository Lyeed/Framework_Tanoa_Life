/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[BOURSE] Setup";

gServer_market_event_next = 60 * 5;
publicVariable "gServer_market_event_next";

{
	private["_ressourceName", "_ressourcePrice", "_query"];
	_ressourceName = configName _x;

	_query = [format["SELECT price FROM ressources WHERE name='%1'", _ressourceName], 2] call ExtDB3_fnc_async;
	if (_query isEqualTo []) then
	{
		diag_log format["[ERROR] Market ressource %1 was not saved into DB. Fixed", _ressourceName];
		[format["INSERT INTO ressources (name,price) VALUES ('%1','%2')", _ressourceName, getNumber(_x >> "market" >> "max")], 1] call ExtDB3_fnc_async;
		_ressourcePrice = getNumber(_x >> "market" >> "max");
	} else {
		_ressourcePrice = (_query select 0) select 0;
	};

	[_ressourceName, _ressourcePrice, true] call AlysiaServer_fnc_market_setPrice;
} foreach ("isClass(_x >> 'market')" configClasses (missionConfigFile >> "ALYSIA_ITEMS"));

[] spawn AlysiaServer_fnc_market_loop;

diag_log "[BOURSE] Ready";
