/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_oldPos", "_oldVeh", "_targetVehicle"];
_target = call compile (lbData[9000,lbCurSel 9000]);

closeDialog 0;

_oldPos = getPosATL player;
_oldVeh = vehicle player;

_target switchCamera "EXTERNAL";
g_staff_spec = true;

while {g_staff_spec} do
{
	if ((isNil "_targetVehicle") || {((vehicle _target) != _targetVehicle)}) then
	{
		_targetVehicle = vehicle _target;
		if (_targetVehicle isKindOf "Man") then {
			player attachTo [_targetVehicle, [0,0,-1]];
		} else {
			player attachTo [_targetVehicle, [0,-1,-1.5]];
		};
	};

	uiSleep 0.3;
};

detach player;
player switchCamera "INTERNAL";

if (_oldVeh isEqualTo player) then {
	player setPosATL _oldPos;
} else {
	player action ["getInCargo", _oldVeh];
};
