/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_marker", "_name", "_config", "_position", "_linked"];
_name = [_this, 0, "", [""]] call BIS_fnc_param;
_position = [_this, 1, [], [[]]] call BIS_fnc_param;

if (_position isEqualTo []) exitWith {};

_config = missionConfigFile >> "ALYSIA_DYN_MARKERS" >> _name;
if (!isClass _config) exitWith {};

_marker = createmarker [_name, _position];
diag_log format["Creating dynamic marker %1", _name];

_marker setMarkerShape getText(_config >> "shape");
_marker setMarkerType getText(_config >> "type");
_marker setMarkerColor getText(_config >> "color");
_marker setMarkerText getText(_config >> "text");
_marker setMarkerSize [getNumber(_config >> "size"), getNumber(_config >> "size")];

_linked = getText(_config >> "linked");
if (_linked != "") then
{
	private "_object";
	_object = call compile _linked;
	if (isNil "_object") then {
		diag_log format["[ERROR] Can't find linked object for %1 (variable nil)", _name];
	} else {
		if (isNull _object) then {
			diag_log format["[ERROR] Can't find linked object for %1 (objet null)", _name];
		} else {
			_object setPosATL _position;
			missionNamespace setVariable [format["dyn_marker_linked_%1", _marker], _object];
			diag_log format["Linked object for %1 placed", _name];
		};
	};
};

{
	_object = _x createVehicle ([_position, 8] call CBA_fnc_randPos);
	missionNamespace setVariable [format["dyn_marker_supp_%1", _marker], (missionNamespace getVariable [format["dyn_marker_supp_%1", _marker], []]) + [_object]];
} forEach getArray(_config >> "nearObjects");

_marker;
