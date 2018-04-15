/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if ((animationState player) != "incapacitated") then
{
	if (!g_staff_god) then
	{
		cutText ["", "BLACK IN", 5, true];
		[] call AlysiaEvent_fnc_onPlayerFireNear;
		if (!(player getVariable ["restrained", false]) && !(player getVariable ["surrender", false])) then
		{
			private "_inUse";
			_inUse = false;

			if (g_action_inUse) then {
				_inUse = true
			} else {
				g_action_inUse = true;
			};

			player playMoveNow "incapacitated";
			uiSleep round(random(5) + 2);
			player playMoveNow "amovppnemstpsraswrfldnon";

			if (!_inUse) then {
				g_action_inUse = false
			};
		};
	};
};
