/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_sound", "_distance"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_sound = [_this, 1, "", [""]] call BIS_fnc_param;
_distance = [_this, 2, 0, [0]] call BIS_fnc_param;

if ((isNull _target) || (_sound isEqualTo "")) exitWith {false};

if (_distance <= 0) then {
	[_target, _sound] remoteExecCall ["say3D", -2];
} else {
	{
		if ((alive _x) && ((_target distance _x) <= _distance)) then {[_target, _sound] remoteExecCall ["say3D", _x]};
	} forEach allPlayers;
};

true;
