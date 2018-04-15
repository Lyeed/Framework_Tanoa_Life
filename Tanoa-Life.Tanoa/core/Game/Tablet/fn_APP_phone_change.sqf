/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_action", "_price"];

if ((player getVariable ["number", ""]) isEqualTo "") exitWith {};

_price = getNumber(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "phone" >> "change_number_price");
if (g_atm < _price) exitWith {
	[format["Vous n'avez pas assez d'argent<br/>Prix : <t color='#8cff9b'>%1</t>$", [_price] call AlysiaClient_fnc_numberText]] call AlysiaClient_fnc_error;
};

_action =
[
	"Êtes-vous sûr de vouloir changer de numéro ? Une fois validé vos anciens contacts ne pourront plus vous joindre.<br/><br/><t align='left'>Prix</t><t align='right'><t color='#8cff9b'>10.000</t>$</t>",
	"Changement de numéro",
	"Valider",
	"Annuler"
] call BIS_fnc_guiMessage;
if (_action) then
{
	[] call AlysiaClient_fnc_phone_number_change;
	[format["Vous avez changé de numéro<br/>Nouveau : <t color='#FF4000'>%1</t>", (player getVariable ["number", ""])]] call AlysiaClient_fnc_info;
	playSound "buy";
	[false, 10000, "Changement numéro"] call AlysiaClient_fnc_handleATM;
};

["PHONE_CATEGORY"] spawn AlysiaClient_fnc_tabletApp;
