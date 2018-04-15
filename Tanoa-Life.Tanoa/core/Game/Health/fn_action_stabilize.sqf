/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_unit", "_type", "_chance", "_amount"];
_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_type = [_this, 1, "", [""]] call BIS_fnc_param;

if (isNull _unit) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};
if ((_type isEqualTo "defib") && !("SkylineItems_Defibrilateur" in (magazines player))) exitWith {
	["Vous n'avez pas de défibrilateur."] call AlysiaClient_fnc_error;
};
if ((_type isEqualTo "defib") && (getNumber(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "can_use_debrif") isEqualTo 0)) exitWith {
	["Vous n'êtes pas abilité à manier ce type de défibrilateur."] call AlysiaClient_fnc_error;
};
if (_unit getVariable ["bullet_check", false]) exitWith {
	["Cette personne a été gravement blessée et doit être amenée à un centre hospitalier pour être opéré."] call AlysiaClient_fnc_error;
};
if (_unit getVariable ["bullet_operation_inUse", false]) exitWith {
	["Cette personne est en train d'être opéré et ne peut pas être stabilisé pour le moment"] call AlysiaClient_fnc_error;
};

_chance = switch (_type) do
{
	case "main": {getNumber(missionConfigFile >> "ALYSIA_MEDICAL" >> "stabilize" >> "hand_succeed_percentage")};
	case "defib": {getNumber(missionConfigFile >> "ALYSIA_MEDICAL" >> "stabilize" >> "debif_succeed_percentage")};
};
if (isNil "_chance") exitWith {
	["Impossible de déterminer vos chances de réaminer"] call AlysiaClient_fnc_error;
};

g_action_inUse = true;
g_interrupted = false;
_amount = 1;
while {(!g_interrupted && (_unit getVariable ["is_coma", false]) && !(player getVariable ["is_coma", false]) && !(player getVariable ["restrained", false]) && (player distance _unit < 3))} do
{
	player playAction "medicStart";
	if (_type isEqualTo "defib") then {
		[player, "defib", 20] call AlysiaClient_fnc_globalSay3d;
	};

	uiSleep 6;

	player playAction "medicStop";

	if (g_interrupted) exitWith {};

	if (random(100) <= _chance) exitWith
	{
		titleText["* Réussi *", "PLAIN DOWN"];
		if (player getVariable ["heart_attack", false]) then {
			_unit setVariable ["heart_attack", false, true];
		} else {
			_unit setVariable ["is_coma", false, true];
		};
	};

	titleText[format["* Tentative n°%1 *", _amount], "PLAIN DOWN", 2];
	_amount = _amount + 1;
};

if (g_interrupted) then {
	titleText["* Annulé *", "PLAIN DOWN"];
};

g_action_inUse = false;
