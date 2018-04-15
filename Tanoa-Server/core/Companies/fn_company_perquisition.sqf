/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_company", "_from"];
_company = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_from = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if ((isNull _company) || (isNull _from)) exitWith {};

_this call AlysiaServer_fnc_logPerquisition;
_company setVariable ["perquisition", true, true];

uiSleep(60 * 10);

_company setVariable ["perquisition", false, true];

if ((_company getVariable ["trunk_in_use_ID", ""]) != "") then {
	_company setVariable ["trunk_in_use_ID", "", true];
};

if (!(isNull _from)) then {
	["Perquisition <t color='#FF8000'>terminé</t>."] remoteExecCall ["AlysiaClient_fnc_info", (owner _from)];
};
