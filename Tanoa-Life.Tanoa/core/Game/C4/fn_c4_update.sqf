/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_timer", "_minuts", "_seconds"];

if (isNull g_interaction_target) exitWith {};

disableSerialization;
_display = findDisplay 12000;
if (isNull _display) exitWith {};

_timer = [[(g_interaction_target getVariable ["bomb_timer", 0]), "M:SS"] call CBA_fnc_formatElapsedTime, ":"] call CBA_fnc_split;

_minuts = parseNumber(_timer select 0);
if (_minuts > 9) then
{
	(_display displayCtrl 12001) ctrlSetText format["Alysia_Client_Texture\Data\c4\%1.paa", floor(_minuts / 10)];
	(_display displayCtrl 12002) ctrlSetText format["Alysia_Client_Texture\Data\c4\%1.paa", (_minuts % 10)];
} else {
	(_display displayCtrl 12001) ctrlSetText "Alysia_Client_Texture\Data\c4\0.paa";
	(_display displayCtrl 12002) ctrlSetText format["Alysia_Client_Texture\Data\c4\%1.paa", _minuts];
};

_seconds = parseNumber(_timer select 1);
if (_seconds > 9) then
{
	(_display displayCtrl 12003) ctrlSetText format["Alysia_Client_Texture\Data\c4\%1.paa", floor(_seconds / 10)];
	(_display displayCtrl 12004) ctrlSetText format["Alysia_Client_Texture\Data\c4\%1.paa", (_seconds % 10)];
} else {
	(_display displayCtrl 12003) ctrlSetText "Alysia_Client_Texture\Data\c4\0.paa";
	(_display displayCtrl 12004) ctrlSetText format["Alysia_Client_Texture\Data\c4\%1.paa", _seconds];
};
