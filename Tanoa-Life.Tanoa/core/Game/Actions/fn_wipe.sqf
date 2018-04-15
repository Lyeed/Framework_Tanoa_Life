/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_action";

if (!(isNil "gServer_soonReboot")) exitWith {
	["Veuillez attendre le <t color='#B40404'>redémarrage</t> du serveur pour changer de personnage."] call AlysiaClient_fnc_error;
};

_action =
[
	format
	[
		"Êtes-vous sûr ? Une fois validées <t color='#FF4000'>%1</t> sera considéré comme disparu et vous devrez incarner une autre personne à partir de ses débuts.<br/>",
		player getVariable "realname"
	],
	"Wipe : validation",
	"Valider",
	"Annuler"
] call BIS_fnc_guiMessage;
if (_action) then
{
	if (isNull g_company) then
	{
		disableUserInput true;
		["Action en cours. Veuillez patienter..."] call AlysiaClient_fnc_info;

		if (!isNull(g_laboratory)) then {
			deleteVehicle g_laboratory;
		};

		{
			if (((_x getVariable ["house_owner", ["", ""]]) select 0) isEqualTo (getPlayerUID player)) then {
				[_x] remoteExec ["AlysiaServer_fnc_house_sell", 2];
			};
		} forEach g_houses;

		[getPlayerUID player] remoteExec ["AlysiaServer_fnc_query_delete_wipe", 2];

		player setVariable ["realname", nil];
		uiSleep 4;

		disableUserInput false;

		["Votre compte a été supprimé. Veuillez vous reconnectez-vous avec votre nouvelle identité."] spawn AlysiaClient_fnc_errorExit;
	} else {
		["Vous devez quitter votre entreprise avant de pouvoir changer de personnage."] call AlysiaClient_fnc_error;
	};
};
