/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_item", "_num", "_return", "_config"];
_type = [_this, 0, false, [false]] call BIS_fnc_param;
_item = [_this, 1, "", [""]] call BIS_fnc_param;
_num = floor([_this, 2, 0, [0]] call BIS_fnc_param);

if ((_item isEqualTo "") || (_num isEqualTo 0)) exitWith {false};

_config = missionConfigFile >> "ALYSIA_ITEMS" >> _item;
if (!isClass(_config)) exitWith {false};

_return = false;
if (_type) then
{
	_num = [_item, _num, g_carryWeight, g_maxWeight] call AlysiaClient_fnc_calWeightDiff;
	if (_num > 0) then
	{
		missionNamespace setVariable [format["inv_%1", _item], ((missionNamespace getVariable [format["inv_%1", _item], 0]) + _num)];
		g_carryWeight = g_carryWeight + (getNumber(_config >> "weight") * _num);
		_return = true;
	};
} else {
	_value = missionNamespace getVariable [format["inv_%1", _item], 0];
	if (_value - _num >= 0) then
	{
		missionNamespace setVariable [format["inv_%1", _item], (_value - _num)];
		g_carryWeight = g_carryWeight - (getNumber(_config >> "weight") * _num);
		_return = true;
	};
};

if (_return) then
{
	private["_display", "_loop", "_list", "_index"];

	disableSerialization;
	_display = uiNamespace getVariable ["RscTitleLoot", displayNull];
	_loop = false;

	if (isNull _display) then
	{
		("lootLayer" call BIS_fnc_rscLayer) cutRsc ["RscTitleLoot", "PLAIN"];
		_display = uiNamespace getVariable ["RscTitleLoot", displayNull];
		(_display displayCtrl 900) ctrlEnable false;
		_loop = true;
	};

	_list = _display displayCtrl 900;

	_index = _list lbAdd format["%1 %2 x %3", if (_type) then {"+"} else {"-"}, ([_num] call AlysiaClient_fnc_numberText), ([_item] call AlysiaClient_fnc_itemGetName)];
	_list lbSetPicture [_index, ([_item] call AlysiaClient_fnc_itemGetImage)];
	_list lbSetValue [_index, (time + 4)];

	if (_loop) then
	{
		[] spawn
		{
			disableSerialization;
			_list = (uiNamespace getVariable ["RscTitleLoot", displayNull]) displayCtrl 900;
			while {((lbSize _list) > 0)} do
			{
				for "_i" from 0 to (lbSize _list) do
				{
					if ((_list lbValue _i) <= time) then {_list lbDelete _i};
				};

				uiSleep 1;
			};

			("lootLayer" call BIS_fnc_rscLayer) cutText ["", "PLAIN"];
		};
	};
};

_return;
