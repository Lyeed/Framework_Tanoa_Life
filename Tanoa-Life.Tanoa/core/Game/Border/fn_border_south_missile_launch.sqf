/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_begin", "_object_target", "_added_height", "_missile"];
_begin = [_this, 0, [], [[]]] call BIS_fnc_param;
_object_target = [_this, 1, objNull, [objNull]] call BIS_fnc_param;
_type = [_this, 2, "M_Zephyr", [""]] call BIS_fnc_param;
_added_height = [_this, 3, 5, [5]] call BIS_fnc_param;

if ((_begin isEqualTo []) || (isNull _object_target)) exitWith {};
if (!(_type in ["M_Air_AA_MI02", "M_Titan_AA_long", "M_Zephyr", "M_Air_AA"])) exitWith {};

_missile = _type createVehicle [(_begin select 0), (_begin select 1), (_begin select 2) + _added_height];
_missile setVectorDirAndUp [[0,0,10],[10,10,10]];

[_missile] remoteExec ["AlysiaClient_fnc_border_south_missile_effects", -2];

uiSleep 4;

_missile_speed = 50;
_maxVeloc = 300;
if (_missile_speed > _maxVeloc) then {_missile_speed = _maxVeloc};

_homeMissile =
{
	if (_missile_speed < _maxVeloc) then {_missile_speed = _missile_speed + 10};

	_missile setDir ([_missile, _object_target] call BIS_fnc_DirTo);
	_relDirVer = asin ((((getPosASL _missile) select 2) - ((getPosASL _object_target) select 2)) / (_object_target distance _missile));
	_relDirVer = (_relDirVer * -1);
	[_missile, _relDirVer, 0] call BIS_fnc_setPitchBank;

	_travelTime = (_object_target distance _missile) / _missile_speed;

	[
		(((getPosASL _object_target) select 0) - ((getPosASL _missile) select 0)) / _travelTime,
		(((getPosASL _object_target) select 1) - ((getPosASL _missile) select 1)) / _travelTime,
		(((getPosASL _object_target) select 2) - ((getPosASL _missile) select 2)) / _travelTime
	]
};

call _homeMissile;

while {alive _missile} do
{
	_velocityForCheck = call _homeMissile;
	_missile setVelocity _velocityForCheck;
	uiSleep (1 / 25);
};
