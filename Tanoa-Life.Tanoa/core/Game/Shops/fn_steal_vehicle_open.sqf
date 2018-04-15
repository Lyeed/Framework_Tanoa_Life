/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list"];

if (!(createDialog "RscDisplayStealVehicle")) exitWith {};

disableSerialization;
_display = findDisplay 99000;
if (isNull _display) exitWith {};

_list = _display displayCtrl 99001;
lbClear _list;

g_interaction_steal_list = nearestObjects [(_this select 0), ["Car", "Ship", "Air", "Tank"], 20];

{
	if (alive _x) then
	{
		_index = _list lbAdd getText(configFile >> "CfgVehicles" >> typeOf(_x) >> "displayName");
		_list lbSetPicture [_index, getText(configFile >> "CfgVehicles" >> typeOf(_x) >> "picture")];
		_list lbSetValue [_index, _forEachIndex];
		_list lbSetData [_index, typeOf(_x)];
	};
} forEach g_interaction_steal_list;
if ((lbSize _list) isEqualTo 0) then
{
	_list lbAdd "Aucun";
	ctrlShow[99002, false];
	ctrlShow[99003, false];
	ctrlShow[99004, false];
	ctrlShow[99005, false];
	ctrlShow[99006, false];
	ctrlShow[99007, false];
	ctrlShow[99008, false];
	ctrlShow[99009, false];
};

_list lbSetCurSel 0;
