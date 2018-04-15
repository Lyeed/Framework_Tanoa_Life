/*
	Tanoa-Life RPG
	Code written by Lyeed

	PARAMETERS
	0   : className (String)

	RETURN - Array
	0  : picture (CfgVehicles)
	1  : displayName (CfgVehicles)
	2  : vehicleClass (CfgVehicles)
	3  : maxSpeed (CfgVehicles)
	4  : armor (CfgVehicles)
	5  : transportSoldier (CfgVehicles)
	6  : enginePower (CfgVehicles)
	7  : fuelCapacity (CfgVehicles)
	8  : realname (ALYSIA_VEHICLES)
	9  : buy price (ALYSIA_VEHICLES)
	10 : virtual inventory (ALYSIA_VEHICLES)
	11 : side (ALYSIA_VEHICLES)
	12 : insurance (ALYSIA_VEHICLES)
	13 : licenses (ALYSIA_VEHICLES)
	14 : fuel type (ALYSIA_VEHICLES)
	15 : rank (ALYSIA_VEHICLES)
	16 : colors (ALYSIA_VEHICLES)
	17 : garage price (ALYSIA_VEHICLES_INFO)
	18 : assurance price (ALYSIA_VEHICLES_INFO)
	19 : sell price (ALYSIA_VEHICLES_INFO)
	20 : import price (ALYSIA_VEHICLES_INFO)
	21 : steal price (ALYSIA_VEHICLES_INFO)
	22 : disableOwnerInfos (ALYSIA_VEHICLES)
	23 : disableLockpick (ALYSIA_VEHICLES)
*/
private["_class", "_configFile", "_missionConfigFile_Vehicles", "_missionConfigFile_VehiclesInfo"];
_class = [_this, 0, "", [""]] call BIS_fnc_param;

if (_class isEqualTo "") exitWith {[]};

_configFile = configFile >> "CfgVehicles" >> _class;
if (!isClass(_configFile)) exitWith
{
	diag_log format["ERROR: Vehicle [%1] not defined in CfgVehicles", _class];
	systemChat format["ERROR: Vehicle [%1] not defined in CfgVehicles", _class];
	[]
};

_missionConfigFile_Vehicles = missionConfigFile >> "ALYSIA_VEHICLES" >> _class;
_missionConfigFile_VehiclesInfo = missionConfigFile >> "ALYSIA_VEHICLES_INFO";
if (!isClass(_missionConfigFile_Vehicles)) exitWith
{
	diag_log format["ERROR: Vehicle [%1] not defined in ALYSIA_VEHICLES", _class];
	systemChat format["ERROR: Vehicle [%1] not defined in ALYSIA_VEHICLES", _class];
	[]
};

[
	getText(_configFile >> "picture"),
	getText(_configFile >> "displayName"),
	getText(_configFile >> "vehicleClass"),
	getNumber(_configFile >> "maxSpeed"),
	getNumber(_configFile >> "armor"),
	getNumber(_configFile >> "transportSoldier"),
	getNumber(_configFile >> "enginePower"),
	getNumber(_missionConfigFile_Vehicles >> "fuelCapacity"),
	getText(_missionConfigFile_Vehicles >> "realname"),
	getNumber(_missionConfigFile_Vehicles >> "buyPrice"),
	getNumber(_missionConfigFile_Vehicles >> "inventory"),
	getText(_missionConfigFile_Vehicles >> "side"),
	getNumber(_missionConfigFile_Vehicles >> "insurance"),
	getArray(_missionConfigFile_Vehicles >> "licenses"),
	getText(_missionConfigFile_Vehicles >> "fuel"),
	getNumber(_missionConfigFile_Vehicles >> "rank"),
	getArray(_missionConfigFile_Vehicles >> "colors"),
	round(getNumber(_missionConfigFile_Vehicles >> "buyPrice") * getNumber(_missionConfigFile_VehiclesInfo >> "garage_percentage")),
	round(getNumber(_missionConfigFile_Vehicles >> "buyPrice") * getNumber(_missionConfigFile_VehiclesInfo >> "insurance_percentage")),
	round(getNumber(_missionConfigFile_Vehicles >> "buyPrice") * getNumber(_missionConfigFile_VehiclesInfo >> "sell_percentage")),
	round(getNumber(_missionConfigFile_Vehicles >> "buyPrice") * getNumber(_missionConfigFile_VehiclesInfo >> "transfert_percentage")),
	round(getNumber(_missionConfigFile_Vehicles >> "buyPrice") * getNumber(_missionConfigFile_VehiclesInfo >> "steal_percentage")),
	getNumber(_missionConfigFile_Vehicles >> "disableOwnerInfos"),
	getNumber(_missionConfigFile_Vehicles >> "disableLockpick")
];
