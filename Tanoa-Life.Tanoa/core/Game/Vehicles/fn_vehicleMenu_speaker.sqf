/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_ids", "_target"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {};

if (_target getVariable ["speaker_active", false]) exitWith
{
	_target setVariable ["speaker_active", false];
	["Haut parleurs éteints"] call AlysiaClient_fnc_info;
};

_ids = [];

{
	_ids pushBack (player addAction [format["Son : <t color='#FFFF33'>%1</t>", (_x select 0)],
		{
			_data = [_this, 3, [], [[]]] call BIS_fnc_param;
			[(_data select 1), (_data select 0)] call AlysiaClient_fnc_globalSay3d;
			(_data select 1) setVariable ["speaker_active", false];
		}, [(_x select 1), _target], 5000, true, true, "", ""]);
} forEach getArray(missionConfigFile >> "ALYSIA_VEHICLES" >> typeOf(_target) >> "speaker");

_target setVariable ["speaker_active", true];

waitUntil {(!(_target getVariable ["speaker_active", false]) || ((vehicle player) != _target) || ((driver (vehicle player)) != player))};

{
	player removeAction _x;
} forEach _ids;
