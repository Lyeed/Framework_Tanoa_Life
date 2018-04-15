/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_amount"];
_type = [_this, 0, false, [false]] call BIS_fnc_param;
_amount = abs(round([_this, 1, 0, [0]] call BIS_fnc_param));

if (_amount isEqualTo 0) exitWith {false};
if (!isClass(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "bank_faction")) exitWith {false};

if (_type || (!_type && (([playerSide] call AlysiaClient_fnc_atmFactionGet) >= _amount))) exitWith
{
	[playerSide, _type, _amount] remoteExecCall ["AlysiaServer_fnc_factionBankHandle", 2];
	true;
};

false;
