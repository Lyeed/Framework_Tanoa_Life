/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_object", "_marker", "_new"];
_marker = [_this, 0, "", [""]] call BIS_fnc_param;

if (_marker isEqualTo "") exitWith {};

_marker setMarkerAlpha 0;
_new = [_marker] call AlysiaServer_fnc_dynamicMarkers_getPos;
if (_new isEqualTo [0,0,0]) exitWith
{
	diag_log format["[ERROR] Dynamic marker %1 has no possible positions", _marker];
	deleteMarker _marker;
	_object = missionNamespace getVariable [format["dyn_marker_linked_%1", _marker], objNull];
	if (!(isNull _object)) then {deleteVehicle _object};
};

_marker setMarkerPos _new;
_object = missionNamespace getVariable [format["dyn_marker_linked_%1", _marker], objNull];
if (!(isNull _object)) then {_object setPosATL _new};

{
	_x setPos ([_new, 8] call CBA_fnc_randPos);
} forEach (missionNamespace getVariable [format["dyn_marker_supp_%1", _marker], []]);

[
	format
	[
		"UPDATE dynamic_markers SET POS_X='%1',POS_Y='%2',POS_Z='%3' WHERE name='%4'",
		(_new select 0),
		(_new select 1),
		(_new select 2),
		_marker
	], 1
] call ExtDB3_fnc_async;

[_marker] remoteExecCall ["AlysiaClient_fnc_dynamicMarkers_update", -2];
