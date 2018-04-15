/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_uid", "_side", "_vehicle"];
_uid = [_this, 0, "", [""]] call BIS_fnc_param;
_side = [_this, 1, sideUnknown, [sideUnknown]] call BIS_fnc_param;
_vehicle = [_this, 2, objNull, [objNull]] call BIS_fnc_param;

if ((_uid isEqualTo "") || (_side isEqualTo sideUnknown) || (isNull _vehicle)) exitWith {};

_arr = missionNamespace getVariable [format["%1_KEYS_%2", _uid, _side], []];
_arr = _arr - [ObjNull];
if (!(_vehicle in _arr)) then {
	_arr pushBack _vehicle;
};

missionNamespace setVariable[format["%1_KEYS_%2", _uid, _side], _arr];
