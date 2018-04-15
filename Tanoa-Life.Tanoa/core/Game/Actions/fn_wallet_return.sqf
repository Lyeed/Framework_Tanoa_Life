/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_licenses", "_indentityInfo", "_from", "_display", "_ctrl_licenses"];
_from = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_licenses = [_this, 1, [], [[]]] call BIS_fnc_param;
_indentityInfo = [_this, 2, [], [[]]] call BIS_fnc_param;

if (isNull _from) exitWith {};

createDialog "RscDisplayWallet";

disableSerialization;
_display = findDisplay 58000;

_ctrl_licenses = _display displayCtrl 58001;
lbClear _ctrl_licenses;

{
	_index = _ctrl_licenses lbAdd ([_x] call AlysiaClient_fnc_licenseGetName);
	_ctrl_licenses lbSetData [_index, _x];
} forEach _licenses;
if ((lbSize _ctrl_licenses) isEqualTo 0) then
{
	_ctrl_licenses lbAdd "Aucune";
	ctrlShow[58004, false];
	ctrlShow[58005, false];
	ctrlShow[58006, false];
	ctrlShow[58007, false];
	ctrlShow[58008, false];
};

(_display displayCtrl 58003) ctrlSetText format
[
	"Alysia_Client_Texture\Data\faces\%1.paa",
	(face _from)
];

(_display displayCtrl 58002) ctrlSetStructuredText parseText format
[
	"<t align='left'>Prénom</t><t align='right'>%1</t><br/>" +
	"<t align='left'>Nom</t><t align='right'>%2</t><br/>" +
	"<t align='left'>Sexe</t><t align='right'>%3</t><br/>" +
	"<t align='left'>Date de naissance</t><t align='right'>%4/%5/%6</t><br/>" +
	"<t align='left'>Pays d'origine</t><t align='right'>%7</t></t>" +
	"<t align='left'>Faction</t><t align='right'>%8</t></t>" +
	"<t align='left'>Rang</t><t align='right'>%9</t></t>",
	(_indentityInfo select 0),
	(_indentityInfo select 1),
	(_indentityInfo select 4),
	(_indentityInfo select 2) select 0,
	(_indentityInfo select 2) select 1,
	(_indentityInfo select 2) select 2,
	getText(missionConfigFile >> "ALYSIA_NATIONALITIES" >> (_indentityInfo select 3) >> "name"),
	[side _from] call AlysiaClient_fnc_sideToStr,
	[side _from, (_from getVariable ["rank", 0])] call AlysiaClient_fnc_rankToStr
];

_config = missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "licenses_seize";
if (!(isClass(_config)) || ((player getVariable ["rank", 0]) < getNumber(_config >> "rank"))) then
{
	ctrlShow[58004, false];
	ctrlShow[58005, false];
	ctrlShow[58006, false];
	ctrlShow[58007, false];
	ctrlShow[58008, false];
};

while {!(isNull _display)} do
{
	if (isNull _from) exitWith
	{
		["Passeport <t color='#FFBF00'>interrompu</t>.<br/>Cible invalide."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (player getVariable ["is_coma", false]) exitWith
	{
		["Passeport <t color='#FFBF00'>interrompu</t>.<br/>Vous êtes dans le coma."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if ((player distance _from) > ((((boundingBox _from) select 1) select 0) + 2.5)) exitWith
	{
		["Passeport <t color='#FFBF00'>interrompu</t>.<br/>Vous êtes trop loin de la cible."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (player getVariable ["restrained", false]) exitWith
	{
		["Passeport <t color='#FFBF00'>interrompu</t>.<br/>Vous êtes menotté."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};
	if (player getVariable ["surrender", false]) exitWith
	{
		["Passeport <t color='#FFBF00'>interrompu</t>.<br/>Vous avez les mains sur la tête."] call AlysiaClient_fnc_info;
		closeDialog 0;
	};

	uiSleep 0.5;
};
