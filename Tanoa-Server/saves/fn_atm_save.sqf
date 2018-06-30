/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[ATM] Saving ...";

["DELETE FROM land_atms", 1] call ExtDB3_fnc_async;

uiSleep 1;

{
	_config = missionConfigFile >> "ALYSIA_ATM" >> typeOf(_x);
	if (isClass(_config)) then
	{
		if (getNumber(_config >> "save") isEqualTo 1) then
		{
			[
				format
				[
					"INSERT INTO land_atms (type,amount,POS_X,POS_Y,POS_Z) VALUES ('%1','%2','%3','%4','%5')",
					typeOf(_x),
					(_x getVariable ["money", getNumber(_config >> "money_stock")]),
					(getPos _x) select 0,
					(getPos _x) select 1,
					(getPos _x) select 2
				], 1
			] call ExtDB3_fnc_async;
		};
	};
} forEach (allMissionObjects "All");

diag_log "[ATM] Saved";
