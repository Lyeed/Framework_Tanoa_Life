/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

[] spawn
{
	private["_bp", "_default"];
	scriptName "Alysia_Weight_Loop";
	_default = 24;
	while {true} do
	{
		waitUntil {((backpack player) != "")};
		_bp = backpack player;
		g_maxWeight = _default + round(getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload") / 8);
		waitUntil {((backpack player) != _bp)};
		if ((backpack player) isEqualTo "") then {g_maxWeight = _default};
	};
};

[] spawn
{
	private["_veh", "_fuel_base", "_fuel_current", "_conso"];
	scriptName "Alysia_Vehicle_Loop";

	while {true} do
	{
		waitUntil {((vehicle player) isKindOf "Man")};

		while {(vehicle player) isKindOf "Man"} do
		{
			if ((g_carryWeight > g_maxWeight) || !((attachedObjects player) isEqualTo []) || (player getVariable ["victim_on", false])) then
			{
				if (!(isForcedWalk player)) then
				{
					player forceWalk true;
				};
			} else {
				if (isForcedWalk player) then
				{
					player forceWalk false;
				};
			};

			uiSleep 1;
		};

		player forceWalk false;

		waitUntil {((vehicle player) != player)};

		g_seatbelt = false;
		_veh = vehicle player;

		{
			_unit_1 = _x;
			if (isPlayer _unit_1) then
			{
				private "_handle";
				if (_unit_1 getVariable ["is_coma", false]) then {
					_handle = [_unit_1, false] spawn AlysiaClient_fnc_action_body_drop;
				} else {
					_handle = [_unit_1, false] spawn AlysiaClient_fnc_stopescort;
				};

				waitUntil {scriptDone _handle};
				[_unit_1, _veh] remoteExecCall ["moveInCargo", _unit_1];
			} else {
				_config = missionConfigFile >> "ALYSIA_DYN_OBJECTS" >> typeOf(_unit_1);
				if (isClass(_config)) then
				{
					{
						_unit_2 = _x;
						if ((isPlayer _unit_2) && (_unit_2 getVariable ["is_coma", false])) then
						{
							detach _unit_2;
							[_unit_2, _veh] remoteExecCall ["moveInCargo", _unit_2];
						};
					} forEach (attachedObjects _unit_1);
					if ((_veh getVariable ["trunk_in_use_ID", ""]) isEqualTo "") then
					{
						[true, _veh, "Trunk", getText(_config >> "item"), 1, true] call AlysiaClient_fnc_handleTrunk;
					};

					deleteVehicle _unit_1;
				};
			};
		} forEach (attachedObjects player);

		_fuel_base = getText(missionConfigFile >> "ALYSIA_VEHICLES" >> typeOf(_veh) >> "fuel");
		while {((vehicle player) isEqualTo _veh)} do
		{
			if (((driver _veh) isEqualTo player) && (isEngineOn _veh)) then
			{
				_fuel_current = _veh getVariable ["refuel_type", ""];
				if (_fuel_current isEqualTo "") then {
					_conso = getNumber(missionConfigFile >> "ALYSIA_FUEL" >> _fuel_base >> "conso");
				} else {
					_conso = getNumber(missionConfigFile >> "ALYSIA_FUEL" >> _fuel_current >> "conso");
					if ((_fuel_base != _fuel_current) && (_fuel_current != "bio")) then
					{
						if (!(_fuel_base in ["SP95", "SP98"]) || ((_fuel_base in ["SP95", "SP98"]) && !(_fuel_current in ["SP95", "SP98"]))) then {
							[_veh, "HitEngine", 1] call AlysiaClient_fnc_setHitPointDamage;
						};
					};
				};

				_veh setFuel ((fuel _veh) - (((abs(speed _veh) + 10) / 200000) * _conso));
			};

			if ((cameraView isEqualTo "EXTERNAL") && (getNumber(missionConfigFile >> "ALYSIA_VEHICLES" >> typeOf(_veh) >> "forceFirstPersonView") isEqualTo 1)) then
			{
				player switchCamera "Internal";
			};

			uiSleep 2;
		};

		if (g_seatbelt) then
		{
			playSound "seatbelt_off";
			g_seatbelt = false;
		};
	};
};

[] spawn
{
	private["_totalSession", "_fnc_channel", "_fnc_server", "_salary_time"];

	scriptName "Alysia_Global_Loop";

	_fnc_channel =
	{
		[
			"Vous devez être dans le canal <t color='#FFBF00'>TaskForceRadio</t> pour pouvoir jouer sur le serveur.<br/>" +
			"Vous serez expulsé du jeu dans <t color='#01DF01'>45 secondes</t> si vous n'y retournez pas."
		] call AlysiaClient_fnc_error;
		uiSleep 45;
		if (!((call TFAR_fnc_getTeamSpeakChannelName) in ["TaskForceRadio"])) then
		{
			[] call AlysiaDB_fnc_query_update_disconnect;
			uiSleep 2;
			["Teamspeak", false, true] call BIS_fnc_endMission;
		};
	};

	_fnc_server =
	{
		["Vous n'êtes pas connecté sur le Teamspeak du serveur. Vous allez être expulsé dans 45 secondes."] call AlysiaClient_fnc_error;
		uiSleep 45;
		if (!(["YOUR TEAMSPEAK NAME", call TFAR_fnc_getTeamSpeakServerName] call BIS_fnc_inString)) then
		{
			[] call AlysiaDB_fnc_query_update_disconnect;
			uiSleep 2;
			["Teamspeak", false, true] call BIS_fnc_endMission;
		};
	};

	g_totalSession = 0;
	_salary_time = getNumber(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "salary" >> "timer");
	while {true} do
	{
		uiSleep 60;
		g_totalSession = g_totalSession + 1;

		if ((g_totalSession % 4) isEqualTo 0) then {[] call AlysiaDB_fnc_query_update_usual};
		if ((g_totalSession % 5) isEqualTo 0) then {[(random(6) * -1) + 1] call AlysiaClient_fnc_handleThirst};
		if ((g_totalSession % 6) isEqualTo 0) then {[(random(10) * -1) + 1] call AlysiaClient_fnc_handleHunger};
		if ((g_totalSession % _salary_time) isEqualTo 0) then
		{
			[] call AlysiaClient_fnc_salaryProcess;
	       	g_nextPay = time + (_salary_time * 60);
		};

		if (("(getText(_x >> 'uid') isEqualTo (getPlayerUID player)) && (getNumber(_x >> 'teamspeak') isEqualTo 1)" configClasses (missionConfigFile >> "ALYSIA_STAFF" >> "members")) isEqualTo []) then
		{
			if ((["YOUR TEAMSPEAK NAME", (call TFAR_fnc_getTeamSpeakServerName)] call BIS_fnc_inString) && (call TFAR_fnc_isTeamSpeakPluginEnabled)) then
			{
				if (!((call TFAR_fnc_getTeamSpeakChannelName) isEqualTo "TaskForceRadio")) then {
					[] spawn _fnc_channel;
				};
			} else {
				[] spawn _fnc_server;
			};
		};

		if (rain > 0) then
		{
			if (((vehicle player) isEqualTo player) && (g_alcool isEqualTo 0) && (((uniform player) isEqualTo "")) && (getNumber(missionConfigFile >> "ALYSIA_ITEMS_ARMA" >> (currentWeapon player) >> "protect_rain") isEqualTo 0)) then
			{
				if (random(200) < (1 + (rain * 10))) then
				{
					["rhume"] spawn AlysiaClient_fnc_handleDesease;
				};
			};
		};

		if (count(g_medecine) > 0) then
		{
			private "_del";
			_del = 0;

			{
				_amount = (_x select 1) - 60;
				if (_amount <= 0) then
				{
					g_medecine = g_medecine - [_x];
					_del = _del + 1;
				} else {
					(g_medecine select (_forEachIndex - _del)) set [1, _amount];
				};
			} forEach g_medecine;
		};

		if (count(g_vaccins) > 0) then
		{
			private "_del";
			_del = 0;

			{
				_amount = (_x select 1) - 60;
				if (_amount <= 0) then
				{
					g_vaccins = g_vaccins - [_x];
					_del = _del + 1;
				} else {
					(g_vaccins select (_forEachIndex - _del)) set [1, _amount];
				};
			} forEach g_vaccins;
		};
	};
};

if (count(g_deseases) > 0) then
{
	[] spawn
	{
		{
			[(_x select 0)] spawn AlysiaClient_fnc_handleDesease;
		} forEach g_deseases;
	};
};

true;
