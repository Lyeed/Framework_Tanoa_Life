/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

diag_log "[ATM] Setup";

{
	_atm = nearestObject [[(_x select 1), (_x select 2), (_x select 3)], (_x select 0)];
	if (isNull _atm) then
	{
		diag_log format["Error can't find %1 at [%2,%3,%4]", (_x select 0), (_x select 1), (_x select 2), (_x select 3)];
	} else {
		_amount = _x select 4;
		_max = getNumber(missionConfigFile >> "ALYSIA_ATM" >> (_x select 0) >> "money_stock");
		if (_amount > _max) then {
			_atm setVariable ["money", _max, true];
		} else {
			_atm setVariable ["money", _amount, true];
		};
	};
	if (!(isNull _atm)) then {};
} forEach (["SELECT type,POS_X,POS_Y,POS_Z,amount FROM land_atms", 2] call ExtDB3_fnc_async);
/*
	0 - type
	1 - POS_X
	2 - POS_Y
	3 - POS_Z
	4 - amount
*/

diag_log "[ATM] Ready";
