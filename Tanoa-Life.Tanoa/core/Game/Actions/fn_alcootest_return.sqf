/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_alcool", "_display"];
_alcool = [_this, 0, 0, [0]] call BIS_fnc_param;

createDialog "RscDisplayDefaultText";

disableSerialization;
_display = findDisplay 68000;
if (isNull _display) exitWith {};

(_display displayCtrl 68003) ctrlSetStructuredText parseText "<t size='1.5' align='center'>Alcootest</t>";
(_display displayCtrl 68001) ctrlSetStructuredText parseText format
[
		"<t align='left'>Résultat</t><t align='right' color='%2'>%1</t><br/>"
	+	"<t align='left'>Gramme d'alcool par litre de sang</t><t align='right'>%3</t>",
	if (_alcool > 0) then {"Positif"} else {"Négatif"},
	if (_alcool > 0) then {"#FF0000"} else {"#64FE2E"},
	_alcool
];
