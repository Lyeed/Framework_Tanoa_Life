/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_pos", "_ret"];
_pos = [_this, 0, [0,0,0], [[]]] call BIS_fnc_param;

if (_pos isEqualTo [0,0,0]) exitWith {false};

_ret = false;

{
	if ((_pos distance (getMarkerPos _x)) < 40) exitWith {_ret = true};
} forEach (["fourriere_marker_2","fourriere_marker_3","fourriere_marker_1"]);

_ret;
