/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list", "_config"];

disableSerialization;
_display = findDisplay 2400;
if (isNull _display) exitWith {};

_config = missionConfigFile >> "ALYSIA_SHOPS_VIRTUAL" >> g_shop_type;
if (!isClass(_config)) exitWith {};

_list = _display displayCtrl 2405;
lbClear _list;

if (g_shop_mod isEqualTo 0) then
{
	{
		_index = _list lbAdd ([_x] call AlysiaClient_fnc_itemGetName);
		_list lbSetTooltip [_index, _list lbText _index];
		_list lbSetData [_index, _x];
		_list lbSetPicture [_index, [_x] call AlysiaClient_fnc_itemGetImage];
	} forEach getArray(_config >> "buy");

	if ((lbSize _list) isEqualTo 0) then {
		_list lbAdd "Vous n'avez rien à acheter ici";
	} else {
		lbSort [_list, "DESC"];
	};
} else {
	{
		_amount = [_x] call AlysiaClient_fnc_itemCount;
		if (_amount > 0) then
		{
			_index = _list lbAdd format["%1x %2", [_amount] call AlysiaClient_fnc_numberText, [_x] call AlysiaClient_fnc_itemGetName];
			_list lbSetTooltip [_index, _list lbText _index];
			_list lbSetData [_index, _x];
			_list lbSetValue [_index, _amount];
			_list lbSetPicture [_index, [_x] call AlysiaClient_fnc_itemGetImage];
		};
	} forEach getArray(_config >> "sell");

	if ((lbSize _list) isEqualTo 0) then {
		_list lbAdd "Vous n'avez rien à vendre ici";
	} else {
		lbSortByValue _list;
	};
};

_list lbSetCurSel 0;
