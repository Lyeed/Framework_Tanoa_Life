/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_obj", "_max", "_amount"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if (_target getVariable ["inUse", false]) exitWith {
	["Quelqu'un est en train d'utiliser le distributeur."] call AlysiaClient_fnc_error;
};

if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};

_obj = player getVariable ["wallet_obj", objNull];
if (isNull(_obj)) exitWith {
	["Vous n'avez pas de valise de billet."] call AlysiaClient_fnc_error;
};

_max = getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(_target) >> "money_stock");
_amount = _target getVariable ["money", _max];
if (_amount < _max) then
{
	_target setVariable ["inUse", true, false];
	g_action_inUse = true;
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	uiSleep(random(2) + 0.50);
	playSound "buy";
	detach _obj;
	deleteVehicle _obj;
	[g_company, true, 10000 + floor(15000 * (1 - (_amount / _max))), (player getVariable "realname"), "Activité professionnelle"] remoteExec ["AlysiaServer_fnc_company_bank_handle", 2];
	[_target, true, 10000] call AlysiaClient_fnc_atmMoneyHandle;
	g_action_inUse = false;
	_target setVariable ["inUse", false, false];
} else {
	["Le distribteur est déjà plein."] call AlysiaClient_fnc_error;
};
