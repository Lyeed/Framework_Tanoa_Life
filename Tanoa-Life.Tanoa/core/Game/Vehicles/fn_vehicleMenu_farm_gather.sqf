/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_vehicle", "_plants"];
_vehicle = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _vehicle) exitWith {};

if (_vehicle getVariable ["farm_gather", false]) exitWith
{
	_vehicle setVariable ["farm_gather", false];
	["Récolte terminé"] call AlysiaClient_fnc_info;
};

if ((_vehicle getVariable ["trunk_in_use_ID", ""]) != "") exitWith {
	["Vous ne pouvez pas commencer la récolte alors que le coffre est en cours d'utilisation"] call AlysiaClient_fnc_error;
};
if (!(isEngineOn _vehicle)) exitWith {
	["Vous devez avoir le moteur démarré pour débuter la procédure de récolte"] call AlysiaClient_fnc_error;
};
if ((driver _vehicle) != player) exitWith {
	["Seul le conducteur peut débuter la procédure de récolte"] call AlysiaClient_fnc_error;
};

closeDialog 0;

_vehicle setVariable ["farm_gather", true];
_vehicle setVariable ["trunk_in_use_ID", "FARMING", true];

["Début de la procédure de récolte dans deux secondes..."] call AlysiaClient_fnc_info;
uiSleep 2;

_plants = [];
{
	_plants pushBack (configName _x);
} forEach ("true" configClasses (missionConfigFile >> "ALYSIA_FARMING_PLANT_OBJETCS"));

while {(_vehicle getVariable ["farm_gather", false])} do
{
	scopeName "loop";

	if ((driver _vehicle) != player) exitWith {
		["Récolte terminée<br/>Vous devez rester à la place de conducteur"] call AlysiaClient_fnc_error;
	};
	if (!(isEngineOn _vehicle)) exitWith {
		["Récolte terminée<br/>Le moteur doit rester allumé"] call AlysiaClient_fnc_error;
	};
	if ((_vehicle getVariable ["trunk_in_use_ID", ""]) != "FARMING") exitWith {
		["Récolte terminée<br/>Quelqu'un fouille le coffre"] call AlysiaClient_fnc_error;
	};

	_plant = (nearestObjects [player, _plants, 2]) select 0;
	if (!(isNil "_plant")) then
	{
	 	if (_plant getVariable ["ready", false]) then
	 	{
			{
				private "_amount";
				_amount = 0;
				_item = _x select 0;

				if ((_x select 2) isEqualTo 1) then {
					_amount = round(random(_x select 1)) + 1;
				} else {
					_amount = _x select 1;
				};

				if (!([true, _vehicle, "Trunk", _item, _amount, false] call AlysiaClient_fnc_handleTrunk)) then
				{
					["Récolte terminé<br/>L'inventaire du véhicule est plein"] call AlysiaClient_fnc_error;
					breakOut "loop";
				};
			} forEach getArray(missionConfigFile >> "ALYSIA_FARMING_PLANT_OBJETCS" >> typeOf(_plant) >> "receive");
			deleteVehicle _plant;
	 	};
	};

	uiSleep 0.5;
};

_vehicle setVariable ["Trunk", (_vehicle getVariable ["Trunk", []]), true];
if ((_vehicle getVariable ["trunk_in_use_ID", ""]) isEqualTo "FARMING") then {_vehicle setVariable ["trunk_in_use_ID", "", true]};
_vehicle setVariable ["farm_gather", false];
