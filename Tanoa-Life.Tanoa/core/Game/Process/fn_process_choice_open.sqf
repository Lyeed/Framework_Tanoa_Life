/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_process", "_display", "_list"];
g_interaction_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_process = [_this, 1, [], [[]]] call BIS_fnc_param;

if (!(createDialog "RscDisplayProcessMultiple")) exitWith {};

disableSerialization;
_display = findDisplay 53100;
if (isNull _display) exitWith {};

_list = _display displayCtrl 53101;
lbClear _list;

{
	if (isClass(missionConfigFile >> "ALYSIA_PROCESS" >> _x)) then
	{
		_index = _list lbAdd getText(missionConfigFile >> "ALYSIA_PROCESS" >> _x >> "name");
		_list lbSetData [_index, _x];
	} else {
		systemChat format["%1 is not defined in ALYSIA_PROCESS", _x];
		diag_log format["%1 is not defined in ALYSIA_PROCESS", _x];
	};
} forEach _process;
if ((lbSize _list) isEqualTo 0) then
{
	_list lbAdd "Aucun";
	ctrlShow[53102, false];
	ctrlShow[53103, false];
	ctrlShow[53104, false];
	ctrlShow[53105, false];
	ctrlShow[53106, false];
};

_list lbSetCurSel 0;
