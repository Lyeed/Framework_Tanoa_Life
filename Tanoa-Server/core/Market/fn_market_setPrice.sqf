/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_price", "_max", "_min", "_config", "_item"];
_item = [_this, 0, "", [""]] call BIS_fnc_param;

if (_item isEqualTo "") exitWith {};

_config = missionConfigFile >> "ALYSIA_ITEMS" >> _item;
if (!isClass(_config)) exitWith {};

_price = round([_this, 1, 1, [0]] call BIS_fnc_param);

_max = getNumber(_config >> "market" >> "max");
if (_price > _max) then {
	_price = _max;
};

_min = getNumber(_config >> "market" >> "min");
if (_price < _min) then {
	_price = _min;
};

missionNamespace setVariable [
	format["market_%1", _item],
	_price,
	[_this, 2, false, [false]] call BIS_fnc_param
];
