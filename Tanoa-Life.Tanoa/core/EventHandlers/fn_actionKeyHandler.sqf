/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (g_action_inUse || dialog) exitWith {};

scopeName "main";

_vehicle = vehicle player;
if (_vehicle isKindOf "Man") then
{
	private "_target";

	if (player getVariable ["sit", false]) then
	{
		[] call AlysiaClient_fnc_standUp;
		true breakOut "main";
	};

	{
		if (isPlayer _x) then
		{
			if (_x getVariable ["is_coma", false]) then {
				[_x, true] spawn AlysiaClient_fnc_action_body_drop;
			} else {
				[_x, true] spawn AlysiaClient_fnc_stopescort;
			};
			true breakOut "main";
		} else {
			if (isClass(missionConfigFile >> "ALYSIA_DYN_OBJECTS" >> typeOf(_x))) then
			{
				detach _x;
				true breakOut "main";
			};
		};
	} forEach (attachedObjects player);

	_target = cursorObject;
	if (!(isNull _target)) then
	{
		_type = typeOf(_target);

		if ((player distance _target) < ((((boundingBox _target) select 1) select 0) + 2.5)) then
		{
			if (isPlayer _target) then
			{
				if ((_target isKindOf "Car") || (_target isKindOf "Ship") || (_target isKindOf "Air") || (_target isKindOf "Tank")) then
				{
					if (alive _target) then
					{
						[(vehicle _target)] call AlysiaClient_fnc_interactions_player_to_vehicle;
						true breakOut "main";
					};
				} else {
					if (_target getVariable ["is_coma", false]) then {
						[_target] call AlysiaClient_fnc_interactions_player_to_player_coma;
					} else {
						[_target] call AlysiaClient_fnc_interactions_player_to_player_basics;
					};
					true breakOut "main";
				};
			} else {

				if (
						(alive _target) &&
						(
							(_target isKindOf "Car") ||
							(_target isKindOf "Ship") ||
							(_target isKindOf "Air") ||
							(_target isKindOf "Tank")
						)
					) then {
					[_target] call AlysiaClient_fnc_interactions_player_to_vehicle;
					true breakOut "main";
				};

				if (_type isEqualTo "Skyline_Alysia_Crane_01_F") then
				{
					[_target] call AlysiaClient_fnc_interactions_player_to_skull;
					true breakOut "main";
				};

				if (isClass(missionConfigFile >> "ALYSIA_ATM" >> _type)) then
				{
					[_target] call AlysiaClient_fnc_interactions_player_to_atm;
					true breakOut "main";
				};

				if (isClass(missionConfigFile >> "ALYSIA_STORAGES" >> _type)) then
				{
					[_target, "Trunk", true, true, false, false] spawn AlysiaClient_fnc_virtual_menu_exhange_open;
					true breakOut "main";
				};

				if (_type isEqualTo "Turtle_F") then
				{
					[_target] call AlysiaClient_fnc_catchTurtle;
					true breakOut "main";
				};

				if (isClass(missionConfigFile >> "ALYSIA_FARMING_PLANT_OBJETCS" >> _type)) then
				{
					[_target] spawn AlysiaClient_fnc_plantHarvest;
					true breakOut "main";
				};

				if (count(_target getVariable ["company_info", []]) > 0) then
				{
					[_target] call AlysiaClient_fnc_interactions_player_to_company;
					true breakOut "main";
				};

				if (count(_target getVariable ["laboratory_info", []]) > 0) then
				{
					[_target] call AlysiaClient_fnc_interactions_player_to_laboratory;
					true breakOut "main";
				};

				if ((_type in ["Alsatian_Sand_F", "Alsatian_Black_F", "Alsatian_Sandblack_F"]) && (alive _target)) then
				{
					[_target] call AlysiaClient_fnc_interactions_player_to_dog;
					true breakOut "main";
				};

				if (isClass(missionConfigFile >> "ALYSIA_FUEL_STATION" >> _type)) then
				{
					[_target] call AlysiaClient_fnc_interactions_player_to_station;
					true breakOut "main";
				};

				if (isClass(missionConfigFile >> "ALYSIA_CHAIRS" >> _type)) then
				{
					[_target] call AlysiaClient_fnc_interactions_player_to_chair;
					true breakOut "main";
				};

				if (isClass(missionConfigFile >> "ALYSIA_DYN_OBJECTS" >> _type)) then
				{
					if (_target getVariable ["isPackable", false]) then
					{
						[_target] spawn AlysiaClient_fnc_dynamicObject_packup;
						true breakOut "main";
					};
				};

				if (_type isEqualTo "Land_Suitcase_F") then
				{
					if (_target getVariable ["money_bank", false]) then
					{
						[_target] spawn AlysiaClient_fnc_moneyBag;
						true breakOut "main";
					};
				};

				if (_type isEqualTo "Bank_Bomb") then
				{
					[_target] spawn AlysiaClient_fnc_c4_open;
					true breakOut "main";
				};

				if (_type isEqualTo "Bank_Drill") then
				{
					[_target] call AlysiaClient_fnc_interactions_player_to_drill;
					true breakOut "main";
				};

				if (_type isEqualTo "Skyline_Alysia_Boite_01_F") then
				{
					[_target, "items", true, true, false, false, true] spawn AlysiaClient_fnc_virtual_menu_exhange_open;
					true breakOut "main";
				};
			};
		};

		if (isClass(missionConfigFile >> "ALYSIA_HOUSES" >> _type)) then
		{
			if (((player distance _target) < 10) || (([_target] call AlysiaClient_fnc_nearestDoor) != 0)) then
			{
				[_target] call AlysiaClient_fnc_interactions_player_to_house;
				true breakOut "main";
			};
		};

		if ((player distance _target) < ((((boundingBox _target) select 1) select 0)) + 1.2) then
		{
			if (isClass(missionConfigFile >> "ALYSIA_FARMING_OBJECT" >> _type)) then
			{
				[_target] spawn AlysiaClient_fnc_farm_object;
				true breakOut "main";
			};
		};
	};

	_suit = (nearestObjects [player, ["Skyline_Alysia_Boite_01_F"], 1.5]) select 0;
	if (!(isNil "_suit")) then
	{
		[_suit, "items", true, true, false, false, true] spawn AlysiaClient_fnc_virtual_menu_exhange_open;
		true breakOut "main";
	};

	_skull = (nearestObjects [player, ["Skyline_Alysia_Crane_01_F"], 2]) select 0;
	if (!(isNil "_skull")) then
	{
		[_skull] call AlysiaClient_fnc_interactions_player_to_skull;
		true breakOut "main";
	};

	_plant = (nearestObjects [player, (call g_plants), 3]) select 0;
	if (!(isNil "_plant")) then
	{
		[_plant] spawn AlysiaClient_fnc_plantHarvest;
		true breakOut "main";
	};

	_skull = (nearestObjects [player, ["Skyline_Alysia_Crane_01_F"], 2]) select 0;
	if (!(isNil "_skull")) then
	{
		[_skull] call AlysiaClient_fnc_interactions_player_to_skull;
		true breakOut "main";
	};

	_plant = (nearestObjects [player, (call g_plants), 3]) select 0;
	if (!(isNil "_plant")) then
	{
		[_plant] spawn AlysiaClient_fnc_plantHarvest;
		true breakOut "main";
	};

	{
		if ((markerAlpha (configName _x)) != 1) then
		{
			[format["Vous avez découvert <t color='#74DF00'>%1</t>.", (markerText (configName _x))]] call AlysiaClient_fnc_info;
			[(configName _x)] call AlysiaClient_fnc_dynamicMarkers_reveal;
			true breakOut "main";
		} else {
			if (str(playerSide) in getArray(_x >> "destroy")) then
			{
				[(configName _x)] spawn AlysiaClient_fnc_dynamicMarkers_destroy;
				true breakOut "main";
			};
		};
	} forEach ("((player distance (getMarkerPos (configName _x))) < getNumber(_x >> 'distance'))" configClasses (missionConfigFile >> "ALYSIA_DYN_MARKERS"));

	{
		if (player distance (getMarkerPos (configName _x)) < getNumber(_x >> "area")) then
		{
			[(configName _x)] spawn AlysiaClient_fnc_plantSeed;
			true breakOut "main";
		};
	} forEach ("true" configClasses (missionConfigFile >> "ALYSIA_FARMING_PLANT_MARKERS"));

	{
		_marker = configName _x;
		if (getNumber(_x >> "water") isEqualTo 0) then
		{
			if (player distance (getMarkerPos _marker) < getNumber(_x >> "area")) then
			{
				[_marker] spawn AlysiaClient_fnc_pickGather;
				true breakOut "main";
			};
		} else {
			if (player distance (getMarkerPos _marker) < (getNumber(_x >> "area") + getNumber(_x >> "water_depth"))) then
			{
				[_marker] spawn AlysiaClient_fnc_pickGather;
				true breakOut "main";
			};
		};
	} forEach ("true" configClasses (missionConfigFile >> "ALYSIA_FARMING_GATHER"));

	if (!isNull(g_company)) then
	{
		if (((g_company getVariable "company_info") select 2) isEqualTo "farming") then
		{
			if ((player distance g_company) < 30) then
			{
				[] spawn AlysiaClient_fnc_plantSeed;
				true breakOut "main";
			};
		};
	};
} else {
	if (alive _vehicle) then
	{
		if ((_vehicle isKindOf "Car") || (_vehicle isKindOf "Ship") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Tank")) then
		{
			[_vehicle] call AlysiaClient_fnc_interactions_player_to_vehicle;
			true breakOut "main";
		};
	};
};

false;
