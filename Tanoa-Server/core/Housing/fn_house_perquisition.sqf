/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_house", "_storage", "_from"];
_house = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_from = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if ((isNull _house) || (isNull _from)) exitWith {};

_this call AlysiaServer_fnc_logPerquisition;
_house setVariable ["perquisition", true, true];

uiSleep(60 * 10);

_house setVariable ["perquisition", false, true];

[[_house]] call AlysiaServer_fnc_cleanup_houseStorages;
if (!(isNull _from)) then {
	["Perquisition <t color='#FF8000'>terminé</t>."] remoteExecCall ["AlysiaClient_fnc_info", (owner _from)];
};
