/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_display";

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

(_display displayCtrl 9700) ctrlSetText "Alysia_Client_Texture\Data\faction\CIV_logo.paa";

(_display displayCtrl 9701) ctrlSetStructuredText parseText "<t align='left' size='2' font='PuristaMedium'>République Populaire de Tanoa</t>";

(_display displayCtrl 9702) ctrlSetStructuredText parseText format
[
	"<t align='left' font='PuristaMedium'>Vous êtes <t color='#74DF00'>%1</t></t>.<br/>" +
	"Votre gouvernement possède <t color='#8cff9b'>%2</t>$ dans son compte en banque.<br/><br/>" +
	"Information sur les <t color='#190707'>taxes</t><br/>",
	[playerSide, (player getVariable ["rank", 0])] call AlysiaClient_fnc_rankToStr,
	[[playerSide] call AlysiaClient_fnc_atmFactionget] call AlysiaClient_fnc_numberText
];
