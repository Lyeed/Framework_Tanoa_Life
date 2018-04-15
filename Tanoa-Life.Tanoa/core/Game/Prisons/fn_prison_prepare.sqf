/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private ["_prison", "_data", "_config_prison", "_config_cell"];
_prison = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_data = [_this, 1, [], [[]]] call BIS_fnc_param;

if (isNull _prison) exitWith {};

player setVariable ["arrested", true, true];
g_arrest_Escape = false;
g_arrest_Prison = _prison;
g_arrest_Cellule = _data select 0;
g_arrest_Time = round((_data select 1) * 60);
g_arrest_Caution = _data select 2;
g_arrest_Reason = _data select 3;
if (g_arrest_Gear isEqualTo []) then {
	g_arrest_Gear = [g_cash, ([player] call AlysiaClient_fnc_getGear), ([player] call AlysiaClient_fnc_getInv)];
};

[3] call AlysiaDB_fnc_query_update_partial;

g_cash = 0;

[] call AlysiaClient_fnc_stripDownPlayer;

_config_prison = missionConfigFile >> "ALYSIA_PRISONS" >> typeof(_prison);
_config_cell = _config_prison >> "cells" >> g_arrest_Cellule;

player setPosATL (g_arrest_Prison modelToWorld getArray(_config_cell >> "pos"));
player setDir getNumber(_config_cell >> "dir");
player forceAddUniform getText(_config_prison >> "uniform");
[true, "prison_food", 3] call AlysiaClient_fnc_handleinv;

[] spawn AlysiaClient_fnc_prison_loop;
