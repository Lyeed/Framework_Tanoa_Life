/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[VEHICLES] Saving...";

{
	if (alive _x) then
	{
		_info = _x getVariable "info";
		if (!(isNil "_info")) then
		{
			diag_log format["Saving vehicle -%1- [%2:%3]", typeOf(_x), (_info select 0), (_info select 1)];

			[
				format
				[
					"UPDATE vehicles SET active='1',POS_x='%1',POS_y='%2',POS_z='%3',POS_direction='%4',inventory='%5',fuel='%8',HitPointsDamage='%9',fuel_type='%10' WHERE pid='%6' AND plate='%7'",
					(getPosATL _x) select 0,
					(getPosATL _x) select 1,
					(getPosATL _x) select 2,
					(getDir _x),
					([(_x getVariable ["Trunk", []])] call AlysiaServer_fnc_mresArray),
					(_info select 0),
					(_info select 2),
					((fuel _x) * 100),
					([([_x] call AlysiaClient_fnc_getAllHitPointsDamage) select 2] call AlysiaServer_fnc_mresArray),
					(_x getVariable ["refuel_type", ""])
				], 1
			] call ExtDB3_fnc_async;
			deleteVehicle _x;
		};
	};
} forEach ((allMissionObjects "LandVehicle") + (allMissionObjects "Air") + (allMissionObjects "Ship"));

diag_log "[VEHICLES] Saved";
