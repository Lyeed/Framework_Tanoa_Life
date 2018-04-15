/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_data", "_display", "_sel"];

if (isNull g_interaction_target) exitWith {};
if (g_interaction_target_inv_active) exitWith {};

disableSerialization;
_display = findDisplay 69000;
if (isNull _display) exitWith {};

_sel = lbCurSel 69002;
if (_sel isEqualTo -1) exitWith {};

if ((time - g_action_delay) < 1) exitWith {
	["Veuillez ralentir dans vos actions"] call AlysiaClient_fnc_error;
};

g_interaction_target_inv_active = true;
_data = g_interaction_target_inv select _sel;

switch (_data select 0) do
{
	case "money":
	{
		[true, (_data select 1)] call AlysiaClient_fnc_handleCash;
		g_interaction_target_inv deleteAt _sel;
	};
	case "virtual":
	{
		_itemInfo = _data select 1;
		_item = _itemInfo select 0;
		_amount = [_item, (_itemInfo select 1), g_carryWeight, g_maxWeight] call AlysiaClient_fnc_calWeightDiff;
		if (_amount > 0) then
		{
			[true, _item, _amount] call AlysiaClient_fnc_handleInv;
			if (_amount isEqualTo (_itemInfo select 1)) then {
				g_interaction_target_inv deleteAt _sel;
			} else {
				((g_interaction_target_inv select _sel) select 1) set [1, (_itemInfo select 1) - _amount];
			};
		} else {
			["Vous n'avez pas assez de place dans votre inventaire"] call AlysiaClient_fnc_error;
		};
	};
	case "arma":
	{
		if ([(_data select 1), true, false] call AlysiaClient_fnc_handleItem) then {
			g_interaction_target_inv deleteAt _sel;
		} else {
			["Récupérattion <t color='#FF4000'>impossible</t>.<br/>Vous n'avez pas assez de place dans votre inventaire ou avez déjà un objet de ce type équipé."] call AlysiaClient_fnc_error;
		};
	};
};

g_action_delay = time;
[] call AlysiaClient_fnc_skullMenu_search_update;
g_interaction_target_inv_active = false;
