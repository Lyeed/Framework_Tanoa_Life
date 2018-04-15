/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_value", "_type", "_from", "_ret"];
_type = [_this, 0, false, [false]] call BIS_fnc_param;
_value = abs(round([_this, 1, 0, [0]] call BIS_fnc_param));
_from = [_this, 2, "", [""]] call BIS_fnc_param;
_ret = false;

if (_value isEqualTo 0) exitWith {};

if (_type) then
{
	g_atm = g_atm + _value;
	_ret = true;
} else {
	g_atm = g_atm - _value;
	if (g_atm < 0) then {
		g_atm = 0;
	} else {
		_ret = true;
	};
};

g_atm_from pushBack format["(%1%2) %3/%6/7 à %4 - %5", if (_type) then {"+"} else {"-"}, _value, (date select 2), (call AlysiaClient_fnc_strTime), _from, (date select 1), (date select 0)];
_ret;
