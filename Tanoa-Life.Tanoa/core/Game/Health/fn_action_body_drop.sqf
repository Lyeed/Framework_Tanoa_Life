/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_action", "_target"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_action = [_this, 1, true, [true]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};

if (_action) then
{
	g_action_inUse = true;
	player playAction "released";
	uiSleep 2;
	g_action_inUse = false;
};

detach _target;
if (_target getVariable ["transporting", false]) then {
	_target setVariable ["transporting", false, true];
};
