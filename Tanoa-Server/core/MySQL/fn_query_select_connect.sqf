/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

#define BASE_REQUEST "\
uid,\
profileName,\
RP_firstname,\
RP_lastname,\
RP_birth,\
RP_nationality,\
RP_sexe,\
DYN_markers,\
LEVEL_donator,\
HEALTH_blood,\
HEALTH_bleed,\
HEALTH_coma,\
POS_x,\
POS_y,\
POS_z,\
POS_alive,\
HEALTH_deseases,\
HEALTH_hunger,\
HEALTH_thirst,\
WEST_level,\
GUER_level,\
EAST_level,\
CIV_level,\
JAIL_prison,\
JAIL_cell,\
JAIL_time,\
JAIL_caution,\
JAIL_reason,\
JAIL_escape,\
JAIL_gear,\
PHONE_number,\
PHONE_contacts,\
PHONE_messages,\
PHONE_forfait,\
PHONE_blacklist,\
TABLET_apps,\
RP_face,\
RP_face,\
HEALTH_alcool,\
HEALTH_hurt,\
PHONE_annuaire"

#define CIV_REQUEST ",\
CIV_licenses,\
CIV_cash,\
CIV_atm,\
CIV_inventory,\
CIV_gear"

#define EAST_REQUEST ",\
EAST_licenses,\
EAST_cash,\
EAST_atm,\
EAST_inventory,\
EAST_gear"

#define GUER_REQUEST ",\
GUER_licenses,\
GUER_cash,\
GUER_atm,\
GUER_inventory,\
GUER_gear"

#define WEST_REQUEST ",\
WEST_licenses,\
WEST_cash,\
WEST_atm,\
WEST_inventory,\
WEST_gear"

private["_player", "_side", "_uid", "_queryResult"];
_player = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;

if (isNull _player) exitWith {};

_uid = getPlayerUID _player;

_side = side _player;
_queryResult = switch (_side) do
{
	case civilian: {[format["SELECT %1 %2 FROM players WHERE uid='%3'", BASE_REQUEST, CIV_REQUEST, _uid], 2] call ExtDB3_fnc_async};
	case east: {[format["SELECT %1 %2 FROM players WHERE uid='%3'", BASE_REQUEST, EAST_REQUEST, _uid], 2] call ExtDB3_fnc_async};
	case independent: {[format["SELECT %1 %2 FROM players WHERE uid='%3'", BASE_REQUEST, GUER_REQUEST, _uid], 2] call ExtDB3_fnc_async};
	case west: {[format["SELECT %1 %2 FROM players WHERE uid='%3'", BASE_REQUEST, WEST_REQUEST, _uid], 2] call ExtDB3_fnc_async};
};

if (_queryResult isEqualTo []) exitWith {
	[] remoteExec ["AlysiaClient_fnc_welcomeInit", (owner _player)];
};

_queryResult = _queryResult select 0;
_queryResult set [4, ([(_queryResult select 4)] call AlysiaServer_fnc_mresToArray)];//birth
_queryResult set [7, ([(_queryResult select 7)] call AlysiaServer_fnc_mresToArray)];//dynamic markers
_queryResult set [11, ([(_queryResult select 11), 1] call AlysiaServer_fnc_bool)];//coma
_queryResult set [15, ([(_queryResult select 15), 1] call AlysiaServer_fnc_bool)];//alive
_queryResult set [16, ([(_queryResult select 16)] call AlysiaServer_fnc_mresToArray)];//deseases
_queryResult set [28, ([(_queryResult select 28), 1] call AlysiaServer_fnc_bool)];//escape
_queryResult set [29, ([(_queryResult select 29)] call AlysiaServer_fnc_mresToArray)];//prison gear
_queryResult set [31, ([(_queryResult select 31)] call AlysiaServer_fnc_mresToArray)];//phone_contacts
_queryResult set [32, ([(_queryResult select 32)] call AlysiaServer_fnc_mresToArray)];//phone_messages
_queryResult set [34, ([(_queryResult select 34)] call AlysiaServer_fnc_mresToArray)];//phone_blacklist
_queryResult set [35, ([(_queryResult select 35)] call AlysiaServer_fnc_mresToArray)];//apps
_queryResult set [40, ([(_queryResult select 40), 1] call AlysiaServer_fnc_bool)];//annuaire
_queryResult set [41, ([(_queryResult select 41)] call AlysiaServer_fnc_mresToArray)];//licenses
_queryResult set [44, ([(_queryResult select 44)] call AlysiaServer_fnc_mresToArray)];//inventory
_queryResult set [45, ([(_queryResult select 45)] call AlysiaServer_fnc_mresToArray)];//gear

// buffer messages handler
_messages = missionNamespace getVariable [format["SERVER_MESSAGES_%1", (_queryResult select 30)], []];
if (count(_messages) > 0) then
{
	gServer_phone_messages_buffer deleteAt (gServer_phone_messages_buffer find (_queryResult select 30));
	missionNamespace setVariable [format["SERVER_MESSAGES_%1", (_queryResult select 30)], []];
};

[
	_queryResult,
	([_uid] call AlysiaServer_fnc_house_fetch),
	(missionNamespace getVariable [format["%1_KEYS_%2", _uid, _side], []]),
	_messages,
	([_uid] call AlysiaServer_fnc_company_fetch),
	([_uid] call AlysiaServer_fnc_laboratory_fetch)
] remoteExecCall ["AlysiaDB_fnc_query_select_receive", (owner _player)];
