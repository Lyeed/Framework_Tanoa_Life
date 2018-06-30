/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[VEHICLES] Loading";

["DELETE vehicles.* FROM vehicles INNER JOIN players ON vehicles.pid=players.uid WHERE DATEDIFF(NOW(),players.STATS_last_update)>31", 1] call ExtDB3_fnc_async;
uiSleep 1;

{
	diag_log format["Loading vehicle -%1- %2", (_x select 4), (_x select 2)];

	_position = [(_x select 5), (_x select 6), (_x select 7)];
	if (_position isEqualTo [0,0,0]) then
	{
		diag_log "[ERROR] Cannot spawn : no position";
		[format["UPDATE vehicles SET active='0',POS_store_x='0',POS_store_y='0',POS_store_z='0' WHERE plate='%1'", (_x select 4)], 1] call ExtDB3_fnc_async;
	} else {
		_vehicle = createVehicle [(_x select 2), [0, 0, 0], [], 0, "NONE"];
		waitUntil {!(isNull _vehicle)};
		diag_log "Vehicle spawned";

		_vehicle allowDamage false;

		if (surfaceIsWater _position) then {
			_vehicle setPosASL (ATLToASL _position);
		} else {
			_vehicle setPosATL _position;
		};

		_vehicle setDir (_x select 8);
		_vehicle setFuel ((_x select 11) / 100);
		_vehicle lock 2;

		_hitpoints = ([_vehicle] call AlysiaClient_fnc_getAllHitPointsDamage) select 0;

		{
			if ((_x > 0) && !(isNil {(_hitpoints select _forEachIndex)}) && {(_hitpoints select _forEachIndex) != ""}) then
			{
				if (local _vehicle) then {
					_vehicle setHitIndex [_forEachIndex, _x];
				} else {
					[_vehicle, [_forEachIndex, _x]] remoteExecCall ["setHitIndex", _vehicle];
				};
			};
		} forEach ([_x select 0] call AlysiaServer_fnc_mresToArray);

		[(_x select 3), ([(_x select 1)] call AlysiaClient_fnc_strToSide), _vehicle] call AlysiaServer_fnc_keyManagement;
		[_vehicle] call AlysiaClient_fnc_clearVehicleAmmo;

		/*
		0 - pid
		1 - playerName
		2 - plate
		3 - assurance
		*/
		_vehicle setVariable ["info", [(_x select 3), (_x select 9), (_x select 4), (_x select 10)], true];

		_trunk = [(_x select 12)] call AlysiaServer_fnc_mresToArray;
		if (!(_trunk isEqualTo [])) then {
			_vehicle setVariable ["Trunk", _trunk, true];
		};

		_fuel_type = _x select 13;
		if (_fuel_type != "") then {
			_vehicle setVariable ["refuel_type", _fuel_type, true];
		};

		_vehicle allowDamage true;
	};
} forEach ((["SELECT vehicles.HitPointsDamage,vehicles.side,vehicles.classname,vehicles.pid,vehicles.plate,vehicles.POS_x,vehicles.POS_y,vehicles.POS_z,vehicles.POS_direction,players.profileName,vehicles.assurance,vehicles.fuel,vehicles.inventory,vehicles.fuel_type FROM vehicles INNER JOIN players ON vehicles.pid=players.uid WHERE active='1'", 2] call ExtDB3_fnc_async));

diag_log "[VEHICLES] Ready";

/*
0	vehicles.HitPointsDamage
1	vehicles.side
2	vehicles.classname
3	vehicles.pid
4	vehicles.plate
5	vehicles.POS_x
6	vehicles.POS_y
7	vehicles.POS_z
8	vehicles.POS_direction
9	players.profileName
10	vehicles.assurance
11	vehicles.fuel
12	vehicles.inventory
13  vehicles.fuel_type
*/
