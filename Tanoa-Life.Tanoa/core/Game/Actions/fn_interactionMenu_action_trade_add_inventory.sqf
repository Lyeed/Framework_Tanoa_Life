/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_sel", "_amount", "_item", "_index"];
_type = [_this, 0, false, [false]] call BIS_fnc_param;

if (g_interaction_trade_active) exitWith {
	["Veuillez ralentir dans vos actions."] call AlysiaClient_fnc_error;
};

_sel = lbCurSel 10019;
if (_sel isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné d'objet dans la liste."] call AlysiaClient_fnc_error;
};

_item = lbData[10019, _sel];
if (_item isEqualTo "") exitWith {
	["Impossible de récupérer l'objet que vous avez sélectionné."] call AlysiaClient_fnc_error;
};

g_interaction_trade_active = true;

if (_type) then {
	_amount = [_item] call AlysiaClient_fnc_itemCount;
} else {
	_amount = 1;
};

if ([false, _item, _amount] call AlysiaClient_fnc_handleInv) then
{
	_index = [_item, g_interaction_trade_inventory] call AlysiaClient_fnc_index;
	if (_index isEqualTo -1) then {
		g_interaction_trade_inventory pushBack [_item, _amount];
	} else {
		(g_interaction_trade_inventory select _index) set [1, ((g_interaction_trade_inventory select _index) select 1) + _amount];
	};
};

[] call AlysiaClient_fnc_interactionMenu_action_trade_update;

g_interaction_trade_active = false;
