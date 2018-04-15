/*
	Author : Bryan "Tonic" Boardwine
*/
private["_index_item", "_index_stack", "_index_return"];
_index_item = _this select 0;
_index_stack = _this select 1;
_index_return = -1;

{
	if (_index_item in _x) exitWith {_index_return = _forEachIndex};
} forEach _index_stack;

_index_return;
