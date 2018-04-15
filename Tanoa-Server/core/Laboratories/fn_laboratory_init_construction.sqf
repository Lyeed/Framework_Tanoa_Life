/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_owner", "_type", "_plate", "_position", "_direction", "_require", "_object"];
_owner = [_this, 0, "", [""]] call BIS_fnc_param;
_type = [_this, 1, "", [""]] call BIS_fnc_param;
_plate = [_this, 2, -1, [-1]] call BIS_fnc_param;
_position = [_this, 3, [0,0,0], [[]]] call BIS_fnc_param;
_direction = [_this, 4, 0, [0]] call BIS_fnc_param;
_require = [_this, 5, [], [[]]] call BIS_fnc_param;

_object = getText(missionConfigFile >> "ALYSIA_LABORATORIES" >> _type >> "construction" >> "object") createVehicle [0,0,0];
_object setPosATL _position;
_object setDir _direction;

_object setVariable ["construction_require", _require, true];
_object setVariable ["laboratory_info", [_plate, _owner, _type], true];
_object setVariable ["construction", true, true];

_object;
