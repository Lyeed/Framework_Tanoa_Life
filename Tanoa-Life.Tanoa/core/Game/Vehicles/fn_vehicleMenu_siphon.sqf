/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_type", "_item", "_count"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if ((speed _target) > 0) exitWith {
	["Vous ne pouvez pas faire le plein d'un véhicule qui se déplace."] call AlysiaClient_fnc_error;
};
if (isEngineOn _target) exitWith {
	["Vous ne pouvez pas faire le plein d'un véhicule ayant le moteur allumé."] call AlysiaClient_fnc_error;
};

if (!(["Siphonnage", 10, _target, "", "AinvPknlMstpsnonWnonDnon_medic_1"] call AlysiaClient_fnc_showProgress)) exitWith {};

_type = _target getVariable ["refuel_type", ""];
if (_type isEqualTo "") then {_type = getText(missionConfigFile >> "ALYSIA_VEHICLES" >> typeOf(_target) >> "fuel")};

if ("Alysia_jerrycan_empty" in (magazines player)) then
{
	_item = switch (_type) do
	{
		case "Diesel": {"Alysia_jerrycan_diesel"};
		case "SP95": {"Alysia_jerrycan_sp95"};
		case "SP98": {"Alysia_jerrycan_sp98"};
		case "Kerosene": {"Alysia_jerrycan_kerozene"};
		case "GPL": {"Alysia_jerrycan_gpl"};
	};

	_count = floor(((fuel _target) * getNumber(missionConfigFile >> "ALYSIA_VEHICLES" >> typeof(_target) >> "fuelCapacity")) / 20);
	if (_count >= 1) then
	{
		for "_i" from 1 to _count do
		{
			player removeMagazine "Alysia_jerrycan_empty";
			[_item, true] call AlysiaClient_fnc_handleItem;
		};
	};
};

if (local _target) then {
	_target setFuel 0;
} else {
	[_target, 0] remoteExecCall ["setFuel", _target];
};

if (_type != "") then {
	_target setVariable ["refuel_type", "", true];
};
