/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_house";
_house = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _house) exitWith {};

_index = g_houses find _house;
if (_index != -1) then
{
	if (((_house getVariable ['house_owner', ['', '']]) select 0) != (getPlayerUID player)) then
	{
		g_houses deleteAt _index;
		deleteMarkerLocal (format["house_%1", (_index + 1)]);
	};
};
