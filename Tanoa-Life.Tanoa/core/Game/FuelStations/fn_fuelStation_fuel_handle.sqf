/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_station", "_fuel", "_amount", "_config_station", "_max", "_actual"];
_type = [_this, 0, false, [false]] call BIS_fnc_param;
_station = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_param;
_fuel = [_this, 2, "", [""]] call BIS_fnc_param;
_amount = round([_this, 3, 1, [1]] call BIS_fnc_param);

if (_fuel isEqualTo "") exitWith {};

_config_station = missionConfigFile >> "ALYSIA_FUEL_STATION" >> typeof(_station);
if (!isClass(_config_station)) exitWith {};
if (!isClass(missionConfigFile >> "ALYSIA_FUEL" >> _fuel)) exitWith {};

_max = getNumber(_config_station >> "stock" >> _fuel >> "max");
_actual = _station getVariable [_fuel, _max];
if (_type) then
{
	if (_actual < _max) then
	{
		_actual = _actual + _amount;
		if (_actual > _max) then {_actual = _max};
		_station setVariable [_fuel, _actual, true];
	};
} else {
	if (_amount > 0) then
	{
		_actual = _actual - _amount;
		if (_actual < 0) then {_actual = 0};
		_station setVariable [_fuel, _actual, true];
	};
};
