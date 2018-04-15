/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_name", "_uid", "_actual", "_last"];
_name = [_this, 0, "", [""]] call BIS_fnc_param;
_uid = [_this, 1, "", [""]] call BIS_fnc_param;
_actual = [_this, 2, [], [[]]] call BIS_fnc_param;
_last = [_this, 3, [], [[]]] call BIS_fnc_param;

if ((_name isEqualTo "") || (_uid isEqualTo "")) exitWith {};

"extLOG" callExtension format["1:SERVER_DUPLI_LOG:%1 [%2] possible duplication | %3 instead of %4", _name, _uid, _actual, _last];
