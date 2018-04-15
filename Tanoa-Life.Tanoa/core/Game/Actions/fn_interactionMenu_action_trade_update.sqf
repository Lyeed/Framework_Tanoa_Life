/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_ctrl_list_inventory", "_ctrl_list_trade", "_ctrl_list_keys_vehicles", "_ctrl_list_keys_buildings"];

disableSerialization;
_display = findDisplay 10000;
if (isNull _display) exitWith {};

ctrlSetText[10008, ([g_cash] call AlysiaClient_fnc_powerRemove)];

_ctrl_list_inventory = _display displayCtrl 10019;
if ([_ctrl_list_inventory, true, true] call AlysiaClient_fnc_fillUpWithInv) then
{
	ctrlShow[10001, false];
	ctrlShow[10002, false];
	ctrlShow[10003, false];
	ctrlShow[10004, false];
} else {
	ctrlShow[10001, true];
	ctrlShow[10002, true];
	ctrlShow[10003, true];
	ctrlShow[10004, true];
};

if ((lbCurSel _ctrl_list_inventory) isEqualTo -1) then {
	_ctrl_list_inventory lbSetCurSel 0;
};

_ctrl_list_keys_vehicles = _display displayCtrl 10005;
lbClear _ctrl_list_keys_vehicles;

{
	if (!(isNull _x) && (alive _x) && !(_x in g_interaction_trade_keys_vehicles)) then
	{
		_index = _ctrl_list_keys_vehicles lbAdd getText(configFile >> "CfgVehicles" >> (typeOf _x) >> "displayName");
		_ctrl_list_keys_vehicles lbSetPicture [_index, getText(configFile >> "CfgVehicles" >> (typeOf _x) >> "picture")];
		_ctrl_list_keys_vehicles lbSetValue [_index, _forEachIndex];
		if ("ItemGPS" in (assignedItems player)) then {
			_ctrl_list_keys_vehicles lbSetTooltip [_index, format["Position : %1 | distance : %2m", mapGridPosition _x, round(player distance _x)]];
		} else {
			_ctrl_list_keys_vehicles lbSetTooltip [_index, "Position : inconnue | distance : inconnue"];
		};
	};
} forEach g_vehicles;
if ((lbSize _ctrl_list_keys_vehicles) isEqualTo 0) then
{
	_ctrl_list_keys_vehicles lbAdd "Aucune";
	ctrlShow[10006, false];
	ctrlShow[10007, false];
} else {
	ctrlShow[10006, true];
	ctrlShow[10007, true];
};

if ((lbCurSel _ctrl_list_keys_vehicles) isEqualTo -1) then {
	_ctrl_list_keys_vehicles lbSetCurSel 0;
};

_ctrl_list_keys_buildings = _display displayCtrl 10020;
lbClear _ctrl_list_keys_buildings;

{
	if (!(isNull _x) && (alive _x) && !(_x in g_interaction_trade_keys_buildings)) then
	{
		if (((_x getVariable ['house_owner', ['', '']]) select 0) isEqualTo (getPlayerUID player)) then
		{
			if (isClass(missionConfigFile >> "ALYSIA_HOUSES" >> typeOf(_x) >> "factions" >> str(side g_interaction_target))) then
			{
				_index = _ctrl_list_keys_buildings lbAdd getText(configFile >> "CfgVehicles" >> typeOf(_x) >> "displayName");
				_ctrl_list_keys_buildings lbSetPicture [_index, getText(configFile >> "CfgVehicles" >> (typeOf _x) >> "picture")];
				_ctrl_list_keys_buildings lbSetValue [_index, _forEachIndex];
				if ("ItemGPS" in (assignedItems player)) then {
					_ctrl_list_keys_buildings lbSetTooltip [_index, format["Position : %1 | distance : %2m", mapGridPosition _x, round(player distance _x)]];
				} else {
					_ctrl_list_keys_buildings lbSetTooltip [_index, format["Position : %1 | distance : inconnue", mapGridPosition _x]];
				};
			};
		};
	};
} forEach g_houses;
if ((lbSize _ctrl_list_keys_buildings) isEqualTo 0) then
{
	_ctrl_list_keys_buildings lbAdd "Aucune";
	ctrlShow[10021, false];
	ctrlShow[10022, false];
} else {
	ctrlShow[10021, true];
	ctrlShow[10022, true];
};

if ((lbCurSel _ctrl_list_keys_buildings) isEqualTo -1) then {
	_ctrl_list_keys_buildings lbSetCurSel 0;
};

if (g_cash isEqualTo 0) then
{
	ctrlShow[10009, false];
	ctrlShow[10010, false];
} else {
	ctrlShow[10009, true];
	ctrlShow[10010, true];
};

_ctrl_list_trade = _display displayCtrl 10011;
lbClear _ctrl_list_trade;

if (g_interaction_trade_money > 0) then
{
	_index = _ctrl_list_trade lbAdd format["%1$", [g_interaction_trade_money] call AlysiaClient_fnc_numberText];
	_ctrl_list_trade lbSetPicture [_index, "Alysia_Client\Textures\Items_virtual\money.paa"];
	_ctrl_list_trade lbSetData [_index, "money"];
	_ctrl_list_trade lbSetTooltip [_index, _ctrl_list_trade lbText _index];
};

{
	_index = _ctrl_list_trade lbAdd format["%1x %2", ([(_x select 1)] call AlysiaClient_fnc_numberText), ([(_x select 0)] call AlysiaClient_fnc_itemGetName)];
	_ctrl_list_trade lbSetPicture [_index, ([(_x select 0)] call AlysiaClient_fnc_itemGetImage)];
	_ctrl_list_trade lbSetData [_index, "inventory"];
	_ctrl_list_trade lbSetValue [_index, _forEachIndex];
	_ctrl_list_trade lbSetTooltip [_index, _ctrl_list_trade lbText _index];
} forEach g_interaction_trade_inventory;

{
	_index = _ctrl_list_trade lbAdd getText(configFile >> "CfgVehicles" >> typeOf(_x) >> "displayName");
	_ctrl_list_trade lbSetPicture [_index, getText(configFile >> "CfgVehicles" >> typeOf(_x) >> "picture")];
	_ctrl_list_trade lbSetData [_index, "key_vehicle"];
	_ctrl_list_trade lbSetValue [_index, _forEachIndex];
	if ("ItemGPS" in (assignedItems player)) then {
		_ctrl_list_trade lbSetTooltip [_index, format["Position : %1 | distance : %2m", mapGridPosition _x, round(player distance _x)]];
	} else {
		_ctrl_list_trade lbSetTooltip [_index, "Position : inconnue | distance : inconnue"];
	};
} forEach g_interaction_trade_keys_vehicles;

{
	_index = _ctrl_list_trade lbAdd getText(configFile >> "CfgVehicles" >> typeOf(_x) >> "displayName");
	_ctrl_list_trade lbSetPicture [_index, getText(configFile >> "CfgVehicles" >> typeOf(_x) >> "picture")];
	_ctrl_list_trade lbSetData [_index, "key_building"];
	_ctrl_list_trade lbSetValue [_index, _forEachIndex];
	if ("ItemGPS" in (assignedItems player)) then {
		_ctrl_list_trade lbSetTooltip [_index, format["Position : %1 | distance : %2m", mapGridPosition _x, round(player distance _x)]];
	} else {
		_ctrl_list_trade lbSetTooltip [_index, format["Position : %1 | distance : inconnue", mapGridPosition _x]];
	};
} forEach g_interaction_trade_keys_buildings;

if ((lbSize _ctrl_list_trade) isEqualTo 0) then
{
	_ctrl_list_trade lbAdd "Vide";
	ctrlShow[10012, false];
	ctrlShow[10013, false];
	ctrlShow[10014, false];
	ctrlShow[10015, false];
	ctrlShow[10016, false];
	ctrlShow[10017, false];
	ctrlShow[10018, false];
} else {
	ctrlShow[10012, true];
	ctrlShow[10013, true];
	ctrlShow[10014, true];
	ctrlShow[10015, true];
	ctrlShow[10016, true];
	ctrlShow[10017, true];
	ctrlShow[10018, true];
};

if ((lbCurSel _ctrl_list_trade) isEqualTo -1) then {
	_ctrl_list_trade lbSetCurSel 0;
};
