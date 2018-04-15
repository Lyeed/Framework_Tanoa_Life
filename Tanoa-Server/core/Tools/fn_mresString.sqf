/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_string", "_filter"];
_string = toArray ([_this, 0, "", [""]] call BIS_fnc_param);
_filter = toArray "'/\`:|;,{}-""<>";

{
	if (_x in _filter) then {_string set [_forEachIndex, -1]};
} foreach _string;

_string = _string - [-1];
toString _string;
