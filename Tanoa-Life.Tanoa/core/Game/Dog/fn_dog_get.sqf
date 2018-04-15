/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_sit", "_actual"];

if (!isNull(g_dog)) exitWith {
	["Vous avez déjà un chien."] call AlysiaClient_fnc_error;
};

(["Alsatian_Sand_F", "Alsatian_Black_F", "Alsatian_Sandblack_F"] call BIS_fnc_selectRandom) createUnit [(position player), (group player), format["this setVariable ['owner', '%1'];", (getPlayerUID player)], 0.5, "PRIVATE"];

{
	if ((_x getVariable ["owner", ""]) isEqualTo (getPlayerUID player)) exitWith {g_dog = _x};
} forEach (nearestObjects [player, ["Alsatian_Sand_F", "Alsatian_Black_F", "Alsatian_Sandblack_F"], 20]);
if (isNull g_dog) exitWith {
	["Impossible de trouver l'animal."] call AlysiaClient_fnc_error;
};

g_dog setVariable ["BIS_fnc_animalBehaviour_disable", true];
_sit = false;
_actual = "";

while {(!(isNull g_dog) && (alive g_dog))} do
{
	private "_target";

	if (g_dog getVariable ["search", false]) then
	{
		_target = g_dog getVariable ["search_target", objNull];
		if ((isNull _target) || ((g_dog distance _target) > 700)) then
		{
			_target = player;
			g_dog setVariable ["search", false, true];
			g_dog setVariable ["search_target", objNull];
		};
	} else {
		_target = vehicle player;
	};

	_distance = g_dog distance _target;
	if ((g_dog getVariable ["follow", false]) && (_distance > 3)) then
	{
		if (_sit) then {
			_sit = false;
		};

		_anim = switch (true) do
		{
			case (_distance < 5): {"Dog_Walk"};
			case (_distance >= 5 && _distance <= 10): {"Dog_Run"};
			default {"Dog_Sprint"};
		};

		if (g_dog getVariable ["search", false]) then
		{
			if ((random(100) < 10) && ((g_dog getVariable ["search_target", objNull]) isKindOf "Man")) then {
				[g_dog, "dog_one", 30] call AlysiaClient_fnc_globalSay3d;
			};
		};

		if (_actual != _anim) then
		{
			_actual = _anim;
			g_dog playMove _anim;
		};

		g_dog moveTo (getPosATL _target);
	} else {
		if (!_sit) then
		{
			g_dog playMove "Dog_Sit";
			_sit = true;
		};
	};

	if (isNull(attachedTo g_dog) && !(_target isKindOf "Man") && (_distance < 4)) then
	{
		g_dog playMove "Dog_Sit";
		_sit = true;
		g_dog attachTo [_target, _target worldToModel (player modelToWorld [0,0.7,-0.1])];
		waitUntil {(vehicle player) isKindOf "Man"};
		detach g_dog;
		g_dog attachTo [player, [0,0.7,-0.1]];
		uiSleep 1.5;
		detach g_dog;
	};

	sleep 0.5;
};

g_dog = objNull;
