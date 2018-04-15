/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list"];

disableSerialization;
_display = findDisplay 7500;
if (isNull _display) exitWith {};

(_display displayCtrl 8319) ctrlSetStructuredText parseText format
[
	"<t align='left'>Vos messages</t><t align='right'>%1/%2</t>",
	count g_phone_messages,
	getNumber(missionConfigFile >> "ALYSIA_PHONE" >> "FORFAITS" >> g_phone_forfait >> "sms_max")
];

_list = _display displayCtrl 8320;
lbClear _list;

if (!(g_phone_messages isEqualTo [])) then
{
	{
		_index = _list lbAdd format["%1 - %2", [(_x select 0)] call AlysiaClient_fnc_phone_number_to_name, (_x select 1)];
		if ((_x select 2) isEqualTo 1) then {
			_list lbSetPicture [_index, "Alysia_Client_Texture\Data\phone\read\sms_old.paa"];
		} else {
			_list lbSetPicture [_index, "Alysia_Client_Texture\Data\phone\read\sms_new.paa"];
		};
		_list lbSetData [_index, (_x select 0)];
	} forEach (g_phone_messages);
	_list lbSetCurSel -1;

	[8325, true] call AlysiaClient_fnc_tabletShow;
	[8326, true] call AlysiaClient_fnc_tabletShow;
};
