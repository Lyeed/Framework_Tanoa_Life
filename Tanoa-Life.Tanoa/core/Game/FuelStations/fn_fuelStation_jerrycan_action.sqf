/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_station", "_type", "_currentLiters", "_display", "_bill", "_liters", "_fill", "_distanceBegin"];
_station = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;

if (isNull _station) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

_type = lbData[16004, lbCurSel 16004];
if (_type isEqualTo "") exitWith {["Impossible de trouver l'essence que vous avez selectionné."] call AlysiaClient_fnc_error};

closeDialog 0;

if (player distance _station > getNumber(missionConfigFile >> "ALYSIA_FUEL_STATION" >> typeOf(_station) >> "max_distance_allowed")) exitWith {
	["Vous êtes trop loin de la station."] call AlysiaClient_fnc_error;
};

if (!("Alysia_jerrycan_empty" in (magazines player))) exitWith {["Vous n'avez pas de jerrycan vide."] call AlysiaClient_fnc_error};

_currentLiters = [_station, _type] call AlysiaClient_fnc_fuelStation_fuel_getStock;
if (_currentLiters < 20) exitWith
{
	[
		format
		[
			"Cette station ne possède pas assez de <t color='#3ADF00'>%1</t> pour remplir un jerrycan.<br/>Il faut au minimum 20 litres et il en reste <t color='#FF8000'>%2</t>.",
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

_bill = 0;
_liters = 0;
_fill = false;
_distanceBegin = (player distance _station) + 1;
[player, "action_refuel", 20] call AlysiaClient_fnc_globalSay3d;

while {true} do
{
	if (isNull _display) exitWith {
		["Le transfert n'a pas pu aboutir.<br/>Fenêtre fermée."] call AlysiaClient_fnc_error;
	};
	if (_bill > g_atm) exitWith {
		["Le transfert n'a pas pu aboutir.<br/>Vous n'avez pas assez d'argent sur votre compte pour payer le plein d'un jerrycan."] call AlysiaClient_fnc_error;
	};
	if ((player distance _station) > _distanceBegin) exitWith {
		["Le transfert n'a pas pu aboutir.<br/>Vous êtes trop loin de la station."] call AlysiaClient_fnc_error;
	};

	if (_liters isEqualTo 20) exitWith {_fill = true};

	_bill = _bill + ([_station, _type] call AlysiaClient_fnc_fuelStation_fuel_getPrice);
	_liters = _liters + 1;
	_station setVariable [_type, (_currentLiters - _liters)];

	(_display displayCtrl 17008) ctrlSetStructuredText parseText format
	[
		"<t size='2' align='center'>%1</t>",
		[_bill] call AlysiaClient_fnc_numberText
	];

	(_display displayCtrl 17010) ctrlSetStructuredText parseText format
	[
		"<t align='right'>%1L</t>",
		(_currentLiters - _liters)
	];

	(_display displayCtrl 17013) progressSetPosition (_liters / 20);

	(_display displayCtrl 17014) ctrlSetStructuredText parseText format
	[
		"<t size='1.5' align='center>%1/20 Litres</t>",
		_liters
	];

	uiSleep 0.5;
};

if (dialog) then {
	closeDialog 0;
};

if (_fill) then
{
	if (["Alysia_jerrycan_empty", false] call AlysiaClient_fnc_handleItem) then
	{
		[getText(missionConfigFile >> "ALYSIA_FUEL" >> _type >> "item_jerrycan"), true] call AlysiaClient_fnc_handleItem;
		_station setVariable [_type, (_currentLiters - _liters), true];
		[false, _bill, "Station Essence"] call AlysiaClient_fnc_handleATM;
		[format["<t color='#8cff9b'>%1</t>$ ont été prélevés de votre compte en banque.", ([_bill] call AlysiaClient_fnc_numberText)], "buy"] call AlysiaClient_fnc_info;
	} else {
		["Le transfert n'a pas pu aboutir.<br/>Vous n'avez pas de jerrycan vide."] call AlysiaClient_fnc_error;
	};
} else {
	_station setVariable [_type, _currentLiters];
};

_station setVariable ["refuel_inUse", false, true];
