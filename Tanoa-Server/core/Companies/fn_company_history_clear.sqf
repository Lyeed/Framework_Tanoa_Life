/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_company", "_from", "_info"];
_company = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_from = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if (isNull _company) exitWith {};

_info = _company getVariable "company_info";
if (isNil "_info") exitWith {};

_company setVariable ["company_bank_history", []];
if (!(isNull _from)) then {
	[format["Le livre des comptes de l'entreprise %1 a été vidé.", (_info select 0)]] remoteExecCall ["AlysiaClient_fnc_info", (owner _from)];
};
