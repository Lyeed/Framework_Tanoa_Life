/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_object", "_info", "_owner", "_company"];
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _object) exitWith {};

_info = _object getVariable "company_info";

_company = [
	(_info select 0),
	(_info select 1),
	(_info select 2),
	(_info select 3),
	(_info select 4),
	getPos _object,
	getDir _object,
	[[(_info select 1)], [(_info select 4)]],
	0,
	[],
	[[],[],[],[]],
	[]
] call AlysiaServer_fnc_company_init;

gServer_companies set [(gServer_companies find _object), _company];

deleteVehicle _object;

_owner = [(_info select 1)] call AlysiaClient_fnc_getPlayerFromUID;
if (!(isNull _owner)) then {
	[_company, true] remoteExecCall ["AlysiaClient_fnc_company_member_join", _owner];
};
