/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_object", "_info", "_labo", "_owner"];
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _object) exitWith {};

_info = _object getVariable "laboratory_info";

_labo = [
	_info select 1,
	_info select 2,
	_info select 0,
	getPosATL _object,
	getDir _object,
	[],
	[]
] call AlysiaServer_fnc_laboratory_init;

gServer_laboratories set [(gServer_laboratories find _object), _labo];
deleteVehicle _object;

_owner = [(_info select 1)] call AlysiaClient_fnc_getPlayerFromUID;
if (!(isNull _owner)) then {
	[_labo] remoteExecCall ["AlysiaClient_fnc_labo_update_build", _owner];
};
