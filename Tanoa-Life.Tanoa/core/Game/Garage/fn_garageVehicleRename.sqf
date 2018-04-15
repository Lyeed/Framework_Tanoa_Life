/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_index", "_name"];

_index = lbValue[2802, (lbCurSel 2802)];
if (_index isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné de véhicule."] call AlysiaClient_fnc_error;
};

if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};
g_action_inUse = true;

_name = [
	"Alysia_Client_Texture\Data\vehicle\background.jpg",
	"Renommer",
	"Nom",
	((g_garage_vehicles select _index) select 5)
] call AlysiaClient_fnc_edit_create;

if (_name != "") then
{
	["Changement de nom dans le garage <t color='#3ADF00'>effectué</t> !"] call AlysiaClient_fnc_info;
	[((g_garage_vehicles select _index) select 1), _name] remoteExec ["AlysiaServer_fnc_vehicle_update_name", 2];
	(g_garage_vehicles select _index) set [5, _name];

	waitUntil
	{
		closeDialog 0;
		!dialog
	};

	[g_garage_vehicles] call AlysiaClient_fnc_garageOpen;
};

g_action_inUse = false;
