/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_data", "_allowed", "_bad"];
_data = [_this, 0, "", [""]] call BIS_fnc_param;
_allowed = toArray([_this, 1, "", [""]] call BIS_fnc_param);

_bad = "";
{
	if (!(_x in _allowed)) exitWith {_bad = _x};
} foreach toArray(_data);

toString([_bad]);
