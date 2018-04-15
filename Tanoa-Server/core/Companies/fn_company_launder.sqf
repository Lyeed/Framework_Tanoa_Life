/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_amount", "_target", "_from", "_reason"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_amount = [_this, 1, 0, [0]] call BIS_fnc_param;
_from = [_this, 2, "Inconnu", [""]] call BIS_fnc_param;
_reason = [_this, 3, "Inconnu", [""]] call BIS_fnc_param;

if ((_amount isEqualTo 0) || (isNull _target)) exitWith {};

_target setVariable ["launder", true, true];
uiSleep(round(random(20) * 60) + (4 * 60));
_target setVariable ["launder", false, true];

[_target, true, _amount, _from, _reason] call AlysiaServer_fnc_company_bank_handle;
