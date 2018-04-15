/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list", "_target"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if (!(createDialog "RscDisplayCompanyCreate")) exitWith {};

disableSerialization;
_display = findDisplay 90000;
if (isNull _display) exitWith {};

g_interaction_target = _target;

_list = _display displayCtrl 90006;
lbClear _list;

{
	_index = _list lbAdd getText(_x >> "name");
	_list lbSetData [_index, (configName _x)];
	_list lbSetPicture [_index, getText(_x >> "image")];
} forEach ("true" configClasses (missionConfigFile >> "ALYSIA_COMPANIES_TYPES"));
if ((lbSize _list) isEqualTo 0) then
{
	_list lbAdd "Aucun";
	ctrlShow[90001, false];
	ctrlShow[90002, false];
	ctrlShow[90003, false];
	ctrlShow[90004, false];
	ctrlShow[90005, false];
	ctrlShow[90007, false];
	ctrlShow[90008, false];
	ctrlShow[90009, false];
	ctrlShow[90010, false];
	ctrlShow[90011, false];
};

_list lbSetCurSel 0;
