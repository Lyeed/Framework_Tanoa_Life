/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_year", "_day", "_month", "_ret"];
_day = [_this, 0, 1, [1]] call BIS_fnc_param;
_month = [_this, 1, 1, [1]] call BIS_fnc_param;
_year = [_this, 2, ((date select 0) - 18), [1]] call BIS_fnc_param;

_ret = (date select 0) - _year;
if (((date select 1) < _month) || (((date select 1) isEqualTo _month) && ((date select 2) < _day)))  then {
	_ret = _ret - 1;
};

_ret;
