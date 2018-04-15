/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if (!(isNil "gServer_soonReboot")) exitWith {
	["Veuillez attendre le <t color='#B40404'>redémarrage</t> du serveur pour construire l'entreprise."] call AlysiaClient_fnc_error;
};

if (!(_target getVariable ["construction", false])) exitWith {
	["Cette entreprise n'est pas en construction."] call AlysiaClient_fnc_error;
};

if (!((_target getVariable ["construction_require", []]) isEqualTo [])) exitWith {
	["Cette entreprise a encore besoin de matériaux."] call AlysiaClient_fnc_error;
};

if ((_target getVariable ["trunk_in_use_ID", ""]) != "") exitWith {
	["L'inventaire est en cours d'utilisation ou quelqu'un est déjà en train de construire l'entreprise."] call AlysiaClient_fnc_error;
};

_target setVariable ["trunk_in_use_ID", "CONSTRUCTION", true];

if (!(["Construction", 15, _target, "", "AinvPknlMstpsnonWnonDnon_medic_1"] call AlysiaClient_fnc_showProgress)) exitWith {
	_target setVariable ["trunk_in_use_ID", "", true];
};

if (isNil {_target getVariable "company_info"}) exitWith {
	["Impossible de trouver les informations de l'entreprise."] call AlysiaClient_fnc_error;
};

["La bâtiment se construira dans 10 secondes.<br/>Veuillez évacuer la zone pour éviter toute blessure."] call AlysiaClient_fnc_info;
uiSleep 10;

[_target] remoteExecCall ["AlysiaServer_fnc_company_build", 2];
