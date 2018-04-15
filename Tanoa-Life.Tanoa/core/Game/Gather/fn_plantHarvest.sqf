/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_object", "_space", "_missing"];
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _object) exitWith {
	["<t color='#FF8000'>Aucune</t> pousse à proximité."] call AlysiaClient_fnc_error;
};
if (!(_object getVariable ["ready", false])) exitWith {
	["Cette pousse n'est <t color='#FF8000'>pas encore</t> prête à être récoltée."] call AlysiaClient_fnc_error;
};

if (g_action_inUse) exitWith {
	["Vous êtes déjà en train de ramasser."] call AlysiaClient_fnc_error;
};
if ((time - g_action_delay) <= 0.8) exitWith {
	["Veuillez <t color='#FF8000'>ralentir</t> dans vos actions."] call AlysiaClient_fnc_error;
};

g_action_inUse = true;
g_action_delay = time;

player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
uiSleep(random(2) + 0.50);

if (isNull _object) exitWith
{
	["<t color='#FF8000'>Aucune</t> pousse à proximité."] call AlysiaClient_fnc_error;
	g_action_inUse = false;
};

_space = true;
_missing = "";

{
	scopeName "loop";

	private["_amount", "_possible"];
	if ((_x select 2) isEqualTo 1) then
	{
		_amount = ceil(random(_x select 1));
		if (_amount <= 0) then {
			_amount = 1;
		};
	} else {
		_amount = _x select 1;
	};
	_possible = [(_x select 0), _amount, g_carryWeight, g_maxWeight] call AlysiaClient_fnc_calWeightDiff;

	if (_possible isEqualTo 0) then
	{
		if (_forEachIndex isEqualTo 0) then
		{
			_space = false;
			breakOut "loop";
		} else {
			_missing = _missing + format["- %1x <t color='#FF4000'>%2</t><br/>", _amount, [(_x select 0)] call AlysiaClient_fnc_itemGetName];
		};
	} else {
		[true, (_x select 0), _amount] call AlysiaClient_fnc_handleInv;
	};
} forEach getArray(missionConfigFile >> "ALYSIA_FARMING_PLANT_OBJETCS" >> typeOf(_object) >> "receive");

if (_space) then
{
	[player, ["leaf_1", "leaf_2", "leaf_3", "leaf_4"] call BIS_fnc_selectRandom, 15] call AlysiaClient_fnc_globalSay3d;
	deleteVehicle _object;
	if (_missing != "") then
	{
		[
			format
			[
				"N'ont pas pu être ramassés par manque de place :<br/>%1<br/><t color='#74DF00'><Pour assurer vos récoltes, pensez à toujours garder suffisamment de place dans votre inventaire avant de ramasser votre pousse</t>",
				_missing
			]
		] call AlysiaClient_fnc_info;
	};
} else {
	["Votre inventaire est <t color='#FF8000'>plein</t>."] call AlysiaClient_fnc_error;
};

g_action_inUse = false;
