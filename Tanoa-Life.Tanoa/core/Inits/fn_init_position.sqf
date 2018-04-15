/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if ((player getVariable ["arrested", false]) && !(isNull g_arrest_Prison)) then {
	[] spawn AlysiaClient_fnc_prison_loop;
} else {
	if (!g_is_alive || ((count _this) != 3) || (_this isEqualTo [0,0,0]) || {(_this distance [1264.85,560.408,0.000864983]) < 150}) then
	{
		_marker = getText(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "respawn" >> "marker");
		player setPos (getMarkerPos _marker);
		player setDir (markerDir _marker);
	} else {
		if (surfaceIsWater _this) then {
			player setPosASL (ATLToASL _this);
		} else {
			player setPosATL [_this select 0, _this select 1, (_this select 2) + 0.20];
		};
	};
};

g_is_alive = true;
true;
