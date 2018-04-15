/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_plant", "_vehicle", "_data"];
_vehicle = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _vehicle) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if (_vehicle getVariable ["farm_plant", false]) exitWith
{
	_vehicle setVariable ["farm_plant", false];
	["Plantaison terminé."] call AlysiaClient_fnc_info;
};

if (!(isEngineOn _vehicle)) exitWith {
	["Vous devez avoir le moteur démarré pour débuter la procédure de plantaison."] call AlysiaClient_fnc_error;
};
if ((driver _vehicle) != player) exitWith {
	["Seul le conducteur peut débuter la procédure de plantaison."] call AlysiaClient_fnc_error;
};
if ((_vehicle getVariable ["trunk_in_use_ID", ""]) != "") exitWith {
	["Vous ne pouvez pas commencer la plantaison alors que le coffre est en cours d'utilisation."] call AlysiaClient_fnc_error;
};

_vehicle setVariable ["farm_plant", true];
_vehicle setVariable ["trunk_in_use_ID", "FARMING", true];

["Début de la procédure de plantaison dans <t color='#FE9A2E'>deux secondes</t> ..."] call AlysiaClient_fnc_info;
uiSleep 2;
["<t color='#01DF01'>Début</t> de la procédure de plantaison."] call AlysiaClient_fnc_info;

while {(_vehicle getVariable ["farm_plant", false])} do
{
	if ((driver _vehicle) != player) exitWith {
		["Plantaison terminé<br/>Vous devez rester à la place de conducteur."] call AlysiaClient_fnc_error;
	};
	if (!(isEngineOn _vehicle)) exitWith {
		["Plantaison terminé<br/>Le moteur doit rester allumé."] call AlysiaClient_fnc_error;
	};
	if ((_vehicle getVariable ["trunk_in_use_ID", ""]) != "FARMING") exitWith {
		["Plantaison terminé<br/>Quelqu'un fouille le coffre."] call AlysiaClient_fnc_error;
	};

	private ["_plant", "_seed", "_distance", "_pos"];
	_plant = nil;
	_seed = nil;
	_distance = nil;
	_pos = getPos _vehicle;

	{
		if (
				(_pos distance (getMarkerPos (configName _x)) <= getNumber(_x >> "area")) &&
				(([(_vehicle getVariable ["Trunk", []]), getText(missionConfigFile >> "ALYSIA_FARMING_PLANT_OBJETCS" >> getText(_x >> "plant") >> "seed")] call AlysiaClient_fnc_itemTrunk) > 0)
			) exitWith
		{
			_plant = getText(_x >> "plant");
			_seed = getText(missionConfigFile >> "ALYSIA_FARMING_PLANT_OBJETCS" >> getText(_x >> "plant") >> "seed");
			_distance = getNumber(missionConfigFile >> "ALYSIA_FARMING_PLANT_OBJETCS" >> getText(_x >> "plant") >> "distance");
		};
	} forEach ("true" configClasses (missionConfigFile >> "ALYSIA_FARMING_PLANT_MARKERS"));
	if (((isNil "_plant") || (isNil "_seed")) && !isNull(g_company)) then
	{
		_info = g_company getVariable "company_info";
		if (((_info select 2) isEqualTo "farming") && ((_pos distance (getPos g_company)) < 40)) then
		{
			{
				if (([(_vehicle getVariable ["Trunk", []]), getText(_x >> "seed")] call AlysiaClient_fnc_itemTrunk) > 0) exitWith
				{
					_plant = configName _x;
					_seed = getText(_x >> "seed");
					_distance = getNumber(_x >> "distance");
				};
			} forEach ("getNumber(_x >> 'disableForMill') isEqualTo 0" configClasses (missionConfigFile >> "ALYSIA_FARMING_PLANT_OBJETCS"));
		};
	};

	if ((isNil "_plant") || (isNil "_seed")) exitWith {
		["Plantaison terminé<br/>Vous n'êtes près d'aucune zone agricole ou n'avez plus de graines dans le coffre."] call AlysiaClient_fnc_error;
	};

	if ((nearestObjects [[_pos select 0, _pos select 1, 0], (call g_plants), _distance]) isEqualTo []) then
	{
		if ([false, _vehicle, "Trunk", _seed, 1, false] call AlysiaClient_fnc_handleTrunk) then
		{
			[
				_plant,
				_pos,
				[false, _vehicle, "Trunk", "engrais", 1, false] call AlysiaClient_fnc_handleTrunk
			] call AlysiaClient_fnc_plantCreate;
			titleText[format["Vous avez planté : 1x %1", [_seed] call AlysiaClient_fnc_itemGetName], "PLAIN"];
		};
	};

	uiSleep 0.7;
};

_vehicle setVariable ["Trunk", (_vehicle getVariable ["Trunk", []]), true];
if ((_vehicle getVariable ["trunk_in_use_ID", ""]) isEqualTo "FARMING") then {
	_vehicle setVariable ["trunk_in_use_ID", "", true];
};
_vehicle setVariable ["farm_plant", false];
