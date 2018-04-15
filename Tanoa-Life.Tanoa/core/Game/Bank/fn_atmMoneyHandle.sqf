/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_atm", "_type", "_amount", "_config", "_actual", "_max"];
_atm = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_type = [_this, 1, false, [false]] call BIS_fnc_param;
_amount = [_this, 2, 0, [0]] call BIS_fnc_param;

if ((isNull _atm) || (_amount isEqualTo 0)) exitWith {};

_config = missionConfigFile >> "ALYSIA_ATM" >> typeOf(_atm);
if (!isClass(_config)) exitWith {};

_max = getNumber(_config >> "money_stock");
_actual = _atm getVariable ["money", _max];
if (_type) then
{
	if (_actual < _max) then
	{
		_actual = _actual + _amount;
		if (_actual > _max) then {_actual = _max};
		_atm setVariable ["money", _actual, true];
	};
} else {
	if (_actual > 0) then
	{
		_actual = _actual - _amount;
		if (_actual < 0) then {_actual = 0};
		_atm setVariable ["money", _actual, true];
	};
};
