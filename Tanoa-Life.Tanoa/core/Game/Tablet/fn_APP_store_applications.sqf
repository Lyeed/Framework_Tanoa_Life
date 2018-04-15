/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

(_display displayCtrl 8107) ctrlSetStructuredText parseText "<t align='center' font='PuristaBold' size='2.7' color='#FF8000'>Applications</t>";
(_display displayCtrl 8109) buttonSetAction "[] call AlysiaClient_fnc_APP_store_applications_buy;";

[8107, true] call AlysiaClient_fnc_tabletShow;

_list = _display displayCtrl 8110;
lbClear _list;

_list ctrlSetEventHandler ["LBSelChanged", "_this call AlysiaClient_fnc_APP_store_applications_update;"];

{
	_app = configName _x;
	if (!(_app in g_apps)) then
	{
		_index = _list lbAdd getText(_x >> "name");;
		_list lbSetValue [_index, getNumber(_x >> "price")];
		_list lbSetData [_index, str([_app, getText(_x >> "description")])];
	};
} forEach ("str(playerSide) in getArray(_x >> 'sides')" configClasses (missionConfigFile >> "ALYSIA_SHOP_APPLICATIONS"));

if ((lbSize _list) isEqualTo 0) then {
	_list lbAdd "Aucune";
};

_list lbSetCurSel -1;
