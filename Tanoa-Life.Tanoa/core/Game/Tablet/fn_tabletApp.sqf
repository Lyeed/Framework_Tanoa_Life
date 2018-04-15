/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_app", "_idcs", "_handle"];
_app = toUpper([_this, 0, "", [""]] call BIS_fnc_param);

if (_app isEqualTo "") exitWith {};
if (g_CTRL_inUse) exitWith {};

g_CTRL_inUse = true;
_idcs = getArray(missionConfigFile >> "RscDisplayTablet" >> "controls" >> format["%1_IDCS", _app]);
_handle = [g_CTRL_shown, _idcs, _app, g_app] spawn AlysiaClient_fnc_tabletAppAnimation;
waitUntil {scriptDone _handle};

g_app = _app;
g_CTRL_shown = _idcs;
switch (_app) do
{
	case "MAIN": {[] call AlysiaClient_fnc_APP_main};
	case "SERVER": {[] spawn AlysiaClient_fnc_APP_server};
	case "HELP": {[] call AlysiaClient_fnc_APP_help};
	case "SETTINGS": {[] spawn AlysiaClient_fnc_APP_settings};
	case "SOLDE": {[] call AlysiaClient_fnc_APP_solde};
	case "SOLDE_BILLS": {[] call AlysiaClient_fnc_APP_solde_bills};
	case "VEHICLES": {[] spawn AlysiaClient_fnc_APP_vehicles};
	case "STORE": {[] call AlysiaClient_fnc_APP_store};
	case "STORE_APPLICATIONS": {[] call AlysiaClient_fnc_APP_store_applications};
	case "STORE_LICENSES": {[] call AlysiaClient_fnc_APP_store_licenses};
	case "STORE_FORFAIT": {[] call AlysiaClient_fnc_APP_store_forfait};
	case "PHONE_CATEGORY": {[] call AlysiaClient_fnc_APP_phone};
	case "PHONE_CONTACTS": {[] call AlysiaClient_fnc_APP_phone_contacts};
	case "PHONE_CALL": {[] call AlysiaClient_fnc_APP_phone_call};
	case "PHONE_CALLING": {[] call AlysiaClient_fnc_APP_phone_calling};
	case "PHONE_CALLRECEIVING": {[] call AlysiaClient_fnc_APP_phone_callreceiving};
	case "PHONE_MESSAGES_READ": {[] call AlysiaClient_fnc_APP_phone_messages_read};
	case "PHONE_MESSAGES_SEND": {[] call AlysiaClient_fnc_APP_phone_messages_send};
	case "PHONE_SETTINGS": {[] spawn AlysiaClient_fnc_APP_phone_settings};
	case "PHONE_BLACKLIST": {[] call AlysiaClient_fnc_APP_phone_blacklist};
	case "LICENSES": {[] call AlysiaClient_fnc_APP_licenses};
	case "FACTION": {[] call AlysiaClient_fnc_APP_faction};
	case "MARKET": {[] spawn AlysiaClient_fnc_APP_market};
	case "STAFF": {[] call AlysiaClient_fnc_APP_staff};
	case "FUEL": {[] spawn AlysiaClient_fnc_APP_fuel};
	case "ANNOUNCES_WRITE": {[] call AlysiaClient_fnc_APP_announces_write};
	case "ANNOUNCES_SHOW": {[] call AlysiaClient_fnc_APP_announces_show};
	case "GOV": {[] call AlysiaClient_fnc_APP_gov};
	case "GOV_TAXES": {[] call AlysiaClient_fnc_APP_gov_taxes};
	case "DAB": {[] spawn AlysiaClient_fnc_APP_dab};
	case "ANNUAIRE": {[] call AlysiaClient_fnc_APP_annuaire};
	case "COMPANY": {[g_company] spawn AlysiaClient_fnc_APP_company};
	case "COMPAGNIES": {[] spawn AlysiaClient_fnc_APP_compagnies};
	case "COMPAGNIES_INFOLIST": {[] call AlysiaCLient_fnc_APP_compagnies_infolist};
};

g_CTRL_inUse = false;
