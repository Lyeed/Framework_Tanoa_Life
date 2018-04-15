/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_object";
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};
if (isNull _object) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (!(player canAdd "Bank_Drill")) exitWith {
	["Vous n'avez pas assez de place dans votre inventaire pour récupérer cet objet."] call AlysiaClient_fnc_error;
};

g_action_inUse = true;

if (!(isNull (attachedTo _object))) then {detach _object};
deleteVehicle _object;
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil {((animationState player) isEqualTo "ainvpercmstpsnonwnondnon_putdown_amovpercmstpsnonwnondnon")};
player addItem "Bank_Drill";

g_action_inUse = false;
