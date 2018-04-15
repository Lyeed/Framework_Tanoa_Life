/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_trunk", "_item", "_amount", "_index"];
_trunk = [_this, 0, [], [[]]] call BIS_fnc_param;
_item = [_this, 1, "", [""]] call BIS_fnc_param;

_index = [_item, _trunk] call AlysiaClient_fnc_index;
if (_index isEqualTo -1) then {
	_amount = 0;
} else {
	_amount = (_trunk select _index) select 1;
};

_amount;
