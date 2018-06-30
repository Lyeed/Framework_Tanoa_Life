/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_uid", "_side", "_value", "_mode", "_query"];
_uid = [_this, 0, "", [""]] call BIS_fnc_param;
_side = [_this, 1, sideUnknown, [civilian]] call BIS_fnc_param;
_mode = [_this, 3, -1, [0]] call BIS_fnc_param;

if ((_uid isEqualTo "") || (_side isEqualTo sideUnknown) || (_mode isEqualTo -1)) exitWith {};

_value = _this select 2;

_query = switch (_mode) do
{
	case 0:
	{
		switch (_side) do
		{
			case civilian: {format["CIV_cash='%1',CIV_atm='%2'", (_value select 0), (_value select 1)]};
			case west: {format["WEST_cash='%1',WEST_atm='%2'", (_value select 0), (_value select 1)]};
			case east: {format["EAST_cash='%1',EAST_atm='%2'", (_value select 0), (_value select 1)]};
			case independent: {format["GUER_cash='%1',GUER_atm='%2'", (_value select 0), (_value select 1)]};
		};
	};

	case 1:
	{
		switch (_side) do
		{
			case civilian: {format["CIV_inventory='%1',CIV_gear='%2'", [(_value select 0)] call AlysiaServer_fnc_mresArray, [(_value select 1)] call AlysiaServer_fnc_mresArray]};
			case west: {format["WEST_inventory='%1',WEST_gear='%2'", [(_value select 0)] call AlysiaServer_fnc_mresArray, [(_value select 1)] call AlysiaServer_fnc_mresArray]};
			case east: {format["EAST_inventory='%1',EAST_gear='%2'", [(_value select 0)] call AlysiaServer_fnc_mresArray, [(_value select 1)] call AlysiaServer_fnc_mresArray]};
			case independent: {format["GUER_inventory='%1',GUER_gear='%2'", [(_value select 0)] call AlysiaServer_fnc_mresArray, [(_value select 1)] call AlysiaServer_fnc_mresArray]};
		};
	};

	case 3:
	{
		format
		[
			"JAIL_time='%1',JAIL_prison='%2',JAIL_cell='%3',JAIL_caution='%4',JAIL_gear='%5',JAIL_reason='%6',JAIL_escape='%7'",
			(_value select 0),
			(_value select 1),
			(_value select 2),
			(_value select 3),
			([_value select 4] call AlysiaServer_fnc_mresArray),
			(_value select 5),
			([_value select 6] call AlysiaServer_fnc_bool)
		]
	};
	default {""};
};

if (_query != "") then {
	[format["UPDATE players SET %1 WHERE uid='%2'", _query, _uid], 1] call ExtDB3_fnc_async;
} else {
	diag_log format["[ERROR] %1 : cannot find _query for partial update", _this];
};
