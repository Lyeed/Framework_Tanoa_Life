/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_company", "_from"];
_company = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_from = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if ((isNull _company) || (isNull _from)) exitWith {};

[(_company getVariable ["company_bank_history", []]), _company] remoteExecCall ["AlysiaClient_fnc_company_bank_history_open", (owner _from)];
