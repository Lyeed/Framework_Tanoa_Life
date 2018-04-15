/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_vehicle", "_bomb", "_config"];
_vehicle = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _vehicle) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (!("Bank_Bomb" in (magazines player))) exitWith {
	["Vous n'avez pas de c4."] call AlysiaClient_fnc_error;
};
if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};

_config = missionConfigFile >> "ALYSIA_VEHICLES" >> typeOf(_vehicle) >> "c4_bomb";
if (!isClass(_config)) exitWith {
	["Impossible de placer du c4 sur ce véhicule."] call AlysiaClient_fnc_error;
};

g_action_inUse = true;

player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
uiSleep(random(2) + 0.50);

player removeMagazine "Bank_Bomb";
_bomb = "Bank_Bomb" createVehicle (getPos player);
_bomb attachTo [_vehicle, getArray(_config >> "attachTo")];
_bomb setVectorUp getArray(_config >> "VectorUp");

g_action_inUse = false;
