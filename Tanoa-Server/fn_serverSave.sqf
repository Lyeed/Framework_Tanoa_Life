/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (gServer_soonReboot) exitWith {};

private["_timeStamp", "_time"];
diag_log "-------------------------------------------------------------";
diag_log "-------------------- Starting Server Save -------------------";
diag_log "-------------------------------------------------------------";
_timeStamp = diag_tickTime;

[] call AlysiaServer_fnc_cleanup_houseStorages;
[] spawn AlysiaServer_fnc_cleanup_companyStorages;

gServer_soonReboot = true;
publicVariable "gServer_soonReboot";

[] remoteExec ["AlysiaClient_fnc_endGame", -2];
uiSleep 100;

[] call AlysiaServer_fnc_cleanup_deadVehicles;

[] call AlysiaServer_fnc_house_save;
[] call AlysiaServer_fnc_vehicles_save;
[] call AlysiaServer_fnc_factionsSave;
[] call AlysiaServer_fnc_market_save;
[] call AlysiaServer_fnc_taxes_save;
[] call AlysiaServer_fnc_laboratories_save;
[] call AlysiaServer_fnc_companies_save;
[] call AlysiaServer_fnc_atm_save;
[] call AlysiaServer_fnc_fuel_save;
[] call AlysiaServer_fnc_time_save;
// [] call AlysiaServer_fnc_phoneMessageSave;

diag_log "---------------------------------------------------------------------------------------------------------";
_time = call AlysiaServer_fnc_getRealTime;
diag_log format[" Total Execution Time %1 seconds at %2:%3", ((diag_tickTime - _timeStamp) - 100), (_time select 0), (_time select 1)];
diag_log "---------------------------------------------------------------------------------------------------------";
