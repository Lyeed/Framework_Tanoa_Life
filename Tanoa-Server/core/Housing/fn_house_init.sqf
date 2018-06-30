/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_countFail", "_countOk"];

diag_log "[HOUSE] Setup";

["DELETE houses.* FROM houses INNER JOIN players ON houses.pid=players.uid WHERE DATEDIFF(NOW(),players.STATS_last_update)>31", 1] call ExtDB3_fnc_async;
uiSleep 1;

_countFail = 0;
_countOk = 0;
gServer_houses = [];

{
	_house = nearestObject [[(_x select 2), (_x select 3), (_x select 4)], (_x select 7)];
	if (isNull _house) then
	{
		diag_log format["[ERROR] Can't load house [%1] owner [%2] (objNull)", (_x select 7), (_x select 1)];
		[format["DELETE FROM houses WHERE plate='%1'", (_x select 0)], 1] call ExtDB3_fnc_async;
		_countFail = _countFail + 1;
	} else {
		if (_house in gServer_houses) then {
			diag_log format["[ERROR] Can't load house [%1] owner [%2] (already in gServer_houses)", (_x select 7), (_x select 1)];
		} else {
			_house setVariable ["house_owner", [(_x select 1), (_x select 5), (_x select 0)], true];
			_house setVariable ["house_tenants", ([(_x select 6)] call AlysiaServer_fnc_mresToArray), false];

			if (getNumber(missionConfigFile >> "ALYSIA_HOUSES" >> typeOf(_house) >> "disableLockDoorOnStartup") isEqualTo 0) then
			{
				for "_i" from 1 to getNumber(configFile >> "CfgVehicles" >> (typeOf _house) >> "numberOfDoors") do
				{
					_house animate [format["door_%1_rot", _i], 0];
					_house setVariable [format["bis_disabled_Door_%1", _i], 1, true];
				};
			};

			_countOk = _countOk + 1;
			gServer_houses pushBack _house;
		};
	};
} forEach (["SELECT houses.plate,houses.pid,houses.POS_x,houses.POS_y,houses.POS_z,players.profileName,houses.tenants,houses.classname FROM houses INNER JOIN players ON houses.pid=players.uid", 2] call ExtDB3_fnc_async);
/*
	0:houses.plate
	1:houses.pid
	2:houses.POS_x
	3:houses.POS_y
	4:houses.POS_z
	5:players.profileName
	6:houses.tenants
	7:houses.classname
*/

diag_log format["%1 house(s) loaded succefully", _countOk];
diag_log format["%1 house(s) failed", _countFail];

diag_log "[HOUSE] Ready";
