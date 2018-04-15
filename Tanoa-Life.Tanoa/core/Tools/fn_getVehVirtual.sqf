/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_classname"];
_classname = [_this, 0, "", [""]] call BIS_fnc_param;

if (_classname isEqualTo "") exitWith {
	0;
};

if (!(isClass(missionConfigFile >> "ALYSIA_VEHICLES" >> _classname))) exitWith {
	diag_log format["[ALYSIA:ERROR] Vehicle with classname %1 does not declare in Vehicle config", _classname];
	0;
};

getNumber(missionConfigFile >> "ALYSIA_VEHICLES" >> _classname >> "inventory");
