/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_zone", "_seed", "_plant", "_object", "_plantGrowingtime"];
_zone = [_this, 0, "", [""]] call BIS_fnc_param;

if (g_action_inUse) exitWith {};

scopeName "main_plantSeed";

if (_zone isEqualTo "") then
{
	{
		if ((([getText(_x >> "seed")] call AlysiaClient_fnc_itemCount) > 0) && (getNumber(_x >> "disableForMill") isEqualTo 0)) exitWith
		{
			_plant = configName _x;
			_seed = getText(_x >> "seed");
		};
	} forEach ("true" configClasses (missionConfigFile >> "ALYSIA_FARMING_PLANT_OBJETCS"));
	if ((isNil "_seed") || (isNil "_plant")) then
	{
		["Vous n'avez pas de graine."] call AlysiaClient_fnc_error;
		false breakOut "main_plantSeed";
	};
	[false, _seed, 1] call AlysiaClient_fnc_handleInv;
} else {

	if (_zone isEqualTo "") then
	{
		["Aucune zone de récolte n'a été spécifiée."] call AlysiaClient_fnc_error;
		false breakOut "main_plantSeed";
	};

	_plant = getText(missionConfigFile >> "ALYSIA_FARMING_PLANT_MARKERS" >> _zone >> "plant");
	if (count (nearestObjects [player, [_plant], getNumber(missionConfigFile >> "ALYSIA_FARMING_PLANT_OBJETCS" >> _plant >> "distance")]) > 0) then
	{
		["Vous êtes trop près d'une autre plantation."] call AlysiaClient_fnc_error;
		false breakOut "main_plantSeed";
	};

	_seed = getText(missionConfigFile >> "ALYSIA_FARMING_PLANT_OBJETCS" >> _plant >> "seed");
	if (!([false, _seed, 1] call AlysiaClient_fnc_handleInv)) then
	{
		[format["Vous n'avez pas les graines requises (%1).", ([_seed] call AlysiaClient_fnc_itemGetName)]] call AlysiaClient_fnc_error;
		false breakOut "main_plantSeed";
	};
};

g_action_inUse = true;

player playMove "AinvPknlMstpSlayWrflDnon_1";
uiSleep 2.5;
player playMove "amovpercmstpsnonwnondnon";

titleText[format["Vous avez planté : 1x %1", ([_seed] call AlysiaClient_fnc_itemGetName)], "PLAIN"];
if ([false, "engrais", 1] call AlysiaClient_fnc_handleInv) then {
	[_plant, getPos player, true] call AlysiaClient_fnc_plantCreate;
} else {
	[_plant, getPos player, false] call AlysiaClient_fnc_plantCreate;
};

g_action_inUse = false;
true;
