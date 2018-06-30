/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_player", "_vehicle", "_plate", "_insurance", "_active", "_className", "_type"];
_player = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;
_vehicle = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_param;
_className = [_this, 2, "", [""]] call BIS_fnc_param;

if ((isNull _player) || (_className isEqualTo "")) exitWith {};

_plate = round(random(999999));
_insurance = getNumber(missionConfigFile >> "ALYSIA_VEHICLES" >> _className >> "insurance");

if (isNull _vehicle) then
{
	_active = 0;
	_type = switch (true) do
	{
		case (_className isKindOf "Tank"): {"Tank"};
		case (_className isKindOf "Air"): {"Air"};
		case (_className isKindOf "Ship"): {"Ship"};
		default {"Car"};
	};
} else {
	_active = 1;
	_vehicle setVariable ["info", [(getPlayerUID _player), (_player getVariable "realname"), _plate, _insurance], true];
	[(getPlayerUID _player), (side _player), _vehicle] call AlysiaServer_fnc_keyManagement;
	_type = switch (true) do
	{
		case (_vehicle isKindOf "Tank"): {"Tank"};
		case (_vehicle isKindOf "Air"): {"Air"};
		case (_vehicle isKindOf "Ship"): {"Ship"};
		default {"Car"};
	};
};

[
	format
	[
		"INSERT INTO vehicles (side,classname,type,pid,inventory,plate,displayname,HitPointsDamage,active,assurance) VALUES ('%1','%2','%3','%4','""[]""','%5','%6','""[]""','%7','%8')",
		str(side _player),
		_className,
		_type,
		(getPlayerUID _player),
		_plate,
		[getText(configFile >> "CfgVehicles" >> _className >> "displayName")] call AlysiaServer_fnc_mresString,
		_active,
		_insurance
	], 1
] call ExtDB3_fnc_async;
