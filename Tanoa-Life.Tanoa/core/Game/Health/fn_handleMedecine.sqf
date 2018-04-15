/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_item_med", "_config_med", "_amount", "_index_med"];
_item_med = [_this, 0, "", [""]] call BIS_fnc_param;

if (_item_med isEqualTo "") exitWith {};

_config_med = missionConfigFile >> "ALYSIA_MEDECINE" >> _item_med;
if (!isClass(_config_med)) exitWith {};

if (([_item_med, g_medecine] call AlysiaClient_fnc_index) isEqualTo -1) then
{
	{
		_index_med = [_item_med, (_x select 1)] call AlysiaClient_fnc_index;
		if (_index_med != -1) then
		{
			_amount = (((_x select 1) select _index_med) select 1) - 1;
			if (_amount < 1) then {
				((g_deseases select _forEachIndex) select 1) deleteAt _index_med;
			} else {
				(((g_deseases select _forEachIndex) select 1) select _index_med) set [1, _amount];
			};
		};
	} forEach g_deseases;

	g_medecine pushBack [_item_med, getNumber(_config_med >> "interval")];
} else {
	["Vous n'avez pas respecté les doses indiquées sur la notice.<br/>Des effets indésirables peuvent survenir.<br/>La dose n'a pas été décomptée dans le cas d'un eventuel traitement à suivre."] call AlysiaClient_fnc_info;
};
