/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_position", "_object", "_owner", "_plate", "_name", "_dir", "_require"];
_type = [_this, 0, "", [""]] call BIS_fnc_param;
_object = [_this, 1, objNull, [objNull]] call BIS_fnc_param;
_owner = [_this, 2, objNull, [objNull]] call BIS_fnc_param;
_name = [_this, 3, "", [""]] call BIS_fnc_param;

if ((_type isEqualTo "") || (isNull _object) || (isNull _owner) || (_name isEqualTo "")) exitWith {};

_position = getPos _object;
_dir = getDir _object;
_require = getArray(missionConfigFile >> "ALYSIA_COMPANIES_BUILDINGS" >> typeOf(_object) >> "construction");
_plate = str(round(random(999999)));

[
	format
	[
		"INSERT INTO companies (name,owner,type,plate,POS_x,POS_y,POS_z,POS_direction,members,CONSTRUCTION_require,INV_virtual,INV_arma) VALUES ('%1','%2','%3','%4','%5','%6','%7','%8','""[[],[]]""','%9','""[]""','""[[],[],[],[]]""')",
		_name,
		getPlayerUID _owner,
		_type,
		_plate,
		_position select 0,
		_position select 1,
		_position select 2,
		_dir,
		[_require] call AlysiaServer_fnc_mresArray
	], 1
] call ExtDB3_fnc_async;

gServer_companies pushBack ([_name, (getPlayerUID _owner), _type, _plate, (_owner getVariable ["realname", (name _owner)]), _position, _dir, _require] call AlysiaServer_fnc_construction_init);
deleteVehicle _object;
