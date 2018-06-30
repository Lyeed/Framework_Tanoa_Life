/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_unit", "_id", "_uid", "_name"];
_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_id = [_this, 1, -1, [0]] call BIS_fnc_param;
_uid = [_this, 2, "", [""]] call BIS_fnc_param;
_name = [_this, 3, "", [""]] call BIS_fnc_param;

if ((isNull _unit) || (_id isEqualTo -1)) exitWith {};

_name = _unit getVariable "realname";
if (!(isNil "_name")) then
{
	private["_gear", "_pos", "_query"];
	_gear = [_unit] call AlysiaClient_fnc_getGear;

	_query = switch (side _unit) do
	{
		case west: {format["WEST_gear='%1',", ([_gear] call AlysiaServer_fnc_mresArray)]};
		case east: {format["EAST_gear='%1',", ([_gear] call AlysiaServer_fnc_mresArray)]};
		case independent: {format["GUER_gear='%1',", ([_gear] call AlysiaServer_fnc_mresArray)]};
		default {format["CIV_gear='%1',", ([_gear] call AlysiaServer_fnc_mresArray)]};
	};

	_pos = getPosATL _unit;
	[
		format
		[
			"UPDATE players SET %1 POS_x='%3',POS_y='%4',POS_z='%5',POS_direction='%6',HEALTH_fatigue='%7',PHONE_number='%8',HEALTH_coma='%9',HEALTH_hurt='%10' WHERE uid='%2'",
			_query,
			_uid,
			(_pos select 0),
			(_pos select 1),
			(_pos select 2),
			(getDir _unit),
			(getFatigue _unit),
			(_unit getVariable ["number", ""]),
			([(_unit getVariable ["is_coma", false])] call AlysiaServer_fnc_bool),
			([(_unit getVariable ["bullet_check", false])] call AlysiaServer_fnc_bool)
		], 1
	] call ExtDB3_fnc_async;

	{
		if (!(isNull _x)) then
		{
			if (!(_x getVariable ["ready", false])) then
			{
				diag_log format["[lyeed] CLEANING %1", _x];
				deleteVehicle _x;
			};
		};
	} forEach (missionNamespace getVariable [format["%1_PLANTS", _uid], []]);

	{
		if (typeOf(_x) in ["Alsatian_Sand_F", "Alsatian_Black_F", "Alsatian_Sandblack_F"]) then {deleteVehicle _x};
	} forEach (units (group _unit));

	if (_unit getVariable ["is_coma", false]) then {
		[_unit, _uid] call AlysiaServer_fnc_logDeathDisconnect;
	};
};

{
	deleteVehicle _x;
} forEach (nearestObjects [_unit, ["WeaponHolderSimulated", "GroundWeaponHolder"], 3]);

if ((units (group _unit)) isEqualTo []) then
{
	diag_log "DELETING GROUP";
	deleteGroup (group _unit);
};

deleteVehicle _unit;
