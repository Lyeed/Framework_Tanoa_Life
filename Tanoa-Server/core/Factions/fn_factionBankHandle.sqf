/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_amount";
_amount = abs(round([_this, 2, 0, [0]] call BIS_fnc_param));

if (_amount isEqualTo 0) exitWith {};

switch ([_this, 0, sideUnknown, [sideUnknown]] call BIS_fnc_param) do
{
	case independent:
	{
		if ([_this, 1, false, [false]] call BIS_fnc_param) then {
			gServer_faction_GUER_bank = gServer_faction_GUER_bank + _amount;
		} else {
			gServer_faction_GUER_bank = gServer_faction_GUER_bank - _amount;
			if (gServer_faction_GUER_bank < 0) then {
				gServer_faction_GUER_bank = 0;
			};
		};

		publicVariable "gServer_faction_GUER_bank";
	};

	case west:
	{
		if ([_this, 1, false, [false]] call BIS_fnc_param) then {
			gServer_faction_WEST_bank = gServer_faction_WEST_bank + _amount;
		} else {
			gServer_faction_WEST_bank = gServer_faction_WEST_bank - _amount;
			if (gServer_faction_WEST_bank < 0) then {
				gServer_faction_WEST_bank = 0;
			};
		};

		publicVariable "gServer_faction_WEST_bank";
	};

	case east:
	{
		if ([_this, 1, false, [false]] call BIS_fnc_param) then {
			gServer_faction_EAST_bank = gServer_faction_EAST_bank + _amount;
		} else {
			gServer_faction_EAST_bank = gServer_faction_EAST_bank - _amount;
			if (gServer_faction_EAST_bank < 0) then {
				gServer_faction_EAST_bank = 0;
			};
		};

		publicVariable "gServer_faction_EAST_bank";
	};

	case civilian:
	{
		if ([_this, 1, false, [false]] call BIS_fnc_param) then {
			gServer_faction_CIV_bank = gServer_faction_CIV_bank + _amount;
		} else {
			gServer_faction_CIV_bank = gServer_faction_CIV_bank - _amount;
			if (gServer_faction_CIV_bank < 0) then {
				gServer_faction_CIV_bank = 0;
			};
		};

		publicVariable "gServer_faction_CIV_bank";
	};
};
