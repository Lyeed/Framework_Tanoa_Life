/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_display"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

(_display displayCtrl 8107) ctrlSetStructuredText parseText "<t align='center' font='PuristaBold' size='2.7' color='#FF8000'>Licences</t>";
(_display displayCtrl 8109) buttonSetAction "[] call AlysiaClient_fnc_APP_store_licenses_Buy;";

[8107, true] call AlysiaClient_fnc_tabletShow;

_list = _display displayCtrl 8110;
lbClear _list;

_list ctrlSetEventHandler ["LBSelChanged", "_this call AlysiaClient_fnc_APP_store_licenses_update;"];

{
	if (getNumber(_x >> "factions" >> str(playerSide) >> "pad_store") isEqualTo 1) then
	{
		_license = configName _x;
		if (!([_license] call AlysiaClient_fnc_hasLicense)) then
		{
			_index = _list lbAdd ([_license] call AlysiaClient_fnc_licenseGetName);
			_list lbSetData [_index, _license];
			_list lbSetValue [_index, getNumber(_x >> "factions" >> str(playerSide) >> "price")];
			_list lbSetTooltip [_index, (_list lbText _index)];
		};
	};
} foreach ("isClass(_x >> 'factions' >> str(playerSide))" configClasses (missionConfigFile >> "ALYSIA_LICENSES"));

if ((lbSize _list) isEqualTo 0) then {
	_list lbAdd "Aucune";
};

_list lbSetCurSel -1;
