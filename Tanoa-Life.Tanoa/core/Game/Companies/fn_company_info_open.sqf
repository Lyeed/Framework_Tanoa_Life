/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_info", "_display", "_target"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

_info = g_interaction_target getVariable "company_info";
if (isNil "_info") exitWith {
	["Impossible de trouver les informations de l'entreprise."] call AlysiaClient_fnc_error;
};

createDialog "RscDisplayDefaultText";

disableSerialization;
_display = findDisplay 68000;
if (isNull _display) exitWith {};

(_display displayCtrl 68002) ctrlSetText "Alysia_Client_Texture\Data\companies\background.jpg";
(_display displayCtrl 68003) ctrlSetStructuredText parseText "<t size='1.5' align='center'>Informations</t>";
(_display displayCtrl 68001) ctrlSetStructuredText parseText format
[
		"<t align='center'>"
	+	"Nom<br/>"
	+	"%1<br/><br/>"
	+	"Type<br/>"
	+	"%2<br/><br/>"
	+	"DG<br/>"
	+	"%3",
	(_info select 0),
	getText(missionConfigFile >> "ALYSIA_COMPANIES_TYPES" >> (_info select 2) >> "name"),
	(_info select 4)
];
