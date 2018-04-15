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
	["La cible ne peut pas être fouillée."] call AlysiaClient_fnc_error;
};

if (["Fouille", 6, _target] call AlysiaClient_fnc_showProgress) then
{
	if ((_target getVariable ["restrained", false]) || (_target getVariable ["surrender", false])) then
	{
		g_interaction_target = _target;
		[player] remoteExecCall ["AlysiaClient_fnc_search_get", _target];
	} else {
		["La cible ne peut pas être fouillée."] call AlysiaClient_fnc_error;
	};
};
