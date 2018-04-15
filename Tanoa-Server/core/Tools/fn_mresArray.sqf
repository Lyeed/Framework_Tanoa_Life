/*
	File: fn_mresArray.sqf
	Author: Bryan "Tonic" Boardwine";
	
	Description:
	Acts as a mres (MySQL Real Escape) for arrays so they
	can be properly inserted into the database without causing
	any problems. The return method is 'hacky' but it's effective.
*/
private["_array"];
_array = [_this, 0, [], [[]]] call BIS_fnc_param;

if (_array isEqualTo []) exitWith {"""[]"""};

_array = toArray(str(_array));
{
	if (_x isEqualTo 34) then {
		_array set[_forEachIndex, 96];
	};
} forEach (_array);
str(toString(_array));