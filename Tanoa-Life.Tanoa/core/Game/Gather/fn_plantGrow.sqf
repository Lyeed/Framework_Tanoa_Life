/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_growtime", "_growup", "_growprcnt", "_object"];
_growtime = round([_this, 0, 0, [0]] call BIS_fnc_param);
_growup = [_this, 1, 0, [0]] call BIS_fnc_param;
_object = [_this, 2, objNull, [objNull]] call BIS_fnc_param;

if (isNull _object) exitWith {};

missionNamespace setVariable [format["%1_PLANTS", (getPlayerUID player)], (missionNamespace getVariable [format["%1_PLANTS", (getPlayerUID player)], []]) + [_object] - [objNull]];
publicVariableServer format["%1_PLANTS", (getPlayerUID player)];
_growprcnt = 0;
while {_growprcnt < 100} do
{
	uiSleep _growtime;
	if (!(alive _object)) exitWith {
		deleteVehicle _object;
	};
	_object setposATL [(getpos _object select 0), (getpos _object select 1), ((getpos _object select 2) + _growup)];
	_growprcnt = _growprcnt + 10;
};

if (alive _object) then {
	_object setVariable ["ready", true, true];
};
