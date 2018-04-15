/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_sel", "_vehicle", "_trunk", "_price"];

if (g_garage_store) exitWith {
	["Vous êtes déjà en train de ranger un véhicule."] call AlysiaClient_fnc_error;
};

_sel = lbCurSel 35003;
if (_sel isEqualTo -1) exitWith {};
if ((lbText[35003, _sel]) isEqualTo "Aucun véhicule") exitWith {};

_vehicle = g_vehicles select (lbValue[35003, _sel]);
if (isNil "_vehicle") exitWith {};

if (isNull _vehicle) exitWith {
	["Impossible de récupérer les informations de votre véhicule."] call AlysiaClient_fnc_error;
};

if (((getPos g_garage_target) distance _vehicle) > g_garage_distance) exitWith {
	["Le véhicule est trop loin pour être rangé au garage."] call AlysiaClient_fnc_error;
};
if (_vehicle getVariable ["trunk_in_use", false]) exitWith {
	["Vous ne pouvez pas ranger un véhicule lorsque son coffre est en train d'être fouillé."] call AlysiaClient_fnc_error;
};
if (!((crew _vehicle) isEqualTo [])) exitWith {
	["Vous ne pouvez pas ranger un véhicule contenant des passagers ou un conducteur."] call AlysiaClient_fnc_error;
};
if ((speed _vehicle) >= 1) exitWith {
	["Vous ne pouvez pas ranger un véhicule qui se déplace."] call AlysiaClient_fnc_error;
};
if (isEngineOn _vehicle) exitWith {
	["Vous ne pouvez pas ranger un véhicule ayant le moteur allumé."] call AlysiaClient_fnc_error;
};
if (!g_garage_public && (((_vehicle getVariable "info") select 0) != (getPlayerUID player))) exitWith {
	["Vous ne pouvez pas ranger un véhicule ne vous appartenant pas dans un garage privé."] call AlysiaClient_fnc_error;
};

if (cbChecked ((findDisplay 35000) displayCtrl 35006)) then
{
	_trunk = _vehicle getVariable ["Trunk", []];
	if (g_garage_pay && (count(_trunk) > 0)) then
	{
		_price = round((([_trunk] call AlysiaClient_fnc_weightGenerate) + 4) * 75);
		if (g_atm > _price) then
		{
			[false, _price, format["Inventaire véhicule (%1)", getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")]] call AlysiaClient_fnc_handleATM;
			playSound "buy";
			g_garage_store = true;
		} else {
			[
				format
				[
					"Vous n'avez pas assez d'argent sur votre compte pour payer la facture du garage, vous demandant <t color='#8cff9b'>%1</t>$ pour stocker vos objets",
					[_price] call AlysiaClient_fnc_numberText
				]
			] call AlysiaClient_fnc_error;
		};
	} else {
		g_garage_store = true;
	};

	if (g_garage_store) then
	{
		[_vehicle, (getPos g_garage_target), true] remoteExec ["AlysiaServer_fnc_garageVehicleStore", 2];
	};
} else {
	g_garage_store = true;
	[_vehicle, (getPos g_garage_target), false] remoteExec ["AlysiaServer_fnc_garageVehicleStore", 2];
};

if (g_garage_store) then
{
	closeDialog 0;
	waitUntil {(isNull _vehicle)};
	["Vous avez rangé votre véhicule."] call AlysiaClient_fnc_info;
	g_garage_store = false;
};
