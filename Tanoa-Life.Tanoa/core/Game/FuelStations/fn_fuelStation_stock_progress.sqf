/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_veh", "_station", "_type", "_config", "_maxDistance", "_currentLiters", "_litersMax", "_display", "_liters", "_receive", "_distanceBegin", "_item", "_processLiters"];
_veh = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;
_station = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_param;

if ((isNull _station) || (isNull _veh)) exitWith {["Remplissage de la station impossible.<br/>Cible invalide."] call AlysiaClient_fnc_error};
if (isNull g_company) exitWith {["Remplissage de la station impossible.<br/>Vous devez faire parti d'une entreprise."] call AlysiaClient_fnc_error};

if (isEngineOn _veh) exitWith {["Remplissage de la station impossible.<br/>Le véhicule doit avoir le moteur éteint."] call AlysiaClient_fnc_error};
if (((locked _veh) isEqualTo 2)) exitWith {["Remplissage de la station impossible.<br/>Le véhicule doit être ouvert."] call AlysiaClient_fnc_error};
if (_veh getVariable ["refuel_inUse", false]) exitWith {["Remplissage de la station impossible.<br/>Quelqu'un est déjà en train d'utiliser le véhicule."] call AlysiaClient_fnc_error};

_type = player getVariable ["stock_station_type", ""];
_config = missionConfigFile >> "ALYSIA_FUEL" >> _type;
if (_type isEqualTo "") exitWith {["Remplissage de la station impossible.<br/>Impossible de trouver l'essence que vous avez selectionné."] call AlysiaClient_fnc_error};

_maxDistance = getNumber(missionConfigFile >> "ALYSIA_FUEL_STATION" >> typeOf(_station) >> "max_distance_allowed");
if ((player distance _station) > _maxDistance) exitWith {["Remplissage de la station impossible.<br/>Vous êtes trop loin de la station."] call AlysiaClient_fnc_error};

_currentLiters = [_station, _type] call AlysiaClient_fnc_fuelStation_fuel_getStock;
_litersMax = getNumber(missionConfigFile >> "ALYSIA_FUEL_STATION" >> typeOf(_station) >> "stock" >> _type >> "max");
if (_currentLiters isEqualTo _litersMax) exitWith {
	[format["Remplissage de la station impossible.<br/>Le stock de <t color='#FF8000'>%1</t> est complet.", getText(_config >> "name")]] call AlysiaClient_fnc_error;
};

if (_station getVariable ["refuel_inUse", false]) exitWith {["Remplissage de la station impossible.<br/>Quelqu'un est déjà en train d'utiliser la station."] call AlysiaClient_fnc_error};
_station setVariable ["refuel_inUse", true, true];

createDialog "RscDisplayFuelRefuel";

disableSerialization;
_display = findDisplay 17000;
if (isNull _display) exitWith {};

(_display displayCtrl 17006) ctrlSetStructuredText parseText getText(_config >> "name");
_veh setVariable ["refuel_inUse", true, true];

_liters = 0;
_receive = 0;
_distanceBegin = (player distance _veh) + 2;
_item = getText(_config >> "item_refuel");
_processLiters = 20;

while {true} do
{
	if ((player distance _station) > _maxDistance) exitWith {
		["Remplissage de la station impossible.<br/>Vous êtes trop loin de la station."] call AlysiaClient_fnc_error;
	};
	if ((player distance _veh) > _distanceBegin) exitWith {
		["Remplissage de la station impossible.<br/>Vous êtes trop loin du véhicule."] call AlysiaClient_fnc_error;
	};
	if ((locked _veh) isEqualTo 2) exitWith {
		["Remplissage de la station impossible.<br/>Le véhicule doit rester dévérrouillé pendant le plein."] call AlysiaClient_fnc_error;
	};
	if (isEngineOn _veh) exitWith {
		["Remplissage de la station impossible.<br/>Le véhicule doit garder le moteur éteint pendant le plein."] call AlysiaClient_fnc_error;
	};

	if (isNull _display) exitWith {
		["Remplissage de la station interrompu.<br/>La fenêtre d'intéractions a été fermée."] call AlysiaClient_fnc_error;
	};
	if (!([false, _veh, "Trunk", _item, 1, false] call AlysiaClient_fnc_handleTrunk)) exitWith {
		[format["Remplissage de la station interrompu.<br/>Il n'y a plus de <t color='#FF8000'>%1</t> dans le véhicule.", getText(_config >> "name")]] call AlysiaClient_fnc_error;
	};
	if ((_currentLiters + _liters) >= _litersMax) exitWith {
		_liters = _litersMax - _currentLiters;
	};

	_liters = _liters + _processLiters;
	_station setVariable [_type, (_currentLiters + _liters)];
	_receive = _receive + ((([_station, _type] call AlysiaClient_fnc_fuelStation_fuel_getPrice) * _processLiters) * 1.5);

	(_display displayCtrl 17008) ctrlSetStructuredText parseText format
	[
		"<t size='2' align='center'>%1</t>",
		[_receive] call AlysiaClient_fnc_numberText
	];

	(_display displayCtrl 17010) ctrlSetStructuredText parseText format
	[
		"<t align='right'>%1L</t>",
		(_station getVariable _type)
	];

	(_display displayCtrl 17013) progressSetPosition ((_station getVariable _type) / _litersMax);

	(_display displayCtrl 17014) ctrlSetStructuredText parseText format
	[
		"<t align='center'>%1/%2 Litres</t>",
		(_station getVariable _type),
		_litersMax
	];

	uiSleep 0.5;
};

if (dialog) then {closeDialog 0};

if ((_liters > 0) && (_receive > 0)) then
{
	_veh setVariable ["Trunk", (_veh getVariable ["Trunk", []]), true];
	_station setVariable [_type, (_currentLiters + _liters), true];
	[g_company, true, _receive, (player getVariable "realname"), "Activité professionnelle"] remoteExec ["AlysiaServer_fnc_company_bank_handle", 2];
	[format["Votre entreprise à reçu <t color='#8cff9b'>%1</t>$ pour le remplissage de la station.", ([_receive] call AlysiaClient_fnc_numberText)], "buy"] call AlysiaClient_fnc_info;
};

_veh setVariable ["refuel_inUse", false, true];
player setVariable ["stock_station_type", ""];
missionNamespace setVariable ["refuel_pump", objNull];
_station setVariable ["refuel_inUse", false, true];
