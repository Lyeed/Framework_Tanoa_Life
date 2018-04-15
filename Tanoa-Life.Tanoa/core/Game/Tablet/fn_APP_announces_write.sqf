/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_price"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_price = 250;
if (g_atm >= _price) then
{
	[9526, true] call AlysiaClient_fnc_tabletShow;
	[9527, true] call AlysiaClient_fnc_tabletShow;
	[9528, true] call AlysiaClient_fnc_tabletShow;
};

(_display displayCtrl 9521) ctrlSetStructuredText parseText format
[
	"<t font='EtelkaMonospacePro' size='0.8'>Votre message restera en ligne %1<br/>Prix par message <t color='#8cff9b'>%2</t>$</t>",
	[(gServer_rebootHour * 60) - serverTime, "M:SS"] call CBA_fnc_formatElapsedTime,
	[_price] call AlysiaClient_fnc_numberText
];
