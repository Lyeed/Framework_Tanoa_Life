/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_side", "_display", "_list"];
_type = [_this, 3, "", [""]] call BIS_fnc_param;

if (_type isEqualTo "") exitWith {};
if (!isClass(missionConfigFile >> "ALYSIA_SHOPS_ARMA" >> _type)) exitWith
{
	[format["Impossible de trouver les informations concernant le magasin<br/><t align='center' color='#FF8000'>%1</t>", _type]] call AlysiaClient_fnc_error;
	diag_log format["[ALYSIA:ERROR] Weapon shop %1 not defined in ALYSIA_SHOPS_ARMA (class not found)", _type];
};

_side = getText(missionConfigFile >> "ALYSIA_SHOPS_ARMA" >> _type >> "side");
if ((_side != "") && (str(playerSide) != _side)) exitWith
{
	[format[
		"Votre faction <t color='#04B404'>%1</t> n'est pas autorisé à acheter ici.<br/>Ce magasin <t color='#2EFE9A'>%2</t> est <t color='#FF0000'>réservé</t>.",
		([playerSide] call AlysiaClient_fnc_sideToStr),
		getText(missionConfigFile >> "ALYSIA_SHOPS_ARMA" >> _type >> "name")
	]] call AlysiaClient_fnc_error;
};

createDialog "RscDisplayShopArma";

disableSerialization;
_display = findDisplay 38400;
g_shop_active = false;

(_display displayCtrl 38401) ctrlSetStructuredText parseText format
[
	"<t align='center' size='1.5'>%1</t>",
	getText(missionConfigFile >> "ALYSIA_SHOPS_ARMA" >> _type >> "name")
];

_list = _display displayCtrl 38402;
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
			_displayName = getText(missionConfigFile >> "ALYSIA_ITEMS_ARMA" >> _x >> "name");
			if (_displayName isEqualTo "") then {_displayName = _details select 1};

			_index = _list lbAdd _displayName;
			_list lbSetData [_index, _x];
			_list lbSetPicture [_index, (_details select 2)];
			_list lbSetTooltip [_index, (_list lbText _index)];
		};
	} else {
		diag_log format["ERROR: %1 not defined in ALYSIA_ITEMS_ARMA", _x];
		systemChat format["ERROR: %1 not defined in ALYSIA_ITEMS_ARMA", _x];
	};
} forEach getArray(missionConfigFile >> "ALYSIA_SHOPS_ARMA" >> _type >> "stocks");
if ((lbSize _list) isEqualTo 0) then {
	_list lbAdd "Vous n'avez rien à acheter ici";
};

_list lbSetCurSel 0;
