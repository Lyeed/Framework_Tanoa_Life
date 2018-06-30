class CfgFunctions
{

	class ServerDB
	{
		tag = "EXTDB3";
		class Functions
		{
			file = "Tanoa-Server\extDB3";
			class async {};
			class init {};
		};
	};

	class RCON
	{
		tag = "RCON";
		class Functions
		{
			file = "Tanoa-Server\RCON";
			class sendCommand {};
		};
	};

	class Server
	{
		tag = "AlysiaServer";

		class global
		{
			file = "Tanoa-Server";
			class serverSave {};
			class initServer {};
			class initHC {};
		};

		class inits
		{
			file = "Tanoa-Server\inits";
			class taxes_init {};
			class atm_init {};
			class fuel_init {};
			class buildings_init {};
			class vehicles_init {};
			class time_init {};
		};
		class saves
		{
			file = "Tanoa-Server\saves";
			class atm_save {};
			class fuel_save {};
			class taxes_save {};
			class vehicles_save {};
			class time_save {};
		};

		class Cleanups
		{
			file = "Tanoa-Server\core\Cleanups";
			class cleanup_deadVehicles {};
			class cleanup_things {};
			class cleanup_vehicles {};
			class cleanup_init {};
			class cleanup_houseStorages {};
			class cleanup_companyStorages {};
		};

		class C4
		{
			file = "Tanoa-Server\core\c4";
			class c4_bomb {};
		};

		class Fireworks
		{
			file = "Tanoa-Server\core\Fireworks";
			class fireworks {};
		};

		class Companies
		{
			file = "Tanoa-Server\core\Companies";
			class company_insert {};
			class companies_init {};
			class company_init {};
			class companies_save {};
			class company_fetch {};
			class company_build {};
			class company_perquisition {};
			class company_launder {};
			class construction_init {};
			class company_bank_handle {};
			class company_history_get {};
			class company_history_clear {};
			class company_destroy {};
		};

		class dynamicMarkers
		{
			file = "Tanoa-Server\core\dynamicMarkers";
			class dynamicMarkers_init {};
			class dynamicMarkers_update {};
			class dynamicMarkers_create {};
			class dynamicMarkers_getPos {};
		};

		class Garage
		{
			file = "Tanoa-Server\core\Garage";
			class garageVehicles {};
			class garageVehicleSpawn {};
			class garageVehicleStore {};
		};

		class Phone
		{
			file = "Tanoa-Server\core\Phone";
			class phoneInit {};
			class phoneMessageHandler {};
			class phoneMessageSave {};
		};

		class Factions
		{
			file = "Tanoa-Server\core\Factions";
			class factionsInit {};
			class factionsSave {};
			class factionHistoryGet {};
			class factionHistoryClean {};
			class factionHistoryAdd {};
			class factionMemberList {};
			class factionMemberModify {};
			class factionBankHandle {};
			class faction_mission {};
		};

		class Vehicles
		{
			file = "Tanoa-Server\core\Vehicles";
			class vehicleCreate {};
			class vehicleDelete {};
			class vehicle_update_insurrance {};
			class vehicle_update_storePos {};
			class vehicle_update_fuel {};
			class vehicle_update_name {};
		};

		class Systems
		{
			file = "Tanoa-Server\core\Systems";
			class clientDisconnect {};
			class keyManagement {};
			class spikeStrip {};
			class whitelistRebels {};
		};

		class Tools
		{
			file = "Tanoa-Server\core\Tools";
			class bool {};
			class mresArray {};
			class mresString {};
			class mresToArray {};
			class numberSafe {};
			class getRealTime {};
		};

		class Log
		{
			file = "Tanoa-Server\core\Log";
			class logRefund {};
			class logLaunder {};
			class logDeath {};
			class logBuypassWhitelist {};
			class logDeathDisconnect {};
			class logComa {};
			class logDeadVehicles {};
			class logTrade {};
			class logTemporyInventory {};
			class logPerquisition {};
			class logHouseSell {};
			class logHouseBuy {};
			class logSuicide {};
		};

		class MySQL
		{
			file = "Tanoa-Server\core\MySQL";
			class query_insert_inscription {};
			class query_select_connect {};
			class query_update_usual {};
			class query_update_disconnect {};
			class query_update_partial {};
			class query_delete_wipe {};
		};

		class Market
		{
			file = "Tanoa-Server\core\Market";
			class market_init {};
			class market_loop {};
			class market_save {};
			class market_setPrice {};
		};

		class Laboratories
		{
			file = "Tanoa-Server\core\Laboratories";
			class laboratory_fetch {};
			class laboratory_destroy {};
			class laboratory_insert {};
			class laboratory_build {};
			class laboratory_init_construction {};
			class laboratory_init {};
			class laboratories_init {};
			class laboratories_save {};
		};

		class Housing
		{
			file = "Tanoa-Server\core\Housing";
			class house_add {};
			class house_init {};
			class house_init_storage {};
			class house_save_storage {};
			class house_sell {};
			class house_tenants_add {};
			class house_save {};
			class house_fetch {};
			class house_perquisition {};
		};
	};
};
