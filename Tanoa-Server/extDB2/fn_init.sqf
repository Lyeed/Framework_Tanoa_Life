/*
	File: init.sqf
	Author:

	Description:
	Initializes extDB, loads Protocol + options if any + Locks extDB

	Parameters:
		0: STRING Database name as in extdb-conf.ini
		1: STRING Protocol to enable
		2: STRING Optional Protocol Options i.e db_conf name for DB_CUSTOM
*/
private["_database","_protocol","_protocol_options","_result","_extDB_SQL_CUSTOM_ID"];
_database = [_this,0,"",[""]] call BIS_fnc_param;
_protocol = [_this,1,"",[""]] call BIS_fnc_param;
_protocol_options = [_this,2,"",[""]] call BIS_fnc_param;

if ( isNil {uiNamespace getVariable "extDB_SQL_CUSTOM_ID"}) then
{
	// extDB Version
	_result = "extDB2" callExtension "9:VERSION";
	if (_result isEqualTo "") exitWith
	{
		diag_log "extDB2: Failed to Load version";
		false;
	};
	diag_log format ["extDB2: Version: %1", _result];

	// extDB Connect to Database
	_result = call compile ("extDB2" callExtension format["9:ADD_DATABASE:%1", _database]);
	if (_result select 0 isEqualTo 0) exitWith
	{
		diag_log format ["extDB2: Error Database: %1", _result];
		false;
	};
	diag_log "extDB2: Connected to Database";

	// Generate Randomized Protocol Name
	_extDB_SQL_CUSTOM_ID = str(round(random(999999)));
	extDB_SQL_CUSTOM_ID = compileFinal _extDB_SQL_CUSTOM_ID;

	// extDB Load Protocol
	_result = call compile ("extDB2" callExtension format["9:ADD_DATABASE_PROTOCOL:%1:%2:%3:%4", _database, _protocol, _extDB_SQL_CUSTOM_ID, _protocol_options]);
	if ((_result select 0) isEqualTo 0) exitWith
	{
		diag_log format ["extDB2: Error Database Setup: %1", _result];
		false;
	};
	// Save Randomized ID
	uiNamespace setVariable ["extDB_SQL_CUSTOM_ID", _extDB_SQL_CUSTOM_ID];
	diag_log format ["extDB2: Initalized %1 Protocol", _protocol];

	// RCON
	"extDB2" callExtension "9:START_RCON:RCON";
	sleep 0.5;
	_result = call compile ("extDB2" callExtension "9:RCON_STATUS");
	if ((_result select 0) isEqualTo 0) exitWith
	{
		diag_log "extDB2: Not connected to RCON";
		false;
	};
	"extDB2" callExtension "9:ADD_PROTOCOL:RCON:rcon:#kick-#lock-#unlock";
	diag_log "extDB2: Connected to RCON";

	/*
	// VAC
	_result = call compile ("extDB2" callExtension "9:START_VAC");
	if ((_result select 0) isEqualTo 0) exitWith
	{
		diag_log "extDB2: Not connected to VAC";
		false;
	};
	diag_log "extDB2: Connected to VAC";

	// STEAM
	_result = call compile ("extDB2" callExtension "9:START_STEAM");
	if ((_result select 0) isEqualTo 0) exitWith
	{
		diag_log "extDB2: Not connected to Steam";
		false;
	};
	diag_log "extDB2: Connected to Steam";
	*/

	// extDB2 Lock
	"extDB2" callExtension "9:LOCK";
	diag_log "extDB2: Locked";
	
	true;
} else {
	extDB_SQL_CUSTOM_ID = compileFinal str(uiNamespace getVariable "extDB_SQL_CUSTOM_ID");
	diag_log "extDB2: Already Setup";
	true;
};