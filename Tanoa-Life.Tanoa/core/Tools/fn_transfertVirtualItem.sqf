/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_t_from", "_t_target", "_t_variable", "_t_item", "_t_amount", "_t_apply", "_t_return"];
_t_from = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_t_target = [_this, 1, objNull, [objNull]] call BIS_fnc_param;
_t_variable = [_this, 2, "", [""]] call BIS_fnc_param;
_t_item = [_this, 3, "", [""]] call BIS_fnc_param;
_t_amount = [_this, 4, 1, [1]] call BIS_fnc_param;
_t_apply = [_this, 5, true, [true]] call BIS_fnc_param;
_t_return = false;

if (_t_variable isEqualTo "") exitWith {false};
if (_t_item isEqualTo "") exitWith {false};
if (isNull _t_target) exitWith {false};

if (_t_from isEqualTo player) then
{
	if ([false, _t_item, _t_amount] call AlysiaClient_fnc_handleInv) then
	{
		if ([true, _t_target, _t_variable, _t_item, _t_amount, _t_apply] call AlysiaClient_fnc_handleTrunk) then {
			_t_return = true;
		} else {
			[true, _t_item, _t_amount] call AlysiaClient_fnc_handleInv;
		};
	};
} else {
	if ([false, _t_from, _t_variable, _t_item, _t_amount, _t_apply] call AlysiaClient_fnc_handleTrunk) then
	{
		if ([true, _t_item, _t_amount] call AlysiaClient_fnc_handleInv) then {
			_t_return = true;
		} else {
			[true, _t_from, _t_variable, _t_item, _t_amount, _t_apply] call AlysiaClient_fnc_handleTrunk;
		};
	};
};

_t_return;
