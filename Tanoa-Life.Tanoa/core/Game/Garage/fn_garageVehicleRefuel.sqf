/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_index", "_fuel", "_price"];

_index = lbValue[2802, (lbCurSel 2802)];
if (_index isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné de véhicule."] call AlysiaClient_fnc_error;
};

_fuel = (g_garage_vehicles select _index) select 3;
if (_fuel >= 100) exitWith {
	["Ce véhicule possède déja tout son carburant."] call AlysiaClient_fnc_error;
};

_price = (100 - _fuel) * 2.5;
if (_price > g_atm) exitWith {
	[format["Vous n'avez pas assez d'argent, il vous manque <t color='#ff8c8c'>%1$</t>.", [(_price - g_atm)] call AlysiaClient_fnc_numberText]] call AlysiaClient_fnc_error;
};

waitUntil
{
	closeDialog 0;
	!dialog
};

playSound "buy";
[false, _price, format["Plein véhicule (%1)", ((g_garage_vehicles select _index) select 5)]] call AlysiaClient_fnc_handleATM;
[(g_garage_vehicles select _index) select 1, 100] remoteExec ["AlysiaServer_fnc_vehicle_update_fuel", 2];
(g_garage_vehicles select _index) set[3, 100];
[g_garage_vehicles] call AlysiaClient_fnc_garageOpen;
