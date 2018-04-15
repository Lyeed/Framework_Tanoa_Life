/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_value", "_type"];
_type = [_this, 0, false, [false]] call BIS_fnc_param;
_value = abs(round([_this, 1, 0, [0]] call BIS_fnc_param));

if (_value isEqualTo 0) exitWith {};

if (_type) then {
	g_cash = g_cash + _value;
} else {
	g_cash = g_cash - _value;
	if (g_cash < 0) then {g_cash = 0};
};
