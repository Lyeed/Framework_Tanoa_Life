/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_h_trunk", "_h_type", "_h_item", "_h_amount", "_h_ret", "_item_index"];
_h_type = [_this, 0, true, [true]] call BIS_fnc_param;
_h_target = [_this, 1, objNull, [objNull]] call BIS_fnc_param;
_h_variable = [_this, 2, "", [""]] call BIS_fnc_param;
_h_item = [_this, 3, "", [""]] call BIS_fnc_param;
_h_amount = [_this, 4, 1, [1]] call BIS_fnc_param;
_h_apply = [_this, 5, true, [true]] call BIS_fnc_param;
_h_ret = false;

if (_h_variable isEqualTo "") exitWith {false};
if (_h_item isEqualTo "") exitWith {false};
if (isNull _h_target) exitWith {false};

_h_trunk = _h_target getVariable [_h_variable, []];
_item_index = [_h_item, _h_trunk] call AlysiaClient_fnc_index;
if (_h_type) then
{
	if (([_h_item, _h_amount, ([_h_trunk] call AlysiaClient_fnc_weightGenerate), ([_h_target] call AlysiaClient_fnc_getVehicleWeightMax)] call AlysiaClient_fnc_calWeightDiff) isEqualTo _h_amount) then
	{
		if (_item_index isEqualTo -1) then {
			_h_trunk pushBack [_h_item, _h_amount];
		} else {
			_h_trunk set [_item_index, [_h_item, (_h_amount + ((_h_trunk select _item_index) select 1))]];
		};
		_h_ret = true;
	};
} else {
	if (_item_index != -1) then
	{
		if (_h_amount isEqualTo ((_h_trunk select _item_index) select 1)) then {
			_h_trunk deleteAt _item_index;
		} else {
			_h_trunk set [_item_index, [_h_item, ((_h_trunk select _item_index) select 1) - _h_amount]];
		};
		_h_ret = true;
	};
};

if (_h_ret) then {
	_h_target setVariable [_h_variable, _h_trunk, _h_apply];
};

_h_ret;
