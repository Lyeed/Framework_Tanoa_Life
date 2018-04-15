/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_vehicle";
_vehicle = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _vehicle) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (!(isNull (player getVariable ["wallet_obj", objNull]))) exitWith {
	["Vous transportez déjà une valise."] call AlysiaClient_fnc_error;
};
if ((_vehicle getVariable ["trunk_in_use_ID", ""]) != "") exitWith {
	["Vous ne pouvez pas récupérer de valise alors que le coffre est en cours d'utilisation."] call AlysiaClient_fnc_error;
};
if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};

if ([false, _vehicle, "Trunk", "money_transfer", 1] call AlysiaClient_fnc_handleTrunk) then
{
	g_action_inUse = true;
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	uiSleep(random(2) + 0.50);
	[] spawn AlysiaClient_fnc_moneyBagHandle;
	g_action_inUse = false;
} else {
	["Le coffre ne comprend aucune valise de billets de banque."] call AlysiaClient_fnc_error;
};
