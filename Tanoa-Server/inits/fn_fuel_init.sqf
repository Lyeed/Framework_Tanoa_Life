/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_classes";

diag_log "[FUEL STATIONS] Loading ...";

_classes = [];

{
	_classes pushBack (configName _x);
} forEach ("true" configClasses (missionConfigFile >> "ALYSIA_FUEL_STATION"));

gServer_fuelStations = [];

{
	_x setFuelCargo 0;
	_x enableSimulationGlobal false;
	gServer_fuelStations pushBack _x;
} forEach (nearestObjects [[8083.2,8099.16,0.00122833], _classes, 50000]);

{
	_fuel = nearestObject [[(_x select 1), (_x select 2), (_x select 3)], (_x select 0)];
	if (!(isNull _fuel)) then
	{
		_config = missionConfigFile >> "ALYSIA_FUEL_STATION" >> typeOf(_fuel);
		if (isClass _config) then
		{
			if (isClass(_config >> "stock" >> "Diesel")) then
			{
				if ((_x select 4) >= getNumber(_config >> "stock" >> "Diesel" >> "max")) then {
					_fuel setVariable ["Diesel", getNumber(_config >> "stock" >> "Diesel" >> "max"), true];
				} else {
					_fuel setVariable ["Diesel", (_x select 4), true];
				};
			};
			if (isClass(_config >> "stock" >> "SP95")) then
			{
				if ((_x select 5) >= getNumber(_config >> "stock" >> "SP95" >> "max")) then {
					_fuel setVariable ["SP95", getNumber(_config >> "stock" >> "SP95" >> "max"), true];
				} else {
					_fuel setVariable ["SP95", (_x select 5), true];
				};
			};
			if (isClass(_config >> "stock" >> "SP98")) then
			{
				if ((_x select 6) >= getNumber(_config >> "stock" >> "SP98" >> "max")) then {
					_fuel setVariable ["SP98", getNumber(_config >> "stock" >> "SP98" >> "max"), true];
				} else {
					_fuel setVariable ["SP98", (_x select 6), true];
				};
			};
			if (isClass(_config >> "stock" >> "Kerosene")) then
			{
				if ((_x select 7) >= getNumber(_config >> "stock" >> "Kerosene" >> "max")) then {
					_fuel setVariable ["Kerosene", getNumber(_config >> "stock" >> "Kerosene" >> "max"), true];
				} else {
					_fuel setVariable ["Kerosene", (_x select 7), true];
				};
			};
			if (isClass(_config >> "stock" >> "GPL")) then
			{
				if ((_x select 8) >= getNumber(_config >> "stock" >> "GPL" >> "max")) then {
					_fuel setVariable ["GPL", getNumber(_config >> "stock" >> "GPL" >> "max"), true];
				} else {
					_fuel setVariable ["GPL", (_x select 8), true];
				};
			};
			if (isClass(_config >> "stock" >> "Bio")) then
			{
				if ((_x select 9) >= getNumber(_config >> "stock" >> "Bio" >> "max")) then {
					_fuel setVariable ["Bio", getNumber(_config >> "stock" >> "Bio" >> "max"), true];
				} else {
					_fuel setVariable ["Bio", (_x select 9), true];
				};
			};
		};
	};
} forEach (["SELECT type,POS_X,POS_Y,POS_Z,fuel_Diesel,fuel_SP95,fuel_SP98,fuel_Kerosene,fuel_GPL,fuel_BIO FROM land_fuels", 2] call ExtDB3_fnc_async);
/*
	0 - type
	1 - POS_X
	2 - POS_Y
	3 - POS_Z
	4 - fuel_Diesel
	5 - fuel_SP95
	6 - fuel_SP98
	7 - fuel_Kerozene
	8 - fuel_GPL
	9 - fuel_BIO
*/

diag_log "[FUEL STATIONS] Fuel Stations Ready";
