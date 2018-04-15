/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_item", "_config", "_amount"];
_item = [_this, 0, "", [""]] call BIS_fnc_param;

_config = missionConfigFile >> "ALYSIA_VACCINS" >> _item;
if (!isClass(_config)) exitWith {};

_amount = getNumber(_config >> "time");

{
	_desease = configName _x;

	_index = [_desease, g_vaccins] call AlysiaClient_fnc_index;
	if (_index isEqualTo -1) then {
		g_vaccins pushBack [_desease, _amount];
	} else {
		(g_vaccins select _index) set [1, ((g_vaccins select _index) select 1) + _amount];
	};

	_index = [_desease, g_deseases] call AlysiaClient_fnc_index;
	if (_index != -1) then {
		g_deseases deleteAt _index;
	};
} forEach ("true" configClasses (_config >> "protect"));
