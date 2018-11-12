/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list_faction", "_list_civ", "_members", "_handle", "_list_edit", "_config"];
_members = [_this, 0, [], [[]]] call BIS_fnc_param;

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_handle = ["FACTION_LEADER_OFFICE"] spawn AlysiaClient_fnc_tabletApp;
waitUntil {scriptDone _handle};

_list_faction = _display displayCtrl 8736;
lbClear _list_faction;

{
	_index = _list_faction lbAdd format["%1. %2", [playerSide, _x select 0, true] call AlysiaClient_fnc_rankToStr, _x select 1];
	_list_faction lbSetdata [_index, _x select 2];
	_list_faction lbSetValue [_index, _x select 0];
} forEach _members;

lbSortByValue _list_faction;
_list_faction lbSetCurSel -1;

_list_civ = _display displayCtrl 8732;
lbClear _list_civ;

{
	if (((side _x) isEqualTo civilian) && !(isNil {_x getVariable "realname"})) then
	{
		_index = _list_civ lbAdd (_x getVariable ["realname", (name _x)]);
		_list_civ lbSetdata [_index, str(_x)];
	};
} forEach allPlayers;
if ((lbSize _list_civ) isEqualTo 0) then {
	_list_civ lbAdd "Aucun";
};

lbSort [_list_civ, "ASC"];
_list_civ lbSetCurSel -1;

_config = missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide);

if (count(getArray(_config >> "board" >> "history_items")) isEqualTo 0) then {
	[8739, false] call AlysiaClient_fnc_tabletShow;
} else {
	ctrlEnable[8739, true];
};

_list_edit = _display displayCtrl 8737;
lbClear _list_edit;

{
	_list_edit lbAdd _x;
} forEach getArray(_config >> "Ranks" >> "ranks_complet");
_list_edit lbSetCurSel -1;
