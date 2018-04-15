/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (!hasInterface) exitWith {};

if (missionNamespace getVariable ["g_connected", false]) then
{
	["Arrêt du serveur.<br/>Veuillez descendre de votre véhicule et déconnecter.<br/>Vous serez expulsé automatiquement dans 60 secondes."] call AlysiaClient_fnc_info;
	systemChat "Sauvegarde des véhicules dans 2 minutes. VEUILLEZ DESCENDRE DE VOTRE VEHICULE et DECONNECTER";
	systemChat "Sauvegarde des véhicules dans 2 minutes. VEUILLEZ DESCENDRE DE VOTRE VEHICULE et DECONNECTER";
	systemChat "Sauvegarde des véhicules dans 2 minutes. VEUILLEZ DESCENDRE DE VOTRE VEHICULE et DECONNECTER";
	uiSleep 30;

	["Arrêt du serveur imminent<br/>Veuillez déconnecter.<br/>Vous serez expulsé automatiquement dans 30 secondes."] call AlysiaClient_fnc_info;
	uiSleep 30;

	closeDialog 0;
	uiSleep 2;

	[] call AlysiaDB_fnc_query_update_disconnect;
	uiSleep 3;
	"Bye" call BIS_fnc_endMission;
} else {
	"Bye" call BIS_fnc_endMission;
};
