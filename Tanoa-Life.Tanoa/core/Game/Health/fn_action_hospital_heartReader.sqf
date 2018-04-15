/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_reader", "_bed"];
_reader = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_bed = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if ((isNull _reader) || (isNull _bed)) exitWith {};

while {((attachedTo player) isEqualTo _bed)} do
{
	if (_reader getVariable ["monitor_on", false]) then
	{
		if ((_reader animationPhase "Panel_Hide") != 1) then {
			_reader animate ["Panel_Hide", 1];
		};

		if (player getVariable ["heart_attack", false]) then {
			[_reader, "heart_alert", 20] call AlysiaClient_fnc_globalSay3d;
		} else {
			[_reader, "heart_rate", 7] call AlysiaClient_fnc_globalSay3d;
		};
	} else {
		if ((_reader animationPhase "Panel_Hide") != 0) then {
			_reader animate ["Panel_Hide", 0];
		};
	};

	uiSleep 1.4;
};
