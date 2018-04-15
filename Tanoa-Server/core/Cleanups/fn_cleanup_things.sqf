/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

{
	if (typeOf(_x) isEqualTo "Skyline_Alysia_Boite_01_F") then
	{
		_count = _x getVariable ["afk_count", 0];
		if (_count < 1) then {
			_x setVariable ["afk_count", (_count + 1)];
		} else {
			diag_log "[CLEANUP] Suitcase removed";
			deleteVehicle _x;
		};
	};
} forEach (allMissionObjects "Thing");
