/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_uid", "_res"];
_uid = [_this, 0, "", [""]] call BIS_fnc_param;

if (_uid isEqualTo "") exitWith {"Inconnu"};

_res = toArray(_uid);
_res deleteRange [0, 7];

{
	if ((_forEachIndex % 2) isEqualTo 0) then {_res set [_forEachIndex, (_x + 17)]};
} forEach _res;

toString(_res);
