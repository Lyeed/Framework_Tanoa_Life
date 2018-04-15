/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_number";

_number = uiNamespace getVariable ["phone_call_number", ""];
if (([_number] call CBA_fnc_strLen) > 1) then
{
	_number = [_number, 0, ([_number] call CBA_fnc_strLen) - 1] call CBA_fnc_substr;
	((uiNamespace getVariable ["tablet", displayNull]) displayCtrl 8920) ctrlSetStructuredText parseText format["<t size='2.5' align='center'>%1</t>", _number];
	uiNamespace setVariable ["phone_call_number", _number];
} else {
	((uiNamespace getVariable ["tablet", displayNull]) displayCtrl 8920) ctrlSetStructuredText parseText "";
	uiNamespace setVariable ["phone_call_number", ""];
};
