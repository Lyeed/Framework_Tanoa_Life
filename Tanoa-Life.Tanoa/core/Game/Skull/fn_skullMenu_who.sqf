/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_info", "_display", "_skull"];
_skull = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _skull) exitWith {};

_info = _skull getVariable "info";
if (isNil "_info") exitWith {};

if (["Analyse", 10, _skull, "", "AinvPknlMstpsnonWnonDnon_medic_1"] call AlysiaClient_fnc_showProgress) then
{
	if ([false, "adn", 1] call AlysiaClient_fnc_handleInv) then
	{
		createDialog "RscDisplayDefaultText";

		disableSerialization;
		_display = findDisplay 68000;

		(_display displayCtrl 68002) ctrlSetText "Alysia_Client_Texture\Data\skull\background.jpg";
		(_display displayCtrl 68003) ctrlSetStructuredText parseText "<t size='1.5' align='center'>Analyses</t>";
		(_display displayCtrl 68001) ctrlSetStructuredText parseText format
		[
				"<t align='left'>Date</t><t align='right'>%1</t><br/>"
			+	"<t align='left'>Heure</t><t align='right'>%2</t><br/>"
			+	"<t align='left'>ADN victime</t><t align='right'>%3</t><br/>"
			+	"<t align='left'>Origine</t><t align='right'>%4</t><br/>"
			+	"<t align='left'>Sexe</t><t align='right'>%5</t><br/>"
			+	"<t align='left'>ADN Tueur</t><t align='right'>%6</t>",
			(_info select 0),
			(_info select 1),
			[(_info select 2)] call AlysiaClient_fnc_adn_get,
			(_info select 3),
			(_info select 4),
			[(_info select 5)] call AlysiaClient_fnc_adn_get
		];
	} else {
		["Vous n'avez pas de test ADN."] call AlysiaClient_fnc_error;
	};
};
