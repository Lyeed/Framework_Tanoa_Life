/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[FACTION] Setup";

{
	_handle = switch (_x select 0) do
	{
		case "WEST":
		{
			gServer_faction_WEST_bank = _x select 1;
			gServer_faction_WEST_history = [(_x select 2)] call AlysiaServer_fnc_mresToArray;
			gServer_faction_WEST_bank_HISTORY = gServer_faction_WEST_bank;
			publicVariable "gServer_faction_WEST_bank";
			true;
		};
		case "GUER":
		{
			gServer_faction_GUER_bank = _x select 1;
			gServer_faction_GUER_history = [(_x select 2)] call AlysiaServer_fnc_mresToArray;
			gServer_faction_GUER_bank_HISTORY = gServer_faction_GUER_bank;
			publicVariable "gServer_faction_GUER_bank";
			true;
		};
		case "EAST":
		{
			gServer_faction_EAST_bank = _x select 1;
			gServer_faction_EAST_history = [(_x select 2)] call AlysiaServer_fnc_mresToArray;
			gServer_faction_EAST_bank_HISTORY = gServer_faction_EAST_bank;
			publicVariable "gServer_faction_EAST_bank";
			true;
		};
		case "CIV":
		{
			gServer_faction_CIV_bank = _x select 1;
			gServer_faction_CIV_history = [(_x select 2)] call AlysiaServer_fnc_mresToArray;
			gServer_faction_CIV_bank_HISTORY = gServer_faction_CIV_bank;
			publicVariable "gServer_faction_CIV_bank";
			true;
		};
		default {false};
	};

	if (_handle) then {
		diag_log format["Faction %1 | Bank=%2", (_x select 0), (_x select 1)];
	} else {
		diag_log format["[ERROR] Invalid faction %1 : cannot load", (_x select 0)];
	};
} forEach (["SELECT name,bank,history FROM factions", 2] call ExtDB3_fnc_async);

diag_log "[FACTION] Ready";
