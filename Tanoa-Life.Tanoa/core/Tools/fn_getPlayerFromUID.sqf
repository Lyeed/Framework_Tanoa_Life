/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_uid", "_ret"];
_uid = [_this, 0, "", [""]] call BIS_fnc_param;

if (_uid isEqualTo "") exitWith {objNull};
_ret = objNull;

{
	if ((getPlayerUID _x) isEqualTo _uid) exitWith {
		_ret = _x;
	};
} forEach allPlayers;
_ret;
