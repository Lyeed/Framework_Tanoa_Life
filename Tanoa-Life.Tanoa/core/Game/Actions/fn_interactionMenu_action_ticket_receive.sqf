/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_action", "_side", "_price", "_desc", "_from", "_company"];
_price = round([_this, 0, 0, [0]] call BIS_fnc_param);
_desc = [_this, 1, "Aucune", [""]] call BIS_fnc_param;
_from = [_this, 2, objNull, [objNull]] call BIS_fnc_param;
_company = [_this, 3, objNull, [objNull]] call BIS_fnc_param;

if (isNull _from) exitWith {};
if (_price < 1) exitWith {};

_side = side _from;
_action =
[
	format
	[
		"<t align='center'><img size='6' image='%6'/></t><br/>" +
		"<t align='left' font='PuristaMedium'>Vous avez reçu une <t color='#74DF00'>demande de paiement</t></t><br/><br/>" +
		"<t align='left' font='PuristaMedium'>Provenance</t><t align='right'>%1</t><br/>" +
		"<t align='left' font='PuristaMedium'>Emetteur</t><t align='right'>%2 %3</t><br/>" +
		"<t align='left' font='PuristaMedium'>Montant</t><t align='right'><t color='#8cff9b'>%4</t>$</t><br/>" +
		"<t align='center'>-----------------------</t><br/>" +
		"<t align='center' font='PuristaMedium'>Description</t><br/>" +
		"%5",
		if (_side isEqualTo civilian) then {(_company getVariable "company_info") select 0} else {getText(missionConfigFile >> "ALYSIA_FACTIONS" >> str(_side) >> "name_full")},
		if (_side isEqualTo civilian) then {""} else {[_side, _from getVariable ["rank", 0]] call AlysiaClient_fnc_rankToStr},
		_from getVariable "realname",
		[_price] call AlysiaClient_fnc_numberText,
		_desc,
		getText(missionConfigFile >> "ALYSIA_FACTIONS" >> str(_side) >> "icon")
	],
	"Paiement",
	"Accepter",
	"Refuser"
] call BIS_fnc_guiMessage;
if (_action && (g_atm >= _price)) then
{
	[false, _price, "Paiement"] call AlysiaClient_fnc_handleATM;
	playSound "buy";
	["Votre paiement a été <t color='#01DF01'>accepté</t>.", "buy"] remoteExecCall ["AlysiaClient_fnc_info", _from];
	switch _side do
	{
		case west: {[west, true, _price] remoteExecCall ["AlysiaServer_fnc_factionBankHandle", 2]};
		case east: {[east, true, _price] remoteExecCall ["AlysiaServer_fnc_factionBankHandle", 2]};
		case independent: {[independent, true, _price] remoteExecCall ["AlysiaServer_fnc_factionBankHandle", 2]};
		case civilian: {[_company, true, _price, (_from getVariable "realname"), "Demande de paiement"] remoteExec ["AlysiaServer_fnc_company_bank_handle", 2]};
	};
} else {
	["Votre paiement a été <t color='#FF4000'>refusé</t>."] remoteExecCall ["AlysiaClient_fnc_info", _from];
};
