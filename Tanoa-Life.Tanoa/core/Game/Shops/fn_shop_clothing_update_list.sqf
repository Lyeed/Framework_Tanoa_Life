/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_display", "_list", "_sel", "_itemType"];
disableSerialization;

_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if ((isNull _list) || (_sel isEqualTo -1)) exitWith {};

_display = findDisplay 3100;
if (isNull _display) exitWith {};

_type = _list lbData _sel;
if (_type isEqualTo "") exitWith {};

g_shop_clothing_active = true;
switch (g_shop_clothing_oldSelection) do
{
	case "headgear":
	{
		removeHeadgear player;
		if (g_shop_clothing_head != "") then {
			player addHeadgear g_shop_clothing_head;
		};
	};
	case "goggles":
	{
		removeGoggles player;
		if (g_shop_clothing_goggles != "") then {
			player addGoggles g_shop_clothing_goggles;
		};
	};
	case "backpacks":
	{
		removeBackpack player;
		if (g_shop_clothing_backpack != "") then {
			player addBackpack g_shop_clothing_backpack;
		};
	};
	case "uniforms":
	{
		removeUniform player;
		if (g_shop_clothing_uniform != "") then {
			player forceAddUniform g_shop_clothing_uniform;
		};
	};
	case "vests":
	{
		removeVest player;
		if (g_shop_clothing_vest != "") then {
			player addVest g_shop_clothing_vest;
		};
	};
};

switch (_type) do
{
	case "headgear":
	{
		g_shop_clothing_oldItem = headgear player;
		g_shop_camera camSetTarget (player modelToWorld [0, 0, 1.6]);
		g_shop_camera camSetPos (player modelToWorld [0.7, 1, 1.6]);
		g_shop_camera camCommit 1;
		_itemType = "Headgear";
	};
	case "goggles":
	{
		g_shop_clothing_oldItem = goggles player;
		g_shop_camera camSetTarget (player modelToWorld [0, 0, 1.6]);
		g_shop_camera camSetPos (player modelToWorld [0.7, 1, 1.6]);
		g_shop_camera camCommit 1;
		_itemType = "Glasses";
	};
	case "backpacks":
	{
		g_shop_clothing_oldItem = backpack player;
		g_shop_camera camSetTarget (player modelToWorld [0, -0.15, 1.3]);
		g_shop_camera camSetPos (player modelToWorld [1, -3, 2]);
		g_shop_camera camCommit 1;
		_itemType = "Backpack";
	};
	case "uniforms":
	{
		g_shop_clothing_oldItem = uniform player;
		g_shop_camera camSetTarget (player modelToWorld [0, 0, 1]);
		g_shop_camera camSetPos (player modelToWorld [1, 4, 2]);
		g_shop_camera camCommit 1;
		_itemType = "Uniform";
	};
	case "vests":
	{
		g_shop_clothing_oldItem = vest player;
		g_shop_camera camSetTarget (player modelToWorld [0, 0, 1]);
		g_shop_camera camSetPos (player modelToWorld [1, 4, 2]);
		g_shop_camera camCommit 1;
		_itemType = "Vest";
	};
};

g_shop_clothing_oldSelection = _type;
_list = _display displayCtrl 3103;
lbClear _list;

{
	if (isClass(missionConfigFile >> "ALYSIA_ITEMS_ARMA" >> _x)) then
	{
		_details = [_x] call AlysiaClient_fnc_fetchCfgDetails;
		if (_details isEqualTo []) then
		{
			diag_log format["ERROR: %1 does not exist in Arma", _x];
			systemChat format["ERROR: %1 does not exist in Arma", _x];
		} else {
			if ((([_x] call BIS_fnc_itemType) select 1) isEqualTo _itemType) then
			{
				_displayName = getText(missionConfigFile >> "ALYSIA_ITEMS_ARMA" >> _x >> "name");
				if (_displayName isEqualTo "") then {_displayName = _details select 1};

				_index = _list lbAdd _displayName;
				_list lbSetData [_index, _x];
				_list lbSetValue [_index, getNumber(missionConfigFile >> "ALYSIA_ITEMS_ARMA" >> _x >> "buy_price")];
				_list lbSetPicture [_index, (_details select 2)];
				_list lbSetTooltip [_index, (_list lbText _index)];
			} else {
				diag_log format["ERROR: %1 is a %2 (not a %3)", _x, ([_x] call BIS_fnc_itemType) select 1, _itemType];
				systemChat format["ERROR: %1 is a %2 (not a %3)", _x, ([_x] call BIS_fnc_itemType) select 1, _itemType];
			};
		};
	} else {
		diag_log format["ERROR: %1 not defined in ALYSIA_ITEMS_ARMA", _x];
		systemChat format["ERROR: %1 not defined in ALYSIA_ITEMS_ARMA", _x];
	};
} forEach (getArray(missionConfigFile >> "ALYSIA_SHOPS_CLOTHING" >> g_shop_clothing_type >> _type));
if ((lbSize _list) isEqualTo 0) then
{
	_list lbAdd "Vide";
	ctrlShow[3108, false];
	ctrlShow[3109, false];
	ctrlShow[3110, false];
	ctrlShow[3111, false];
	ctrlShow[3112, false];
	ctrlShow[3106, false];
	ctrlShow[3105, false];
	ctrlShow[3104, false];
} else {
	lbSortByValue _list;
	ctrlShow[3106, true];
	ctrlShow[3105, true];
	ctrlShow[3104, true];
	_list lbSetCurSel 0;
};

g_shop_clothing_active = false;
