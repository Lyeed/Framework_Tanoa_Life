/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_sel"];

disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if (((_list lbText _sel) isEqualTo "Vide") || ((_list lbValue _sel) isEqualTo 0)) then
{
	ctrlShow[69003, false];
	ctrlShow[69004, false];
	ctrlShow[69005, false];
	ctrlShow[69006, false];
	ctrlShow[69007, false];
} else {
	ctrlShow[69003, true];
	ctrlShow[69004, true];
	ctrlShow[69005, true];
	ctrlShow[69006, true];
	ctrlShow[69007, true];
};
