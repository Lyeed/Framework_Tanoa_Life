/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_object";

diag_log "[LABORATORIES] Setup";

["DELETE labo.* FROM labo INNER JOIN players ON labo.owner=players.uid WHERE DATEDIFF(NOW(),players.STATS_last_update)>31", 1] call ExtDB3_fnc_async;
uiSleep 1;

gServer_laboratories = [];

{

	if ((_x select 8) isEqualTo 1) then {
		_object = [(_x select 1), (_x select 2), (_x select 0), [(_x select 3), (_x select 4), (_x select 5)], (_x select 6), ([_x select 7] call AlysiaServer_fnc_mresToArray), ([_x select 10] call AlysiaServer_fnc_mresToArray)] call AlysiaServer_fnc_laboratory_init;
	} else {
		_object = [(_x select 1), (_x select 2), (_x select 0), [(_x select 3), (_x select 4), (_x select 5)], (_x select 6), ([_x select 9] call AlysiaServer_fnc_mresToArray)] call AlysiaServer_fnc_laboratory_init_construction;
	};

	diag_log format["Loading laboratory [%1] owner [%2] plate [%3]", (_x select 2), (_x select 1), (_x select 0)];
	gServer_laboratories pushBack _object;
} forEach (["SELECT plate,owner,type,POS_x,POS_y,POS_z,POS_direction,EXTRA_process,CONSTRUCTION_BUILT,CONSTRUCTION_REQUIRE,INV_virtual FROM labo", 2] call ExtDB3_fnc_async);
/*
	0 - plate
	1 - owner
	2 - type
	3 - POS_x
	4 - POS_y
	5 - POS_z
	6 - POS_direction
	7 - EXTRA_process
	8 - CONSTRUCTION_BUILT
	9 - CONSTRUCTION_REQUIRE
	10 - INV_virtual
*/

diag_log format["%1 laboratory(s) loaded", count gServer_laboratories];

diag_log "[LABORATORIES] Ready";
