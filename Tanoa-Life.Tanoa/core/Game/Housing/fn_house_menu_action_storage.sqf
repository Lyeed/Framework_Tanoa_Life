/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_storage", "_target", "_id"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};
if (!(isNil "gServer_soonReboot") && hasInterface) exitWith {
	["Vous ne pouvez pas interagir avec votre coffre juste avant le <t color='#B40404'>redémarrage</t> du serveur."] call AlysiaClient_fnc_error;
};

uiSleep((random(2)) + 0.2);

if ((time - g_action_delay) <= 1) exitWith {
	["Veuillez <t color='#FF8000'>ralentir</t> dans vos actions."] call AlysiaClient_fnc_error;
};

g_action_delay = time;

_id = (_target getVariable "house_owner") select 2;
if ((isNil "_id") || (_target getVariable ["house_sold", false])) exitWith {
	["Ce bâtiment n'est pas acheté."] call AlysiaClient_fnc_error;
};

g_action_inUse = true;

_storage = missionNamespace getVariable [format["house_storage_out_%1", _id], objNull];
if (isNull _storage) then {
	[_target, player] remoteExec ["AlysiaServer_fnc_house_init_storage", 2];
} else {
	if ((_storage getVariable ["trunk_in_use_ID", ""]) isEqualTo "") then
	{
		[_target, _storage] remoteExec ["AlysiaServer_fnc_house_save_storage", 2];
		waitUntil {(isNull _storage)};
		["<t color='#FF8000'>Coffre</t> rangé."] call AlysiaClient_fnc_info;
	} else {
		["Vous ne pouvez pas ranger le coffre pendant que quelqu'un le fouille."] call AlysiaClient_fnc_error;
	};
};

g_action_inUse = false;
