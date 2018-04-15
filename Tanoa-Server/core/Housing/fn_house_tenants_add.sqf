/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_houses", "_uid", "_side"];
_houses = [_this, 0, [], [[]]] call BIS_fnc_param;
_uid = [_this, 1, "", [""]] call BIS_fnc_param;
_side = [_this, 2, sideUnknown, [sideUnknown]] call BIS_fnc_param;

if ((_houses isEqualTo []) || (_uid isEqualTo "") || (_side isEqualTo sideUnknown)) exitWith {};

{
	if (!(isNull _x)) then
	{
		_tenants = _x getVariable ["house_tenants", []];
		if (!(_uid in _tenants)) then
		{
			_tenants pushBack _uid;
			_x setVariable ["house_tenants", _tenants];
		};
	};
} forEach _houses;
