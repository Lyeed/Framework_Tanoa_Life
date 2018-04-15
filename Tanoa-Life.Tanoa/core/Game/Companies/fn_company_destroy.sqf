/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if (isNil {_target getVariable "company_info"}) exitWith {
	["Impossible de trouver les informations de l'entreprise."] call AlysiaClient_fnc_error;
};

if (!(isNil "gServer_soonReboot")) exitWith {
	["Veuillez attendre le <t color='#B40404'>redémarrage</t> du serveur pour détruire l'entreprise."] call AlysiaClient_fnc_error;
};

if (["Destruction", 15, _target, "", "AinvPknlMstpsnonWnonDnon_medic_1"] call AlysiaClient_fnc_showProgress) then
{
	["La bâtiment se détruira dans 10 secondes.<br/>Veuillez évacuer la zone pour éviter toute blessure."] call AlysiaClient_fnc_info;
	uiSleep 10;
	[true, _target getVariable ["company_bank", 0]] call AlysiaClient_fnc_handleCash;
	[_target] remoteExecCall ["AlysiaServer_fnc_company_destroy", 2];
};
