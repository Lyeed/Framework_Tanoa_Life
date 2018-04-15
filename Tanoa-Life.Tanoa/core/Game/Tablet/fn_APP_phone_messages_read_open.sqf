/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_sel", "_number", "_display"];
disableSerialization;

_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if ((_sel isEqualTo -1) || (isNull _list)) exitWith {};

_display = uiNamespace getVariable["tablet", displayNull];
if (isNull _display) exitWith {};

_number = (g_phone_messages select _sel) select 0;
if (_number in ["GUER", "WEST", "EAST", "Numéro Masqué", (player getVariable ["number", ""])]) then
{
	[8328, false] call AlysiaClient_fnc_tabletShow;
	[8327, false] call AlysiaClient_fnc_tabletShow;
	if (_number in ["Numéro Masqué", (player getVariable ["number", ""])]) then
	{
		[8315, false] call AlysiaClient_fnc_tabletShow;
		[8316, false] call AlysiaClient_fnc_tabletShow;
	} else {
		[8315, true] call AlysiaClient_fnc_tabletShow;
		[8316, true] call AlysiaClient_fnc_tabletShow;
	};
} else {
	[8315, true] call AlysiaClient_fnc_tabletShow;
	[8316, true] call AlysiaClient_fnc_tabletShow;
	if (([_number, g_phone_contacts] call AlysiaClient_fnc_index) isEqualTo -1) then
	{
		[8328, true] call AlysiaClient_fnc_tabletShow;
		[8327, true] call AlysiaClient_fnc_tabletShow;
	} else {
		[8328, false] call AlysiaClient_fnc_tabletShow;
		[8327, false] call AlysiaClient_fnc_tabletShow;
	};
};

[8312, true] call AlysiaClient_fnc_tabletShow;
[8321, true] call AlysiaClient_fnc_tabletShow;
[8322, true] call AlysiaClient_fnc_tabletShow;
[8323, true] call AlysiaClient_fnc_tabletShow;
[8324, true] call AlysiaClient_fnc_tabletShow;

(_display displayCtrl 8321) ctrlSetStructuredText parseText format["<t align='left'>Numéro :</t><t align='right'>%1</t>", _number];
(_display displayCtrl 8322) ctrlSetStructuredText parseText format["<t align='left'>%1</t>", (g_phone_messages select _sel) select 3];

if (((g_phone_messages select _sel) select 2) isEqualTo 0) then
{
	(g_phone_messages select _sel) set[2, 1];
	_list lbSetPicture [_sel, "Alysia_Client_Texture\Data\phone\read\sms_old.paa"];
};
