/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[BOURSE] Starting market loop...";

uiSleep(60 * 5);

while {!gServer_soonReboot} do
{
	diag_log "[BOURSE] Market event ...";

	{
		_ressource = configName _x;
		_actualPrice = [_ressource] call AlysiaClient_fnc_market_getPrice;
		_percent = round(random(20) + 10);
		if (random(100) < 45) then
		{
			if (_actualPrice != getNumber(_x >> "market" >> "min")) then
			{
				_newPrice = _actualPrice - (getNumber(_x >> "market" >> "max") * (_percent / 100));
				[_ressource, _newPrice, true] call AlysiaServer_fnc_market_setPrice;
			};
		} else {
			if (_actualPrice != getNumber(_x >> "market" >> "max")) then
			{
				_newPrice = _actualPrice + (getNumber(_x >> "market" >> "max") * (_percent / 100));
				[_ressource, _newPrice, true] call AlysiaServer_fnc_market_setPrice;
			};
		};
	} foreach ("isClass(_x >> 'market')" configClasses (missionConfigFile >> "ALYSIA_ITEMS"));

	gServer_market_event_next = serverTime + (60 * 30);
	publicVariable "gServer_market_event_next";

	uiSleep (60 * 30);
};
