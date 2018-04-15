/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_object", "_item", "_action"];
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _object) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if (g_action_inUse) exitWith {
	["Vous êtes déjà en train de ramasser."] call AlysiaClient_fnc_error;
};
if ((time - g_action_delay) <= 0.8) exitWith {
	["Veuillez <t color='#FF8000'>ralentir</t> dans vos actions."] call AlysiaClient_fnc_error;
};

_item = getText(missionConfigFile >> "ALYSIA_DYN_OBJECTS" >> typeOf(_object) >> "item");
if (([_item, 1, g_carryWeight, g_maxWeight] call AlysiaClient_fnc_calWeightDiff) isEqualTo 0) exitWith {
	["Vous n'avez <t color='#FF8000'>pas assez</t> de place."] call AlysiaClient_fnc_error;
};

_action =
[
	format
	[
		"Voulez vous ramasser <t color='#3ADF00'>%1</t> ?",
		[_item] call AlysiaClient_fnc_itemGetName
	],
	"Confirmation",
	"Oui",
	"Non"
] call BIS_fnc_guiMessage;
if (_action) then
{
	g_action_inUse = true;
	g_action_delay = time;

	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	uiSleep(random(1) + 0.20);

	if (isNull _object) exitWith
	{
		["Cible invalide."] call AlysiaClient_fnc_error;
		g_action_inUse = true;
	};

	[true, _item, 1] call AlysiaClient_fnc_handleInv;
	deleteVehicle _object;
	[format["Vous avez récuperé 1x <t color='#2E9AFE'>%1</t>", [_item] call AlysiaClient_fnc_itemGetName]] call AlysiaClient_fnc_info;

	g_action_inUse = false;
};
