/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_vehicle", "_obj"];
_vehicle = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _vehicle) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

_obj = player getVariable ["wallet_obj", objNull];
if (isNull _obj) exitWith {
	["Vous ne transportez pas de valise de billets."] call AlysiaClient_fnc_error;
};

if ((_vehicle getVariable ["trunk_in_use_ID", ""]) != "") exitWith {
	["Vous ne pouvez pas déposer de sac alors que le coffre est en cours d'utilisation."] call AlysiaClient_fnc_error;
};

if ([true, _vehicle, "Trunk", "money_transfer", 1] call AlysiaClient_fnc_handleTrunk) then
{
	detach _obj;
	deleteVehicle _obj;
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
} else {
	["Il n'y a pas assez de place dans le coffre du véhicule."] call AlysiaClient_fnc_error;
};
