/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[HOUSE] Saving ...";

{
	if (isNull _x) then {
		diag_log format["Can't save at index %1 : objNull", _forEachIndex];
	} else {
		_id = (_x getVariable "house_owner") select 2;
		if (isNil "_id") then {
			diag_log format["Can't save : %1 : _id nil", _x];
		} else {
			[
				format
				[
					"UPDATE houses SET tenants='%1' WHERE plate='%2'",
					[(_x getVariable ["house_tenants", []])] call AlysiaServer_fnc_mresArray,
					_id
				], 1
			] call ExtDB3_fnc_async;

			diag_log format["Saving house ID : %1", _id];
		};
	};
} forEach gServer_houses;

diag_log "[HOUSE] Saved";
