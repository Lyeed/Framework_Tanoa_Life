/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_object", "_middle", "_display"];
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _object) exitWith {};

if (_object getVariable ["inUse", false]) exitWith {
	["Quelqu'un intéragit déjà avec cet objet"] call AlysiaClient_fnc_error;
};

if (!(createDialog "RscDisplayC4")) exitWith {};

disableSerialization;
_display = findDisplay 12000;
if (isNull _display) exitWith {};

_object setVariable ["inUse", true, true];

if (_object getVariable ["bomb_activate", false]) then {
	_object setVariable ["bomb_timer", (_object getVariable "bomb_explosion") - floor(serverTime)];
};

g_interaction_target = _object;

[] call AlysiaClient_fnc_c4_update;

_middle = _display displayCtrl 12005;
while {!(isNull _display)} do
{
	uiSleep 1;

	if (ctrlShown _middle) then {
		_middle ctrlShow false;
	} else {
		_middle ctrlShow true;
	};

	if (_object getVariable ["bomb_activate", false]) then
	{
		_timer = _object getVariable ["bomb_timer", 0];
		if (_timer > 0) then
		{
			_timer = _timer - 1;
			_object setVariable ["bomb_timer", _timer];
		};

		[] call AlysiaClient_fnc_c4_update;
	};
};

if (!(_object getVariable ["bomb_activate", false])) then {
	_object setVariable ["bomb_timer", (_object getVariable ["bomb_timer", 0]), true];
};

_object setVariable ["inUse", false, true];
