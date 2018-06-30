/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_uid", "_rank", "_side"];
_uid = [_this, 0, "", [""]] call BIS_fnc_param;
_rank = [_this, 1, -1, [-1]] call BIS_fnc_param;
_side = [_this, 2, sideUnknown, [sideUnknown]] call BIS_fnc_param;

if ((_uid isEqualTo "") || (_rank isEqualTo -1) || (_side isEqualTo sideUnknown)) exitWith {};

switch (_side) do
{
	case east: {[format["UPDATE players SET EAST_level='%1' WHERE uid='%2'", _rank, _uid], 1] call ExtDB3_fnc_async};
	case west: {[format["UPDATE players SET WEST_level='%1' WHERE uid='%2'", _rank, _uid], 1] call ExtDB3_fnc_async};
	case independent: {[format["UPDATE players SET GUER_level='%1' WHERE uid='%2'", _rank, _uid], 1] call ExtDB3_fnc_async};
};
