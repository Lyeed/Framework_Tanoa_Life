/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_name", "_owner", "_type", "_plate", "_owner_name", "_position", "_direction", "_object", "_require"];
_name = [_this, 0, "", [""]] call BIS_fnc_param;
_owner = [_this, 1, "", [""]] call BIS_fnc_param;
_type = [_this, 2, "", [""]] call BIS_fnc_param;
_plate = [_this, 3, "", [""]] call BIS_fnc_param;
_owner_name = [_this, 4, "", [""]] call BIS_fnc_param;
_position = [_this, 5, [], [[]]] call BIS_fnc_param;
_direction = [_this, 6, 0, [0]] call BIS_fnc_param;
_require = [_this, 7, [], [[]]] call BIS_fnc_param;

_object = getText(missionConfigFile >> "ALYSIA_COMPANIES_BUILDINGS" >> getText(missionConfigFile >> "ALYSIA_COMPANIES_TYPES" >> _type >> "building") >> "bedrock") createVehicle _position;
_object setDir _direction;

_object setVariable ["construction_require", _require, true];
_object setVariable ["company_info", [_name, _owner, _type, _plate, _owner_name], true];
_object setVariable ["construction", true, true];

_object;
