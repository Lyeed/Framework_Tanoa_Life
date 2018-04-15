/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_sel", "_price", "_vehicle", "_className", "_proceed"];

_sel = lbCurSel 2302;
if (_sel isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné de véhicule à acheter."] call AlysiaClient_fnc_error;
};

_className = lbData[2303, (lbCurSel 2303)];
if (_className isEqualTo "") exitWith {
	["Impossible de récupérer les informations du véhicule à acheter."] call AlysiaClient_fnc_error;
};

_price = getNumber(missionConfigFile >> "ALYSIA_VEHICLES" >> _className >> "buyPrice");
if (_price isEqualTo 0) exitWith {
	["Impossible de récupérer le prix du véhicule à acheter."] call AlysiaClient_fnc_error;
};
if (_price > g_cash) exitWith {
	["Vous n'avez pas à assez d'argent sur vous."] call AlysiaClient_fnc_error;
};

if (g_shop_active) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};

g_shop_active = true;
_proceed = false;

if (getNumber(missionConfigFile >> "ALYSIA_SHOPS_VEHICLES" >> g_shop_vehicles_type >> "createVehicle") isEqualTo 1) then
{
	private["_validSpawn", "_spawnPos"];

	{
		if ((nearestObjects[(getMarkerPos _x), ["Car", "Air", "Ship"], 10]) isEqualTo []) exitWith {_validSpawn = _x};
	} forEach g_shop_vehicles_spawn;
	if (isNil "_validSpawn") then {
		["Aucun emplacement de sortie de véhicule n'est libre"] call AlysiaClient_fnc_error;
	} else {
		_proceed = true;

		_spawnPos = getMarkerPos _validSpawn;
		_vehicle = createVehicle [_className, _spawnPos, [], 0, "NONE"];
		[_vehicle] call AlysiaClient_fnc_clearVehicleAmmo;

		_vehicle lock 2;
		_vehicle setVectorUp (surfaceNormal _spawnPos);
		_vehicle setDir (markerDir _validSpawn);
		_vehicle setPos _spawnPos;

		g_vehicles pushBack _vehicle;
		["Le véhicule vous venez d'acheter a été <t color='#01DF01'>livré</t> au concessionnaire.", "buy"] call AlysiaClient_fnc_info;
	};
} else {
	_vehicle = objNull;
	_proceed = true;
	["Le véhicule vous venez d'acheter sera <t color='#01DF01'>disponible</t> dans votre garage d'ici quelques secondes.", "buy"] call AlysiaClient_fnc_info;
};

if (_proceed) then
{
	closeDialog 0;

	uiSleep(random(1) + 0.1);

	if ((time - g_action_delay) < 2) exitWith {
		["Veuillez ralentir dans vos actions."] call AlysiaClient_fnc_error;
	};
	g_action_delay = time;

	[false, _price] call AlysiaClient_fnc_handleCash;
	[0] call AlysiaDB_fnc_query_update_partial;
	[player, _vehicle, _className] remoteExec ["AlysiaServer_fnc_vehicleCreate", 2];
};

g_shop_active = false;
