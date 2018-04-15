/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (!(_target getVariable ["restrained", false]) && !(_target getVariable ["surrender", false])) exitWith {
	["La cible doit avoir les mains sur la tête ou être menottée pour pouvoir effecter un alcootest."] call AlysiaClient_fnc_error;
};

if ([false, "alcool_test", 1] call AlysiaClient_fnc_handleInv) then
{
	if (["Alcootest", 10, _target] call AlysiaClient_fnc_showProgress) then
	{
		if ((_target getVariable ["restrained", false]) || (_target getVariable ["surrender", false])) then {
			[player] remoteExecCall ["AlysiaClient_fnc_alcootest_get", _target];
		} else {
			["La cible doit avoir les mains sur la tête ou être menottée pour pouvoir effecter un alcootest"] call AlysiaClient_fnc_error;
		};
	};
} else {
	["Vous n'avez pas d'alcootest."] call AlysiaClient_fnc_error;
};
