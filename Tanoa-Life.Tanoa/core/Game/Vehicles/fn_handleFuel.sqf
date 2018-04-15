/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_vehicle", "_litres", "_max", "_actual"];
_type = [_this, 0, true, [true]] call BIS_fnc_param;
_vehicle = [_this, 1, objNull, [objNull]] call BIS_fnc_param;
_litres = [_this, 2, 0, [0]] call BIS_fnc_param;
_carburant = [_this, 3, "", [""]] call BIS_fnc_param;

if ((isNull _vehicle) || (_litres isEqualTo 0) || (_carburant isEqualTo "")) exitWith {};
if (!isClass(missionConfigFile >> "ALYSIA_FUEL" >> _carburant)) exitWith {
	[format["%1 ne correspond pas à un type d'essence défini.", _carburant]] call AlysiaClient_fnc_error;
};
if (!isClass(missionConfigFile >> "ALYSIA_VEHICLES" >> typeOf(_vehicle))) exitWith {
	[format["%1 n'est pas fini dans ALYSIA_VEHICLES.", typeOf(_vehicle)]] call AlysiaClient_fnc_error;
};

_max = getNumber(missionConfigFile >> "ALYSIA_VEHICLES" >> typeof(_vehicle) >> "fuelCapacity");
if (_type) then
{
	_actual = ((fuel _vehicle) * _max) + _litres;
	if (_actual > _max) then {_actual = _max};
} else {
	_actual = ((fuel _vehicle) * _max) - _litres;
	if (_actual < 0) then {_actual = 0};
};

_actual = _actual / _max;
if (local _vehicle) then {
	_vehicle setFuel _actual;
} else {
	[_vehicle, _actual] remoteExecCall ["setFuel", _vehicle];
};

if (_carburant != getText(missionConfigFile >> "ALYSIA_VEHICLES" >> typeOf(_vehicle) >> "fuel")) then
{
	if ((_vehicle getVariable ["refuel_type", ""]) != _carburant) then {
		_vehicle setVariable ["refuel_type", _carburant, true];
	};
};
