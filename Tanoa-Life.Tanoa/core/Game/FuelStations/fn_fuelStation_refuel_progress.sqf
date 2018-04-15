/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_veh", "_station", "_type", "_bill", "_display", "_fuelmax", "_liters", "_currentLiters", "_fill", "_maxDistance", "_distanceBegin", "_progressLiters"];
_veh = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;
_station = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_param;

_type = player getVariable ["refuel_type", ""];
if ((isNull _station) || (isNull _veh)) exitWith {["Plein impossible.<br/>Cible invalide"] call AlysiaClient_fnc_error};
if (_type isEqualTo "") exitWith {["Plein impossible.<br/>Impossible de trouver l'essence que vous avez selectionné."] call AlysiaClient_fnc_error};
if ((fuel _veh) isEqualTo 1) exitWith {["Plein impossible.<br/>Le réservoir du véhicule est déjà plein."] call AlysiaClient_fnc_error};
if (isEngineOn _veh) exitWith {["Plein impossible.<br/>Le véhicule doit avoir le moteur éteint pour effectuer un plein."] call AlysiaClient_fnc_error};
if (((locked _veh) isEqualTo 2)) exitWith {["Plein impossible.<br/>Le véhicule doit être ouvert pour effectuer un plein."] call AlysiaClient_fnc_error};
if (_veh getVariable ["refuel_inUse", false]) exitWith {["Plein impossible.<br/>Une autre personne effectue actuellement le plein du véhicule."] call AlysiaClient_fnc_error};

_maxDistance = getNumber(missionConfigFile >> "ALYSIA_FUEL_STATION" >> typeOf(_station) >> "max_distance_allowed");
if ((player distance _station) > _maxDistance) exitWith {
	["Plein impossible.<br/>Vous êtes trop loin de la station."] call AlysiaClient_fnc_error;
};

_currentLiters = [_station, _type] call AlysiaClient_fnc_fuelStation_fuel_getStock;
if (_currentLiters < 1) exitWith
{
	[
		format
		[
			"Cette station ne possède pas assez de <t color='#3ADF00'>%1</t> pour commencer un plein.<br/>Il faut au minimum 1 litre et il en reste <t color='#FF8000'>%2</t>.",
			getText(missionConfigFile >> "ALYSIA_FUEL" >> _type >> "name"),
			_currentLiters
		]
	] call AlysiaClient_fnc_error;
};

if (_station getVariable ["refuel_inUse", false]) exitWith {["Plein impossible.<br/>Quelqu'un est déjà en train d'utiliser la pompe."] call AlysiaClient_fnc_error};
_station setVariable ["refuel_inUse", true, true];

if (!(createDialog "RscDisplayFuelRefuel")) exitWith {};

disableSerialization;
_display = findDisplay 17000;
if (isNull _display) exitWith {};

(_display displayCtrl 17006) ctrlSetStructuredText parseText getText(missionConfigFile >> "ALYSIA_FUEL" >> _type >> "name");
_veh setVariable ["refuel_inUse", true, true];

_bill = 0;
_liters = 0;
_fuelmax = getNumber(missionConfigFile >> "ALYSIA_VEHICLES" >> (typeOf _veh) >> "fuelCapacity");
_fill = false;
_distanceBegin = (player distance _veh) + 2;

_progressLiters = switch (true) do
{
	case (_veh isKindOf "Air"): {10};
	default {1};
};

while {true} do
{
	if ((player distance _station) > _maxDistance) exitWith {
		["Plein interrompu.<br/>Vous êtes trop loin de la station."] call AlysiaClient_fnc_error;
	};
	if ((player distance _veh) > _distanceBegin) exitWith {
		["Plein interrompu.<br/>Vous êtes trop loin du véhicule."] call AlysiaClient_fnc_error;
	};
	if ((locked _veh) isEqualTo 2) exitWith {
		["Plein interrompu.<br/>Le véhicule doit rester dévérrouillé pendant le plein."] call AlysiaClient_fnc_error;
	};
	if (isEngineOn _veh) exitWith {
		["Plein interrompu.<br/>Le véhicule doit garder le moteur éteint pendant le plein."] call AlysiaClient_fnc_error;
	};

	if (((fuel _veh) + (_liters / _fuelmax)) >= 1) exitWith {_fill = true};
	if ((_currentLiters - _liters) <= 0) exitWith {_fill = true};
	if ((isNull _display) && (_liters > 0)) exitWith {_fill = true};

	if (isNull _display) exitWith {
		["Plein interrompu.<br/>Fenêtre d'intéraction fermée."] call AlysiaClient_fnc_error;
	};

	_liters = _liters + _progressLiters;
	_station setVariable [_type, (_currentLiters - _liters)];
	_bill = _bill + (([_station, _type] call AlysiaClient_fnc_fuelStation_fuel_getPrice) * _progressLiters);

	(_display displayCtrl 17008) ctrlSetStructuredText parseText format
	[
		"<t align='center' size='2'>%1</t>",
		[_bill] call AlysiaClient_fnc_numberText
	];

	(_display displayCtrl 17010) ctrlSetStructuredText parseText format
	[
		"<t align='right'>%1L</t>",
		(_currentLiters - _liters)
	];

	(_display displayCtrl 17013) progressSetPosition ((fuel _veh) + (_liters / _fuelmax));

	(_display displayCtrl 17014) ctrlSetStructuredText parseText format
	[
		"<t align='center'>%1/%2 Litres</t>",
		floor((fuel _veh) * _fuelmax) + _liters,
		_fuelmax
	];

	uiSleep 0.5;
};

if (dialog) then {closeDialog 0};
if (_fill) then
{
	private "_can_pay";
	_config_bank = missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "bank_faction";
	if (isClass(_config_bank) && (getNumber(_config_bank >> "payFuel") isEqualTo 1)) then
	{
		if ([false, _bill] call AlysiaClient_fnc_atmFactionHandle) then
		{
			[format["<t color='#8cff9b'>%1</t>$ ont été prélevés du compte en banque de votre faction pour payer la facture.", [_bill] call AlysiaClient_fnc_numberText], "buy"] call AlysiaClient_fnc_info;
			_can_pay = true;
		} else {
			["Vous n'avez pas assez d'argent dans le compte en banque de votre faction pour payer la facture.<br/>Le plein de votre véhicule n'a pas été fait."] call AlysiaClient_fnc_error;
			_can_pay = false;
		};
	} else {
		if (getNumber(missionConfigFile >> "ALYSIA_FUEL_STATION" >> typeOf(_station) >> "payDirect") isEqualTo 1) then
		{
			if (_bill <= g_atm) then
			{
				[false, _bill, "Station Essence"] call AlysiaClient_fnc_handleATM;
				[format["<t color='#8cff9b'>%1</t>$ ont été prélevés de votre compte en banque.", [_bill] call AlysiaClient_fnc_numberText], "buy"] call AlysiaClient_fnc_info;
				_can_pay = true;
			} else {
				_can_pay = false;
				["Vous n'avez pas assez d'argent dans votre compte en banque pour payer la facture.<br/>Le plein de votre véhicule n'a pas été fait."] call AlysiaClient_fnc_error;
			};
		} else {
			missionNamespace setVariable ["refuel_bill", (missionNamespace getVariable ["refuel_bill", 0]) + _bill];
			missionNamespace setVariable ["refuel_vehicle", _veh];
			missionNamespace setVariable ["refuel_prevent", false];
			[format["Votre facture s'élève à <t color='#8cff9b'>%1</t>$.<br/>Allez dans la station service pour payer.", [_bill] call AlysiaClient_fnc_numberText]] call AlysiaClient_fnc_info;
			[_veh, _station, _maxDistance] spawn AlysiaClient_fnc_fuelStation_refuel_payment_track;
			_can_pay = true;
		};
	};

	if (_can_pay) then
	{
		_station setVariable [_type, (_currentLiters - _liters), true];
		[true, _veh, _liters, _type] call AlysiaClient_fnc_handleFuel;
	} else {
		_station setVariable [_type, _currentLiters];
	};
} else {
	_station setVariable [_type, _currentLiters];
};

_veh setVariable ["refuel_inUse", false, true];
player setVariable ["refuel_type", ""];
missionNamespace setVariable ["refuel_pump", objNull];
_station setVariable ["refuel_inUse", false, true];
