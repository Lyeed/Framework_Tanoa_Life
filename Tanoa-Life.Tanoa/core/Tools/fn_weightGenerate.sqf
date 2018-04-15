/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_weight_return";

_weight_return = 0;
{
	_weight_return = _weight_return + (([_x select 0] call AlysiaClient_fnc_itemGetWeight) * (_x select 1));
} forEach ([_this, 0, [], [[]]] call BIS_fnc_param);
_weight_return;
