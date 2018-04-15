/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_obj", "_price"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if (!(['company_money_tranfer'] call AlysiaClient_fnc_hasLicense)) exitWith {
	["Vous n'avez pas le licence requise pour effectuer cette action."] call AlysiaClient_fnc_error;
};

if (isNull g_company) exitWith {
	["Vous n'avez pas d'entreprise."] call AlysiaClient_fnc_error;
};

if (_target getVariable ["inUse", false]) exitWith {
	["Quelqu'un est en train d'utiliser le distributeur."] call AlysiaClient_fnc_error;
};

_obj = player getVariable ["wallet_obj", objNull];
if (!isNull(_obj)) exitWith {
	["Vous avez déjà une valise de billets."] call AlysiaClient_fnc_error;
};

if (getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(_target) >> "company_money_get") isEqualTo 0) exitWith {
	["Vous ne pouvez pas récupérer de valise de billets à partir de ce distributeur."] call AlysiaClient_fnc_error;
};

_price = 10000;
if ((g_company getVariable ["company_bank", 0]) < _price) exitWith {
	["Solde du compte de l'entreprise insuffisant."] call AlysiaClient_fnc_error;
};

if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};

g_action_inUse = true;
playSound "buy";
[g_company, false, _price, (player getVariable "realname"), "Activité professionnelle"] remoteExec ["AlysiaServer_fnc_company_bank_handle", 2];

player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
uiSleep(random(2) + 0.50);

[] spawn AlysiaClient_fnc_moneyBagHandle;
g_action_inUse = false;
