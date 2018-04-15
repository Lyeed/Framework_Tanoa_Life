/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_number_to_check", "_return"];
_number_to_check = [_this, 0, "", [""]] call BIS_fnc_param;

_return = objNull;

{
	if (((_x getVariable ["number", "-1"]) isEqualTo _number_to_check) && ((_x getVariable ["realname", ""]) != "")) exitWith {_return = _x};
} forEach allPlayers;

_return;
