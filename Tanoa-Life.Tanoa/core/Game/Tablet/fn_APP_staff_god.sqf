/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_config", "_keyForward", "_keyLeft", "_keyBackward", "_keyRight", "_keyUp", "_keyDown"];

_config = ("getText(_x >> 'uid') isEqualTo (getPlayerUID player)" configClasses (missionConfigFile >> "ALYSIA_STAFF" >> "members")) select 0;
if (isNil "_config") exitWith {};

AlysiaAdmin_fnc_fly_forward =
{
	if ((vehicle player) isKindOf "Man") then
	{
		_vel = velocity player;
		_dir = direction player;
		player setVelocity [(_vel select 0) + (sin _dir * 0.4), (_vel select 1) + (cos _dir * 0.4), 0.4];
	};
};

AlysiaAdmin_fnc_fly_left =
{
	if ((vehicle player) isKindOf "Man") then
	{
		player setdir ((getdir player) - 2);
	};
};

AlysiaAdmin_fnc_fly_right =
{
	if ((vehicle player) isKindOf "Man") then
	{
		player setdir ((getdir player) + 2);
	};
};

AlysiaAdmin_fnc_fly_backward =
{
	if ((vehicle player) isKindOf "Man") then
	{
		_vel = velocity player;
		_dir = direction player;
		player setVelocity [(_vel select 0) - (sin _dir * 0.4), (_vel select 1) - (cos _dir * 0.4), 0.4];
	};
};

AlysiaAdmin_fnc_fly_up =
{
	if ((vehicle player) isKindOf "Man") then
	{
		_vel = velocity player;
		player setVelocity [(_vel select 0), (_vel select 1), 6];
	};
};

AlysiaAdmin_fnc_fly_down =
{
	if ((vehicle player) isKindOf "Man") then
	{
		player setVelocity [0,0,-4];
	};
};

if (!("ItemMap" in (assignedItems player))) then
{
	if ((uniform player) isEqualTo "") then {
		player forceAddUniform "Skyline_Uniforme_Alysia_01_F";
	};
	player addItem "ItemMap";
	player assignItem "ItemMap";
};

player addItem "NVGoggles_INDEP";

_keyForward = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) in (actionKeys 'MoveForward')) then {call AlysiaAdmin_fnc_fly_forward}"];
_keyLeft = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) in (actionKeys 'MoveLeft')) then {call AlysiaAdmin_fnc_fly_left}"];
_keyBackward = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) in (actionKeys 'MoveBack')) then {call AlysiaAdmin_fnc_fly_backward}"];
_keyRight = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) in (actionKeys 'MoveRight')) then {call AlysiaAdmin_fnc_fly_right}"];
_keyUp = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) in (actionKeys 'MoveUp')) then {call AlysiaAdmin_fnc_fly_up}"];
_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) in (actionKeys 'MoveDown')) then {call AlysiaAdmin_fnc_fly_down}"];

g_combatTime = 0;
g_staff_on = true;
g_staff_god = true;
g_staff_markers = true;
[player, true] remoteExecCall ["hideObjectGlobal", 2];
onMapSingleClick "(vehicle player) setPos _pos";
if ((player getVariable ["tf_voiceVolume", 0]) > 0) then {
	player setVariable ["tf_voiceVolume", 0, true];
};

while {g_staff_on} do
{
	_eventHandler = addMissionEventHandler ["Draw3D",

	{
		{
			if (!(isNull _x) && (isPlayer _x) && (_x != player) && ((_x getVariable ["realname", ""]) != "") && ((player distance _x) <= 300)) then
			{
				drawIcon3D [
					"",
					[side _x, false] call BIS_fnc_sideColor,
					_x modelToWorld [0, 0.1, 2.1],
					0,
					0,
					0,
					_x getVariable "realname",
					2,
					0.04,
					"PuristaMedium",
					"center",
					false
				];
			};
		} forEach allPlayers;
	}];

	_currentPlayerCount = count allPlayers;
	waitUntil {((_currentPlayerCount != (count allPlayers)) || !g_staff_on)};

	removeMissionEventHandler ["Draw3D", _eventHandler];

	uiSleep 1;
};

g_staff_markers = false;
g_staff_god = false;
[player, false] remoteExecCall ["hideObjectGlobal", 2];
onMapSingleClick "";
if ((player getVariable ["tf_voiceVolume", 0]) isEqualTo 0) then {
	player setVariable ["tf_voiceVolume", 1, true];
};

(findDisplay 46) displayRemoveEventHandler ["KeyDown", _keyForward];
(findDisplay 46) displayRemoveEventHandler ["KeyDown", _keyLeft];
(findDisplay 46) displayRemoveEventHandler ["KeyDown", _keyBackward];
(findDisplay 46) displayRemoveEventHandler ["KeyDown", _keyRight];
(findDisplay 46) displayRemoveEventHandler ["KeyDown", _keyUp];
(findDisplay 46) displayRemoveEventHandler ["KeyDown", _keyDown];

player removeItem "NVGoggles_INDEP";
