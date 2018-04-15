/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_mode", "_data"];
_mode = [_this, 0, -1, [0]] call BIS_fnc_param;

_data = switch (_mode) do
{
	case 0: {[g_cash, g_atm]};
	case 1: {[(call AlysiaClient_fnc_getInv), ([player] call AlysiaClient_fnc_getGear)]};
	case 3: {[g_arrest_Time, (vehicleVarName g_arrest_Prison), g_arrest_Cellule, g_arrest_Caution, g_arrest_Gear, g_arrest_Reason, g_arrest_Escape]};
};

if (!(isNil "_data")) then {
	[(getPlayerUID player), playerSide, _data, _mode] remoteExec ["AlysiaServer_fnc_query_update_partial", 2];
};
