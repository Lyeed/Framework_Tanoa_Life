/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_inv_result";
_inv_result = [];

{
	_var = [configName _x] call AlysiaClient_fnc_itemCount;
	if (_var > 0) then {_inv_result pushBack [configName _x, _var]};
} forEach ("true" configClasses (missionConfigFile >> "ALYSIA_ITEMS"));

_inv_result;
