/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_owner", "_type", "_plate", "_position", "_direction", "_extra_process", "_object"];
_owner = [_this, 0, "", [""]] call BIS_fnc_param;
_type = [_this, 1, "", [""]] call BIS_fnc_param;
_plate = [_this, 2, -1, [-1]] call BIS_fnc_param;
_position = [_this, 3, [0,0,0], [[]]] call BIS_fnc_param;
_direction = [_this, 4, 0, [0]] call BIS_fnc_param;
_extra_process = [_this, 5, [], [[]]] call BIS_fnc_param;
_inv_virtual =[_this, 6, [], [[]]] call BIS_fnc_param;

_object = getText(missionConfigFile >> "ALYSIA_LABORATORIES" >> _type >> "object") createVehicle [0,0,0];
_object setPosATL _position;
_object setDir _direction;

if (count(_extra_process) > 0) then {
	_object setVariable ["extra_process", _extra_process, true];
};
if (count(_inv_virtual) > 0) then {
	_object setVariable ["laboratory_inv_virtual", _inv_virtual, true];
};

_object setVariable ["laboratory_info", [_plate, _owner, _type], true];
/*
	0 - plate
	1 - owner
	2 - type
*/

_object;
