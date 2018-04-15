/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_sel", "_list", "_item", "_display", "_button_2", "_button_1", "_config"];

disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

_display = uinamespace getvariable ["RscDisplayInventory", displayNull];
if (isNull _display) exitWith {};

_button_1 = _display displayCtrl 85002;
_button_2 = _display displayCtrl 85003;

if (_sel isEqualTo -1) exitWith
{
	_button_1 ctrlShow false;
	_button_2 ctrlShow false;
};

_item = _list lbData _sel;
if (_item isEqualTo "") exitWith
{
	_button_1 ctrlShow false;
	_button_2 ctrlShow false;
};

_config = missionConfigFile >> "ALYSIA_ITEMS" >> _item;

switch (true) do
{
	case (isClass(_config >> "food")):
	{
		_button_1 ctrlSetText "Consommer";
		_button_1 buttonSetAction format["if ([false, '%1', 1] call AlysiaClient_fnc_handleInv) then {['%1'] call AlysiaClient_fnc_eatFood};", _item];
		_button_1 ctrlShow true;
	};
	case (isClass(_config >> "use")):
	{
		_button_1 ctrlSetText "Utiliser";
		_button_1 buttonSetAction format["['%1'] call AlysiaClient_fnc_useItem;", _item];
		_button_1 ctrlShow true;
	};
	default
	{
		_button_1 ctrlShow false;
	};
};

if (isClass(_config >> "remove")) then
{
	_button_2 ctrlSetText "Supprimer";
	_button_2 buttonSetAction format["['%1'] call AlysiaClient_fnc_removeItem;", _item];
	_button_2 ctrlShow true;
} else {
	_button_2 ctrlShow false;
};
