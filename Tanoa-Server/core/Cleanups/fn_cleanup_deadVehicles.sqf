/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

{
	if ((_x isKindOf "Car") || (_x isKindOf "Ship") || (_x isKindOf "Air") || (_x isKindOf "Tank")) then
	{
		if (!(alive _x) || ((damage _x) >= 1)) then
		{
			_info = _x getVariable "info";
			if (!(isNil "_info")) then
			{
				[_x] call AlysiaServer_fnc_logDeadVehicles;
				[_info, true] call AlysiaServer_fnc_vehicleDelete;
			};

			deleteVehicle _x;
		};
	};
} forEach vehicles;
