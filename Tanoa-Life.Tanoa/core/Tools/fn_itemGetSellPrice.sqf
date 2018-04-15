/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_item", "_ret"];
_item = [_this, 0, "", [""]] call BIS_fnc_param;

if (_item isEqualTo "") exitWith {0};

_ret = 0;
if (isClass(missionConfigFile >> "ALYSIA_ITEMS" >> _item)) then
{
	if (isClass(missionConfigFile >> "ALYSIA_ITEMS" >> _item >> "market")) then {
		_ret = [_item] call AlysiaClient_fnc_market_getPrice;
	} else {
		_ret = getNumber(missionConfigFile >> "ALYSIA_ITEMS" >> _item >> "price_sell");
		if (_ret isEqualTo 0) then {
			systemChat format["[ERROR] Item price %1 not defined in ALYSIA_ITEMS or isEqualTo 0", _item];
		};
	};
} else {
	systemChat format["[ERROR] Item %1 not defined in ALYSIA_ITEMS", _item];
};

_ret;
