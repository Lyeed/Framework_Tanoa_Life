/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_display"];
_type = [_this, 0, -1, [-1]] call BIS_fnc_param;

if (_type isEqualTo -1) exitWith {};

disableSerialization;
_display = findDisplay 2400;
if (isNull _display) exitWith {};

if (_type isEqualTo 0) then
{
	(_display displayCtrl 2402) ctrlSetStructuredText parseText "<t align='center'>Acheter<br/>";
	(_display displayCtrl 2412) ctrlSetBackgroundColor [1, 1, 1, 1];
	(_display displayCtrl 2412) ctrlSetStructuredText parseText "<t align='center' size='2' color='#000000'>Acheter</t>";
	(_display displayCtrl 2413) ctrlSetBackgroundColor [0, 0, 0, 1];
	(_display displayCtrl 2413) ctrlSetStructuredText parseText "<t align='center' size='2' color='#FFFFFF'>Vendre</t>";
} else {
	(_display displayCtrl 2402) ctrlSetStructuredText parseText "<t align='center'>Vendre<br/>";
	(_display displayCtrl 2412) ctrlSetBackgroundColor [0, 0, 0, 1];
	(_display displayCtrl 2412) ctrlSetStructuredText parseText "<t align='center' size='2' color='#FFFFFF'>Acheter</t>";
	(_display displayCtrl 2413) ctrlSetBackgroundColor [1, 1, 1, 1];
	(_display displayCtrl 2413) ctrlSetStructuredText parseText "<t align='center' size='2' color='#000000'>Vendre</t>";
};

g_shop_mod = _type;

[] call AlysiaClient_fnc_shop_virtual_update_list;
