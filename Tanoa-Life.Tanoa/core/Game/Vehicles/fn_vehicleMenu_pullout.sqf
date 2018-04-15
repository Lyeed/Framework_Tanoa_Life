/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private ["_target", "_count"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if ((speed _target) >= 1) exitWith {
	["Le véhicule doit être à l'arrêt."] call AlysiaClient_fnc_error;
};

_count = 0;
{
	if ((_x getVariable ["restrained", false]) || !(alive _x) || (_x getVariable ["is_coma", false])) then
	{
		_x action ["Eject", _target];
		_count = _count + 1;
	};
} forEach (crew _target);

if (_count isEqualTo 0) then {
	["Il n'y a personne de menotté ou dans le coma dans le véhicule."] call AlysiaClient_fnc_error;
} else {
	[format["Vous avez sorti %1 personne%2 du véhicule.", _count, if (_count > 1) then {"s"} else {""}]] call AlysiaClient_fnc_info;
};
