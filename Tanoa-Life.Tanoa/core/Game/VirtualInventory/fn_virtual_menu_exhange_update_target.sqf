/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_sel", "_item"];

disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

ctrlShow[506, false];
ctrlShow[507, false];
ctrlShow[508, false];
ctrlShow[509, false];

if ((_sel isEqualTo -1) || (isNull _list)) exitWith {};

_item = _list lbData _sel;
if (_item isEqualTo "") exitWith {};

if (g_interaction_target_trunk_take) then
{
	_count = [_item, 2, g_carryWeight, g_maxWeight] call AlysiaClient_fnc_calWeightDiff;
	if (_count > 0) then
	{
		if ((_count >= 2) && (([(g_interaction_target getVariable [g_interaction_target_trunk_type, []]), _item] call AlysiaClient_fnc_itemTrunk) > 1)) then
		{
			ctrlShow[506, true];
			ctrlShow[507, true];
			ctrlShow[508, true];
			ctrlShow[509, true];
		} else {
			ctrlShow[506, true];
			ctrlShow[507, true];
		};
	};
};
