/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_sel", "_item"];

disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

ctrlShow[510, false];
ctrlShow[511, false];
ctrlShow[512, false];
ctrlShow[513, false];

if ((_sel isEqualTo -1) || (isNull _list)) exitWith {};

_item = _list lbData _sel;
if (_item isEqualTo "") exitWith {};

if (g_interaction_target_trunk_store) then
{
	_count = [_item, 2, ([(g_interaction_target getVariable [g_interaction_target_trunk_type, []])] call AlysiaClient_fnc_weightGenerate), g_interaction_target_trunk_weight_max] call AlysiaClient_fnc_calWeightDiff;
	if (_count > 0) then
	{
		if ((_count >= 2) && (([_item] call AlysiaClient_fnc_itemCount) > 1)) then
		{
			ctrlShow[510, true];
			ctrlShow[511, true];
			ctrlShow[512, true];
			ctrlShow[513, true];
		} else {
			ctrlShow[510, true];
			ctrlShow[511, true];
		};
	};
};
