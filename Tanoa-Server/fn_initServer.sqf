/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_timeStamp";
diag_log "-------------------------------------------------------------";
diag_log "-------------------- Starting Server Init -------------------";
diag_log "-------------------------------------------------------------";
_timeStamp = diag_tickTime;

"#lock" call RCON_fnc_sendCommand;
gServer_server_isReady = false;

[] spawn
{
	diag_log " :: [RCON:ALL-KICK] Loop begin ::";
	while {!gServer_server_isReady} do
	{
		{
			for "_i" from 0 to ((playableSlotsNumber _x) - 1) do
			{
				if (serverCommandExecutable (format["#kick %1", _i])) then
				{
					(format["#kick %1", _i]) call RCON_fnc_sendCommand;
				};
			};
		} forEach ([west, east, independent, civilian]);
		sleep 0.5;
	};
	diag_log " :: [RCON:ALL-KICK] Loop end ::";
};

finishMissionInit;

gServer_soonReboot = false;

tf_radio_channel_password = getText(configFile >> "Cfg_Server" >> "TFR_password");
publicVariable "tf_radio_channel_password";

east setFriend [independent, 1];
east setFriend [west, 1];
east setFriend [civilian, 1];
civilian setFriend [independent, 1];
civilian setFriend [east, 1];
civilian setFriend [west, 1];
west setFriend [civilian, 1];
west setFriend [east, 1];
west setFriend [independent, 1];
independent setFriend [east, 1];
independent setFriend [civilian, 1];
independent setFriend [west, 1];

if (!(["tanoa", "SQL", "TEXT2"] call ExtDB3_fnc_init)) exitWith {};

addMissionEventHandler ["HandleDisconnect", {_this call AlysiaServer_fnc_clientDisconnect}];

[] call AlysiaServer_fnc_dynamicMarkers_init;
[] call AlysiaServer_fnc_phoneInit;
[] call AlysiaServer_fnc_laboratories_init;
[] call AlysiaServer_fnc_vehicles_init;
[] call AlysiaServer_fnc_market_init;
[] call AlysiaServer_fnc_house_init;
[] call AlysiaServer_fnc_factionsInit;
[] call AlysiaServer_fnc_buildings_init;
[] call AlysiaServer_fnc_companies_init;
[] call AlysiaServer_fnc_atm_init;
[] call AlysiaServer_fnc_taxes_init;
[] call AlysiaServer_fnc_fuel_init;
[] call AlysiaServer_fnc_time_init;
[] call AlysiaServer_fnc_cleanup_init;

private["_hour", "_min", "_time", "_calc", "_best", "_bestTime"];
_time = call AlysiaServer_fnc_getRealTime;
_hour = _time select 0;
_min = _time select 1;
gServer_rebootHour_txt = "";

{
	_calc = _x - _hour;
	if (_calc > 0) then
	{
		if (isNil "_best") then
		{
			_best = _x;
			_bestTime = _calc;
		} else {
			if ((_calc < _bestTime) && (_x > _hour)) then
			{
				_best = _x;
				_bestTime = _calc;
			};
		};
	};

	gServer_rebootHour_txt = format["%1%2:00 ", gServer_rebootHour_txt, _x];
} forEach getArray(configFile >> "Cfg_Server" >> "rebootHours");
if (isNil "_best") then
{
	{
		if (isNil "_best") then {
			_best = _x;
		} else {
			if (_x < _best) then {
				_best = _x;
			};
		};
	} forEach getArray(configFile >> "Cfg_Server" >> "rebootHours");
	gServer_rebootHour = (((_best + 24) - _hour) * 60) - _min;
} else {
	gServer_rebootHour = ((_best - _hour) * 60) - _min;
};

diag_log format["Prochain redémarrage à %1:00 (~ %2 minutes).", _best, gServer_rebootHour];
diag_log format["Il est %1:%2", _hour, _min];

publicVariable "gServer_rebootHour";
publicVariable "gServer_rebootHour_txt";

/* PBO CHECK */
gServer_mods = [];
{
	_pbo = configName _x;
	if !(_pbo in getArray(configFile >> "Cfg_Server" >> "serverMods")) then {
		gServer_mods pushBack _pbo;
	};
} forEach ("true" configClasses (configFile >> "CfgPatches"));
publicVariable "gServer_mods";

/* Tell clients that the server is ready and is accepting queries */
gServer_server_isReady = true;
publicVariable "gServer_server_isReady";

"#unlock" call RCON_fnc_sendCommand;

diag_log "---------------------------------------------------------------------------------------------------------";
diag_log format["Total Execution Time %1 seconds", (diag_tickTime - _timeStamp)];
diag_log "---------------------------------------------------------------------------------------------------------";

_nextAnnounceTime = (random(10) + 1) * 60;
while {true} do
{
	if ((daytime > 18) || (daytime < 6)) then
	{
		if (timeMultiplier != getNumber(configFile >> "Cfg_Server" >> "TimeMultiplier_night")) then {
			setTimeMultiplier getNumber(configFile >> "Cfg_Server" >> "TimeMultiplier_night");
		};
	} else {
		if (timeMultiplier != getNumber(configFile >> "Cfg_Server" >> "TimeMultiplier_day")) then {
			setTimeMultiplier getNumber(configFile >> "Cfg_Server" >> "TimeMultiplier_day");
		};
	};

	uiSleep 60;

	if (((_hour + 1) isEqualTo _best) && (_min >= 55)) exitWith
	{
		"#lock" call RCON_fnc_sendCommand;
		[] spawn AlysiaServer_fnc_serverSave;
	};

	_min = _min + 1;
	if (_min > 59) then
	{
		_time = call AlysiaServer_fnc_getRealTime;
		_hour = _time select 0;
		_min = _time select 1;
	};

	if (time >= _nextAnnounceTime) then
	{
		_nextAnnounceTime = time + (round(random(10) + 1) * 60);

		[
			([
				"announce_car",
				"announce_dream",
				"announce_hello",
				"announce_join",
				"announce_pnt",
				"announce_smoke",
				"announce_socity",
				"announce_agra",
				"announce_come",
				"announce_gun",
				"announce_parking",
				"announce_pink",
				"announce_protect",
				"announce_rabbit",
				"announce_tank",
				"announce_toilets"
			] call BIS_fnc_selectRandom)
		] remoteExecCall ["AlysiaClient_fnc_border_south_sounds", -2];
	};
};
