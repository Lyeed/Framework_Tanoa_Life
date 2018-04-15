/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_shop", "_spawnPoints", "_display", "_list", "_config_shop"];
_shop = [(_this select 3), 0, "", [""]] call BIS_fnc_param;
_spawnPoints = [(_this select 3), 1, [], [[]]] call BIS_fnc_param;

if (_shop isEqualTo "") exitWith {
	["Aucun type de concesionnaire précisé."] call AlysiaClient_fnc_error;
};

_config_shop = missionConfigFile >> "ALYSIA_SHOPS_VEHICLES" >> _shop;
if (!isClass(_config_shop)) exitWith
{
	[format["Impossible de trouver les informations concernant le magasin : <t color='#FF8000'>%1</t>", _shop]] call AlysiaClient_fnc_error;
	diag_log format["[ALYSIA:ERROR] Vehicle shop %1 not defined in ALYSIA_SHOPS_VEHICLES (class not found)", _shop];
};

if ((getText(_config_shop >> "side") != "") && (str(playerSide) != getText(_config_shop >> "side"))) exitWith
{
	[format[
		"Votre faction <t color='#04B404'>%1</t> n'est pas autorisé à acheter ici.<br/>Ce magasin <t color='#2EFE9A'>%2</t> est <t color='#FF0000'>réservé</t>.",
		([playerSide] call AlysiaClient_fnc_sideToStr),
		getText(_config_shop >> "name")
	]] call AlysiaClient_fnc_error;
};

createDialog "RscDisplayShopVehicles";

disableSerialization;
_display = findDisplay 2300;

g_shop_active = false;
g_shop_vehicles_spawn = _spawnPoints;
g_shop_vehicles_type = _shop;

(_display displayCtrl 2301) ctrlSetStructuredText parseText format
[
	"<t align='center' size='1.5'>%1</t>",
	getText(_config_shop >> "name")
];

_list = _display displayCtrl 2302;
lbClear _list;

{
	_config_veh = missionConfigFile >> "ALYSIA_VEHICLES" >> _x;
	if (isClass(_config_veh)) then
	{
		_index = _list lbAdd getText(_config_veh >> "realname");

		_vList = getArray(_config_veh >> "colors");
		if (_vList isEqualTo []) then
		{
			_list lbSetPicture [_index, getText(configFile >> "CfgVehicles" >> _x >> "picture")];
			_list lbSetData [_index, str([_x])];
		} else {
			_list lbSetPicture [_index, getText(configFile >> "CfgVehicles" >> (_vList select 0) >> "picture")];
			_list lbSetData [_index, str(_vList)];
		};

		_list lbSetTooltip [_index, (_list lbText _index)];
		_list lbSetValue [_index, getNumber(_config_veh >> "buyPrice")];
	} else {
		diag_log format["ERROR: %1 not defined in ALYSIA_VEHICLES", _x];
		systemChat format["ERROR: %1 not defined in ALYSIA_VEHICLES", _x];
	};
} forEach getArray(_config_shop >> "stock");

if ((lbSize _list) isEqualTo 0) then {
	_list lbAdd "Vous n'avez rien à acheter ici";
} else {
	lbSortByValue _list;
};

_list lbSetCurSel 0;
