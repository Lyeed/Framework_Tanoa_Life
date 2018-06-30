/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[FUEL] Saving ...";

diag_log "Cleaning land_fuels table...";
["DELETE FROM land_fuels", 1] call ExtDB3_fnc_async;

if (count(gServer_fuelStations) > 0) then
{
	uiSleep 1;

	{
		[
			format
			[
				"INSERT INTO land_fuels (type,POS_X,POS_Y,POS_Z,fuel_Diesel,fuel_SP95,fuel_SP98,fuel_Kerosene,fuel_GPL,fuel_BIO) VALUES ('%1','%2','%3','%4','%5','%6','%7','%8','%9','%10')",
				typeOf(_x),
				(getPos _x) select 0,
				(getPos _x) select 1,
				(getPos _x) select 2,
				[_x, "Diesel"] call AlysiaClient_fnc_fuelStation_fuel_getStock,
				[_x, "SP95"] call AlysiaClient_fnc_fuelStation_fuel_getStock,
				[_x, "SP98"] call AlysiaClient_fnc_fuelStation_fuel_getStock,
				[_x, "Kerosene"] call AlysiaClient_fnc_fuelStation_fuel_getStock,
				[_x, "GPL"] call AlysiaClient_fnc_fuelStation_fuel_getStock,
				[_x, "Bio"] call AlysiaClient_fnc_fuelStation_fuel_getStock
			], 1
		] call ExtDB3_fnc_async;
	} forEach gServer_fuelStations;
};

diag_log "[FUEL] Saved";
