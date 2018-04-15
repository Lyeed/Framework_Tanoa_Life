/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_ctrl_players", "_idc", "_config"];

_config = ("getText(_x >> 'uid') isEqualTo (getPlayerUID player)" configClasses (missionConfigFile >> "ALYSIA_STAFF" >> "members")) select 0;
if (isNil "_config") exitWith {closeDialog 0};

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

[] call AlysiaClient_fnc_APP_staff_player_actions_update;

_ctrl_players = _display displayCtrl 9000;
lbClear _ctrl_players;

{
	_name = _x getVariable "realname";
	if (!(isNil "_name")) then
	{
		_index = _ctrl_players lbAdd (_x getVariable ["realname", (name _x)]);
		_ctrl_players lbSetdata [_index, str(_x)];
	};
} forEach allPlayers;
if ((lbCurSel _ctrl_players) isEqualTo -1) then {
	_ctrl_players lbSetCurSel 0;
};

lbSort [_ctrl_players, "ASC"];

if (getNumber(_config >> "requests") isEqualTo 1) then
{
	[9005, true] call AlysiaClient_fnc_tabletShow;
	[9006, true] call AlysiaClient_fnc_tabletShow;
	[9007, true] call AlysiaClient_fnc_tabletShow;

	_request = _display displayCtrl 9007;
	lbClear _request;

	_request lbAdd "Aucune";
	_request lbSetCurSel 0;
};
