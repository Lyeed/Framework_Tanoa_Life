/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list"];

disableSerialization;
_display = findDisplay 21000;
if (isNull _display) exitWith {};

_list = _display displayCtrl 21001;
lbClear _list;

{
	_marker = configName _x;
	if ((markerAlpha _marker) isEqualTo 0) then
	{
		_index = _list lbAdd (markerText _marker);
		_list lbSetData [_index, _marker];
		_list lbSetValue [_index, getNumber(_x >> "shop" >> "price")];
	};
} forEach ("isClass(_x >> 'shop')" configClasses (missionConfigFile >> "ALYSIA_DYN_MARKERS"));

if ((lbSize _list) isEqualTo 0) then
{
	_list lbAdd "Aucune";
	ctrlShow[21002, false];
	ctrlShow[21003, false];
	ctrlShow[21004, false];
	ctrlShow[21005, false];
	ctrlShow[21006, false];
	ctrlShow[21007, false];
	ctrlShow[21008, false];
	ctrlShow[21009, false];
} else {
	_list lbSetCurSel 0;
};
