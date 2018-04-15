/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_display";

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

(_display displayCtrl 7905) ctrlSetStructuredText parseText format["<t align='center'>%1", gServer_rebootHour_txt];

while {(g_app isEqualTo "SERVER")} do
{
	(_display displayCtrl 7901) ctrlSetStructuredText parseText format["<t align='center'>%1</t>", [serverTime, "H:MM:SS"] call CBA_fnc_formatElapsedTime];
	(_display displayCtrl 7903) ctrlSetStructuredText parseText format["<t align='center'>%1</t>", [(gServer_rebootHour * 60) - serverTime, "H:MM:SS"] call CBA_fnc_formatElapsedTime];
	(_display displayCtrl 7907) ctrlSetStructuredText parseText format["<t align='center'>%1</t>", [(g_totalSession * 60), "H:MM:SS"] call CBA_fnc_formatElapsedTime];
	(_display displayCtrl 7909) ctrlSetStructuredText parseText format["<t align='center'>%1</t>", count(allPlayers)];
	uiSleep 0.5;
};
