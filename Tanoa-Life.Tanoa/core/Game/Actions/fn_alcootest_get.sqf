/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_from";
_from = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _from) exitWith {};

[g_alcool] remoteExec ["AlysiaClient_fnc_alcootest_return", _from];
