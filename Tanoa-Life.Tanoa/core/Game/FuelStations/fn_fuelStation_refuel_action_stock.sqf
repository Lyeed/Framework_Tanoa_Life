/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (isNull (findDisplay 16000)) exitWith {["Vous devez passer par l'interface de la station pour faire le plein."] call AlysiaClient_fnc_error};
if ((player getVariable ["stock_station_type", ""]) isEqualTo "") then
{
	private["_station", "_distance"];

	_station = missionNamespace getVariable ["refuel_pump", objNull];
	if (isNull _station) exitWith {["Impossible de trouver la station."] call AlysiaClient_fnc_error};

	if (_station getVariable ["refuel_inUse", false]) exitWith {["Quelqu'un est déjà en train d'utiliser la pompe."] call AlysiaClient_fnc_error};

	player setVariable ["stock_station_type", (lbData[16004, lbCurSel 16004])];
	["Veuillez maintenant insérer la pompe dans le réservoir de votre véhicule<br/>Pour annuler l'action, interagissez avec la station."] call AlysiaClient_fnc_info;
	closeDialog 0;

	_distance = getNumber(missionConfigFile >> "ALYSIA_FUEL_STATION" >> typeOf(_station) >> "max_distance_allowed");
	while {((player getVariable ["stock_station_type", ""]) != "")} do
	{
		if ((player distance _station) > _distance) exitWith
		{
			["Plein annulé<br/>Vous êtes trop loin de la pompe."] call AlysiaClient_fnc_info;
			player setVariable ["stock_station_type", ""];
			missionNamespace setVariable ['refuel_pump', objNull];
		};

		uiSleep 0.5;
	};
};
