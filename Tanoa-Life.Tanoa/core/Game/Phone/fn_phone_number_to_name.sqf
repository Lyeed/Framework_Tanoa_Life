/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_number", "_ret"];
_number = [_this, 0, "", [""]] call BIS_fnc_param;

_ret = _number;
if (_number in ["GUER", "WEST", "EAST", "CIV"]) then {
	_ret = getText(missionConfigFile >> "ALYSIA_FACTIONS" >> _number >> "name");
} else {
	{
		if ((_x select 1) isEqualTo _number) exitWith {
			_ret = _x select 0;
		};
	} forEach (g_phone_contacts);
};

_ret;
