/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_objects", "_distance", "_objCount", "_display"];
_distance = [_this, 0, 3, [3]] call BIS_fnc_param;
_display = [_this, 1, true, [true]] call BIS_fnc_param;

if (g_firstCombatActive) exitWith {
	["Vous ne pouvez pas saisir alors que vous êtes en combat."] call AlysiaClient_fnc_error;
};

_objects = nearestObjects [player, ["weaponholder", "GroundWeaponHolder", "WeaponHolderSimulated", "Skyline_Alysia_Boite_01_F"], _distance];
_objCount = count _objects;

{
	deleteVehicle _x;
} forEach _objects;

if (_display) then {
	[format["Vous avez saisi %1 objet%2", _objCount, if (_objCount > 1) then {"s"} else {""}]] call AlysiaClient_fnc_info;
};
