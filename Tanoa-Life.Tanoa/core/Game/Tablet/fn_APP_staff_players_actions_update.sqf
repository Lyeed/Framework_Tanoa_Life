/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list", "_sel", "_ctrl_actions"];

disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if (_sel isEqualTo -1) exitWith {};

_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_player = call compile (_list lbData _sel);
if ((isNil "_player") || {(isNull _player)}) exitWith
{
	_list lbDelete _sel;
	_list lbSetCurSel 0;
};

_ctrl_actions = _display displayCtrl 9001;
lbClear _ctrl_actions;

{
	if (call compile getText(_x >> "condition")) then
	{
		_index = _ctrl_actions lbAdd getText(_x >> "name");
		_ctrl_actions lbSetData [_index, getText(_x >> "statement")];
	};
} forEach ("(getPlayerUID player) in getArray(_x >> 'allow')" configClasses (missionConfigFile >> "ALYSIA_STAFF" >> "commands" >> "target"));
if ((lbSize _ctrl_actions) isEqualTo 0) then
{
	_ctrl_actions lbAdd "Aucune";
	(_display displayCtrl 9002) ctrlEnable false;
} else {
	(_display displayCtrl 9002) ctrlEnable true;
};

_ctrl_actions lbSetCurSel 0;
