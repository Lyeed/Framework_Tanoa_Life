/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_sel", "_type", "_vehicle", "_info", "_vehicleInfo"];

disableSerialization;
_display = findDisplay 99000;
if (isNull _display) exitWith {};

_sel = lbCurSel 99001;
if (_sel isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné de véhicule à vendre"] call AlysiaClient_fnc_error;
};

_type = lbData[99001, _sel];
if (_type isEqualTo "") exitWith {
	["Vous n'avez pas sélectionné de véhicule à vendre"] call AlysiaClient_fnc_error;
};

closeDialog 0;

_vehicle = g_interaction_steal_list select (lbValue[99001, _sel]);
if ((isNil "_vehicle") || {(isNull _vehicle)}) exitWith {
	["Impossible de trouver les informations du véhicule"] call AlysiaClient_fnc_error;
};

if ((player distance _vehicle) > 25) exitWith {
	["Le véhicule est trop loin pour être vendu"] call AlysiaClient_fnc_error;
};

if (count(crew _vehicle) > 0) exitWith {
	["Le véhicule ne doit avoir personne à son bord pour pouvoir être vendu"] call AlysiaClient_fnc_error;
};

if (isEngineOn _vehicle) exitWith {
	["Le moteur du véhicule doit être éteint pour pouvoir être vendu"] call AlysiaClient_fnc_error;
};

if ((speed _vehicle) > 0) exitWith {
	["Le véhicule doit être à l'arrêt pour pouvoir être vendu"] call AlysiaClient_fnc_error;
};

_vehicleInfo = [_type] call AlysiaClient_fnc_fetchVehInfo;
if ((_vehicleInfo select 9) isEqualTo 0) exitWith {
	["Ce véhicule n'a pas de prix de vente"] call AlysiaClient_fnc_error;
};

_info = _vehicle getVariable "info";
if (!(isNil "_info") && {(getPlayerUID player) isEqualTo (_info select 0)}) exitWith {
	["Vous ne pouvez pas receler vos véhicules"] call AlysiaClient_fnc_error;
};

uiSleep(random(1) + 0.5);

if ((time - g_action_delay) < 4) exitWith {
	["Veuillez ralentir dans vos actions."] call AlysiaClient_fnc_error;
};
g_action_delay = time;

if (!(isNil "_info")) then {
	[_info] remoteExec ["AlysiaServer_fnc_vehicleDelete", 2];
};

deleteVehicle _vehicle;
[true, "illegal_money", (_vehicleInfo select 21)] call AlysiaClient_fnc_handleInv;
playSound "buy";
