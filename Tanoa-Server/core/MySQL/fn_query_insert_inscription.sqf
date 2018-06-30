/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_player", "_profileName", "_firstName", "_lastName", "_birth", "_nationality", "_sexe"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_profileName = [_this, 1, "", [""]] call BIS_fnc_param;
_firstName = [_this, 2, "", [""]] call BIS_fnc_param;
_lastName = [_this, 3, "", [""]] call BIS_fnc_param;
_birth = [_this, 4, [], [[]]] call BIS_fnc_param;
_nationality = [_this, 5, "", [""]] call BIS_fnc_param;
_sexe = [_this, 6, "", [""]] call BIS_fnc_param;

if (
		(isNull _player) ||
		(_profileName isEqualTo "") ||
		(_firstName isEqualTo "") ||
		(_lastName isEqualTo "") ||
		(_birth isEqualTo []) ||
		(_nationality isEqualTo "") ||
		(_sexe isEqualTo "")
) exitWith {
	diag_log "Error in fn_query_insert_inscription.sqf : arg null";
};

[
	format
	[
		"INSERT INTO players (uid,profileName,HEALTH_deseases,PHONE_messages,PHONE_contacts,PHONE_blacklist,TABLET_apps,RP_firstname,RP_lastname,RP_birth,RP_nationality,RP_sexe,CIV_gear,CIV_inventory,CIV_licenses,WEST_gear,WEST_inventory,WEST_licenses,EAST_gear,EAST_inventory,EAST_licenses,GUER_gear,GUER_inventory,GUER_licenses,JAIL_gear,RP_face,DYN_markers,CIV_cash) VALUES ('%2','%3','""[[],[],[]]""','%1','%1','%1','%1','%4','%5','%6','%7','%8','%1','%1','%1','%1','%1','%1','%1','%1','%1','%1','%1','%1','%1','%9','%1','2000')",
		"""[]""",
		(getPlayerUID _player),
		_profileName,
		_firstName,
		_lastName,
		[_birth] call AlysiaServer_fnc_mresArray,
		_nationality,
		_sexe,
		(face _player)
	], 1
] call ExtDB3_fnc_async;

[_player] call AlysiaServer_fnc_query_select_connect;
