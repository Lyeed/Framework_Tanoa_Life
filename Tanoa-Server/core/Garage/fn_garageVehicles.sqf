/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_types", "_unit", "_queryResult", "_types_formated"];
_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_types = [_this, 1, [], [[]]] call BIS_fnc_param;

if ((isNull _unit) || (_types isEqualTo "")) exitWith {};

_types_formated = "";
{
	_types_formated = format["%1%2'%3'", _types_formated, if (_forEachIndex isEqualTo 0) then {""} else {","}, _x];
} forEach _types;

if (_types_formated isEqualTo "") exitWith {
	[[]] remoteExecCall ["AlysiaClient_fnc_garageOpen", (owner _unit)];
};

_queryResult =
[
	format
	[
		"SELECT classname,plate,assurance,fuel,inventory,displayname,POS_store_x,POS_store_y,POS_store_z,type,HitPointsDamage,fuel_type FROM vehicles WHERE pid='%1' AND active='0' AND side='%2' AND type IN (%3) AND occuped='0'",
		(getPlayerUID _unit),
		str(side _unit),
		_types_formated
	], 2
] call ExtDB3_fnc_async;

{
	(_queryResult select _forEachIndex) set [4, [(_x select 4)] call AlysiaServer_fnc_mresToArray];// inventory
	(_queryResult select _forEachIndex) set [10, [(_x select 10)] call AlysiaServer_fnc_mresToArray];// HitPointsDamage
} forEach _queryResult;

[_queryResult] remoteExecCall ["AlysiaClient_fnc_garageOpen", (owner _unit)];
/*
	0 classname
	1 plate
	2 assurance
	3 fuel
	4 inventory
	5 displayname
	6 POS_store_x
	7 POS_store_y
	8 POS_store_z
	9 type
	10 HitPointsDamage
	11 fuel_type
*/
