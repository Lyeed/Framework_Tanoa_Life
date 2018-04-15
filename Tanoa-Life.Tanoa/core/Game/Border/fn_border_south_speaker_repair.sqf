/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_object", "_repair_item", "_repair_amount"];
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _object) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};
if (!(_object getVariable ["destroyed", false])) exitWith {
	["Le haut parleur n'est pas saboté."] call AlysiaClient_fnc_error;
};

_repair_item = "ironp";
_repair_amount = 2;

if (([_repair_item] call AlysiaClient_fnc_itemCount) < _repair_amount) exitWith
{
	[
		format
		[
			"Vous avez besoin de %1x <t color='#FF4000'>%2</t> pour réparer le haut parleur.",
			_repair_amount,
			[_repair_item] call AlysiaClient_fnc_itemGetName
		]
	] call AlysiaClient_fnc_error;
};

if (["Réparation d'un haut parleur", 10, _object, "", "AinvPknlMstpsnonWnonDnon_medic_1"] call AlysiaClient_fnc_showProgress) then
{
	if (!(_object getVariable ["destroyed", false])) exitWith {
		["Le haut parleur n'est pas saboté."] call AlysiaClient_fnc_error;
	};

	if ([false, _repair_item, _repair_amount] call AlysiaClient_fnc_handleInv) then
	{
		[
			format
			[
				"Vous avez utilisé %1x <t color='#FF4000'>%2</t> pour réparer le haut parleur.",
				_repair_amount,
				[_repair_item] call AlysiaClient_fnc_itemGetName
			]
		] call AlysiaClient_fnc_info;
		_object setVariable ["destroyed", false, true];
	};
};
