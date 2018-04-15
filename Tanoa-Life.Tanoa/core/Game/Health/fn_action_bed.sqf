/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_unit", "_bed", "_reader", "_classes"];
_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_classes = [_this, 1, ["HospitalTable_F", "Alysia_Medical_Lit_01_F", "HealTable_F", "Alysia_Medical_Brancard_01_F"], [[]]] call BIS_fnc_param;

if (isNull _unit) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (_unit getVariable ["bed_awake", false]) exitWith {
	["La cible est déjà installée."] call AlysiaClient_fnc_error;
};

_bed = (nearestObjects [(getPosATL _unit), _classes, 2.8]) select 0;
if (isNil "_bed") exitWith {
	["Vous n'êtes près d'aucun support médical."] call AlysiaClient_fnc_error;
};

if (count(attachedObjects _bed) > 0) exitWith {
	["Quelqu'un est déjà installé ici."] call AlysiaClient_fnc_error;
};

_reader = switch typeOf(_bed) do
{
	case "Alysia_Medical_Brancard_01_F":
	{
		_unit attachTo [_bed, [0, 0, 0.45]];
		false;
	};
	case "HealTable_F":
	{
		_unit attachTo [_bed, [0, 0.1, -0.2]];
		false;
	};
	case "HospitalTable_F":
	{
		_unit attachTo [_bed, [0, 0.1, -0.2]];
		true;
	};
	case "Alysia_Medical_Lit_01_F":
	{
		_unit attachTo [_bed, [0, 0.2, 0.2]];
		if (_unit getVariable ["bullet_check", false]) then {
			["Le patient a besoin d'être opéré d'urgence sur une table d'opération."] call AlysiaClient_fnc_info;
		} else {
			[_bed] remoteExec ["AlysiaClient_fnc_action_hospital_awake", _unit];
		};
		true;
	};
};

if (_reader) then
{
	_reader = (nearestObjects [_unit, ["Alysia_Medical_Terminal_01_F"], 6]) select 0;
	if (!(isNil "_reader")) then {
		[_reader, _bed] remoteExec ["AlysiaClient_fnc_action_hospital_heartReader", _unit];
	};
};
