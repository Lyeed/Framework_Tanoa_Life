/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[PHONE] Setup";

["UPDATE players SET PHONE_number='', PHONE_contacts='""[]""', PHONE_messages='""[]""',PHONE_forfait='lite' WHERE DATEDIFF(NOW(),STATS_last_update)>31", 1] call ExtDB3_fnc_async;
uiSleep 1;

gServer_phone_messages_buffer = [];
gServer_phone_numbers = [];

{
	gServer_phone_numbers pushBack (_x select 0);
} forEach (["SELECT PHONE_number FROM players WHERE PHONE_number!=''", 2] call ExtDB3_fnc_async);
publicVariable "gServer_phone_numbers";

gServer_phone_annuaire = ["SELECT profileName,PHONE_number FROM players WHERE PHONE_number!='' AND PHONE_annuaire='1'", 2] call ExtDB3_fnc_async;
publicVariable "gServer_phone_annuaire";

diag_log "[PHONE] Ready";
