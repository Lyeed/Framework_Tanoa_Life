/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_importPrice", "_action", "_vehicleName", "_sel", "_index", "_data"];

_sel = lbCurSel 2802;
if (_sel isEqualTo -1) exitWith {};

_index = lbValue[2802, _sel];
if (_index isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné de véhicule."] call AlysiaClient_fnc_error;
};

_data = g_garage_vehicles select _index;
_importPrice = ([_data select 0] call AlysiaClient_fnc_fetchVehInfo) select 20;
if (_importPrice > g_atm) exitWith {
	[format["Il vous faut <t color='#ff8c8c'>%1$</t> pour rapatrier ce véhicule.", [_importPrice] call AlysiaClient_fnc_numberText]] call AlysiaClient_fnc_error;
};

_vehicleName = lbText[2802, _sel];
_action =
[
	format["Voulez-rapatrier votre <t color='#FF8000'>%1</t> pour <t color='#8cff9b'>%2</t>$ ?", _vehicleName, ([_importPrice] call AlysiaClient_fnc_numberText)],
	"Rapatriement",
	"Valider",
	"Annuler"
] call BIS_fnc_guiMessage;

if (_action) then
{
	waitUntil
	{
		closeDialog 0;
		!dialog
	};

	[false, _importPrice, format["Import véhicule (%1)", (_data select 5)]] call AlysiaClient_fnc_handleATM;
	[format["Vous avez rapatrié <t color='#FF8000'>%1</t> pour <t color='#8cff9b'>%2</t>$", _vehicleName, ([_importPrice] call AlysiaClient_fnc_numberText)], "buy"] call AlysiaClient_fnc_info;
	(g_garage_vehicles select _index) set [6, (getPos player) select 0];
	(g_garage_vehicles select _index) set [7, (getPos player) select 1];
	(g_garage_vehicles select _index) set [8, (getPos player) select 2];
	[(_data select 1), (getPos player)] remoteExec ["AlysiaServer_fnc_vehicle_update_storePos", 2];
	[g_garage_vehicles] call AlysiaClient_fnc_garageOpen;
};
