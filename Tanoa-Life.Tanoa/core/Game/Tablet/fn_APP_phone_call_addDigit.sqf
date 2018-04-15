/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_digit", "_number"];
_digit = [_this, 0, 0, [0]] call BIS_fnc_param;

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_number = uiNamespace getVariable ["phone_call_number", ""];
if (([_number] call CBA_fnc_strLen) < 6) then
{
	_number = _number + str(_digit);
	(_display displayCtrl 8920) ctrlSetStructuredText parseText format["<t size='2.5' align='center'>%1</t>", _number];
	uiNamespace setVariable ["phone_call_number", _number];
};
