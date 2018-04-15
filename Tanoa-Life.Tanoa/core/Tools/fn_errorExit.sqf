/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (isDedicated) exitWith {};
if (dialog) then {closeDialog 0};

private["_txt", "_time"];
_txt = [_this, 0, "", [""]] call BIS_fnc_param;
_time = [_this, 1, 6, [6]] call BIS_fnc_param;

diag_log _txt;
disableUserInput true;
player enableSimulation false;
while {_time > 0} do
{
	("initLayer" call BIS_fnc_rscLayer) cutText [format["%1 Déconnexion dans %2 seconde%3", _txt, _time, if (_time > 1) then {"s"} else {""}], "BLACK FADED", 1, true];
	_time = _time - 1;
	uiSleep 1;
};

disableUserInput false;
"Bye" call BIS_fnc_endMission;
