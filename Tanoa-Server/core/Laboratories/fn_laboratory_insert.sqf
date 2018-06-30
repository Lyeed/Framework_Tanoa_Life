/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_uid", "_object", "_plate", "_type", "_require"];
_uid = [_this, 0, "", [""]] call BIS_fnc_param;
_object = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_param;
_type = [_this, 2, "", [""]] call BIS_fnc_param;

if ((_uid isEqualTo "") || (isNull _object) || (_type isEqualTo "")) exitWith {};

uiSleep 3;

_plate = round(random(999999));
_require = getArray(missionConfigFile >> "ALYSIA_LABORATORIES" >> _type >> "construction" >> "require");
_pos = getPosATL _object;

[
	format
	[
		"INSERT INTO labo (owner,plate,POS_x,POS_y,POS_z,POS_direction,type,EXTRA_process,CONSTRUCTION_require,CONSTRUCTION_built,INV_virtual) VALUES ('%1','%2','%3','%4','%5','%6','%7','""[]""','%8',0,'""[]""')",
		_uid,
		_plate,
		_pos select 0,
		_pos select 1,
		_pos select 2,
		getDir _object,
		_type,
		[_require] call AlysiaServer_fnc_mresArray
	], 1
] call ExtDB3_fnc_async;

gServer_laboratories pushBack ([_uid, _type, _plate, _pos, (getdir _object), _require] call AlysiaServer_fnc_laboratory_init_construction);
deleteVehicle _object;
