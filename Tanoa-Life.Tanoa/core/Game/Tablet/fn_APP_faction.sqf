/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list_ranks", "_list_duty"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

if (!isClass(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "board")) exitWith {closeDialog 0};

ctrlSetText[8700, getText(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "icon")];
(_display displayCtrl 8701) ctrlSetStructuredText parseText format["<t align='center' size='1.2'>%1</t>", getText(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "name")];

if (isClass(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "board" >> "leader_board")) then
{
	if ((player getVariable ["rank", 0]) >= getNumber(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "board" >> "leader_board" >> "access_rank")) then {
		ctrlEnable[8710, true];
	} else {
		ctrlEnable[8710, false];
	};
} else {
	ctrlshow[8710, false];
};

_list_ranks = _display displayCtrl 8704;
lbClear _list_ranks;

{
	if (_forEachIndex != 0) then {
		_list_ranks lbAdd format["%1%2", _x, if (_forEachIndex isEqualTo (player getVariable ["rank", 0])) then {" (le votre)"} else {""}];
	};
} forEach (getArray(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "Ranks" >> "ranks_complet"));
_list_ranks lbSetCurSel -1;

_list_duty = _display displayCtrl 8709;
lbClear _list_duty;

{
	if ((side _x) isEqualTo playerSide) then
	{
		_list_duty lbAdd format["%1 - %2", ([playerSide, (_x getVariable["rank", 0]), true] call AlysiaClient_fnc_rankToStr), (_x getVariable["realname", (name _x)])];
	};
} forEach (allPlayers);
_list_duty lbSetCurSel -1;
