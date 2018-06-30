/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[LABORATORIES] Saving laboratories ...";

{
	if (!(isNull _x)) then
	{
		_info = _x getVariable "laboratory_info";
		if (!(isNil "_info")) then
		{
			[
				format
				[
					"UPDATE labo SET EXTRA_process='%1',CONSTRUCTION_BUILT='%2',CONSTRUCTION_REQUIRE='%3',INV_virtual='%5' WHERE plate='%4'",
					[(_x getVariable ["extra_process", []])] call AlysiaServer_fnc_mresArray,
					[!(_x getVariable ["construction", false]), 0] call AlysiaServer_fnc_bool,
					[(_x getVariable ["construction_require", []])] call AlysiaServer_fnc_mresArray,
					(_info select 0),
					[(_x getVariable ["laboratory_inv_virtual", []])] call AlysiaServer_fnc_mresArray
				], 1
			] call ExtDB3_fnc_async;
		};
	};
} forEach gServer_laboratories;

diag_log "[LABORATORIES] Laboratories saved";
