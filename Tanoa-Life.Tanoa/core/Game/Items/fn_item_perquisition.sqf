/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_type", "_function", "_action"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_type = [_this, 1, "", [""]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (getNumber(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(playerSide) >> 'housing' >> 'search') isEqualTo 0) exitWith {
	["Vous n'êtes pas autorisé à utiliser cet objet."] call AlysiaClient_fnc_error;
};
if (_target getVariable ["perquisition", false]) exitWith {
	["Ce bâtiment est déja en train d'être perquisitionné."] call AlysiaClient_fnc_error;
};

_function = switch (_type) do
{
	case "house": {"AlysiaServer_fnc_house_perquisition"};
	case "company": {"AlysiaServer_fnc_company_perquisition"};
	default {""};
};
if (_function isEqualTo "") exitWith {};

_action =
[
	"La perquisition sera valide 10 minutes.<br/>Vous pourrez intéragir avec le contenu du bâtiment pendant ce laps de temps.",
	"Perquisition/Fouille",
	"Continuer",
	"Annuler"
] call BIS_fnc_guiMessage;
if (_action) then
{
	if ([false, "perqui", 1] call AlysiaClient_fnc_handleInv) then
	{
		["Perquisition <t color='#3ADF00'>débuté</t>."] call AlysiaClient_fnc_info;
		[_target, player] remoteExec [_function, 2];
	} else {
		["Impossible de trouver l'objet dans votre inventaire."] call AlysiaClient_fnc_error;
	};
};
