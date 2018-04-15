/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_completeEmpty", "_isEmpty", "_select"];
disableSerialization;

_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_completeEmpty = [_this, 1, true, [true]] call BIS_fnc_param;
_select = [_this, 2, true, [true]] call BIS_fnc_param;

if (isNull _list) exitWith {};

lbClear _list;
_isEmpty = false;

{
	_index = _list lbAdd format["%1x %2", ([_x select 1] call AlysiaClient_fnc_numberText), ([_x select 0] call AlysiaClient_fnc_itemGetName)];
	_list lbSetData [_index, _x select 0];
	_list lbSetPicture [_index, ([_x select 0] call AlysiaClient_fnc_itemGetImage)];
	_list lbSetTooltip [_index, ([_x select 0] call AlysiaClient_fnc_itemGetName)];
} forEach ([] call AlysiaClient_fnc_getInv);

if ((lbSize _list) isEqualTo 0) then
{
	_isEmpty = true;
	if (_completeEmpty) then {
		_list lbAdd "Vide";
	};
};

if (_select) then
{
	if ((lbCurSel _list) isEqualTo -1) then {
		_list lbSetCurSel 0;
	} else {
		_list lbSetCurSel (lbCurSel _list);
	};
};

_isEmpty;
