/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list_player", "_list_construction", "_require"];

if (isNull g_interaction_target) exitWith
{
	["Transfert annulé : Cible invalide."] call AlysiaClient_fnc_error;
	closeDialog 0;
};

disableSerialization;
_display = findDisplay 91000;
if (isNull _display) exitWith {};

_require = g_interaction_target getVariable [g_interaction_reduce_var, []];

_list_construction = _display displayCtrl 91001;
lbClear _list_construction;

{
	_index = _list_construction lbAdd format["%1x %2", ([(_x select 1)] call AlysiaClient_fnc_numberText), ([(_x select 0)] call AlysiaClient_fnc_itemGetName)];
	_list_construction lbSetPicture [_index, ([(_x select 0)] call AlysiaClient_fnc_itemGetImage)];
	_list_construction lbSetTooltip [_index, (_list_construction lbText _index)];
} forEach _require;
if ((lbSize _list_construction) isEqualTo 0) then
{
	_list_construction lbAdd "Aucun";
	ctrlShow[91003, false];
	ctrlShow[91004, false];
};

_list_player = _display displayCtrl 91002;
lbClear _list_player;

{
	if (([(_x select 0), _require] call AlysiaClient_fnc_index) != -1) then
	{
		_index = _list_player lbAdd format["%1x %2", ([(_x select 1)] call AlysiaClient_fnc_numberText), ([(_x select 0)] call AlysiaClient_fnc_itemGetName)];
		_list_player lbSetData [_index, (_x select 0)];
		_list_player lbSetPicture [_index, ([(_x select 0)] call AlysiaClient_fnc_itemGetImage)];
		_list_player lbSetTooltip [_index, (_list_player lbText _index)];
	};
} forEach ([] call AlysiaClient_fnc_getInv);
if ((lbSize _list_player) isEqualTo 0) then
{
	_list_player lbAdd "Vide";
	ctrlShow[91003, false];
	ctrlShow[91004, false];
};

if ((lbCurSel _list_player) isEqualTo -1) then {
	_list_player lbSetCurSel 0;
};
