/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list"];

createDialog "RscDisplayShopMissions";

disableSerialization;
_display = findDisplay 97000;
if (isNull _display) exitWith {};

_list = _display displayCtrl 97001;
lbClear _list;

{
	if (call compile getText(_x >> "condition")) then
	{
		_index = _list lbAdd getText(_x >> "name");
		_list lbSetData [_index, configName _x];
	};
} forEach ("str(playerSide) in getArray(_x >> 'sides')" configClasses (missionConfigFile >> "ALYSIA_MISSIONS"));

if ((lbSize _list) isEqualTo 0) then
{
	_list lbAdd "Aucune";
	ctrlShow[97002, false];
	ctrlShow[97003, false];
	ctrlShow[97004, false];
	ctrlShow[97005, false];
	ctrlShow[97006, false];
	ctrlShow[97007, false];
	ctrlShow[97008, false];
	ctrlShow[97009, false];
} else {
	_list lbSetCurSel 0;
};
