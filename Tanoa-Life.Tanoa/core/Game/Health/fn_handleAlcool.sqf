/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_amount";
_amount = [_this, 0, 0, [0]] call BIS_fnc_param;

if (g_alcool isEqualTo 0) then
{
	g_alcool = _amount;
	[] spawn
	{
		private["_effect", "_i", "_animated"];
		_effect = ppEffectCreate ["ChromAberration", 3500];
		_effect ppEffectEnable true;
		_effect ppEffectForceInNVG true;

		_animated = false;
		_i = 10;
		while {_i > 1} do
		{
			_effect ppEffectAdjust [g_alcool, g_alcool, true];
			_effect ppEffectCommit 5;
			waitUntil {ppEffectCommitted _effect};
			_i = _i - 1;
		};

		while {g_alcool > 0} do
		{
			private "_reduce";
			_reduce = 0.01;

			if (!(player getVariable ["is_coma", false])) then
			{
				if (g_alcool > 6) then
				{
					if (((vehicle player) isKindOf "Man") && !(player getVariable ["sit", false]) && ((animationState player) != "incapacitated")) then
					{
						player playMove "incapacitated";
						_animated = true;
					};
					if (random(100) <= 50) then {
						[player, "vomit", 20] call AlysiaClient_fnc_globalSay3d;
					};
				} else {
					if (((animationState player) == "incapacitated") && _animated) then {
						player playMoveNow "amovppnemstpsraswrfldnon";
					};
				};
			};

			if ((player getVariable ["sit", false]) && (animationState player) isEqualTo "ainjppnemrunsnonwnondb_still") then {
				_reduce = _reduce + 0.04;
			};

			_effect ppEffectAdjust [g_alcool, g_alcool, true];
			_effect ppEffectCommit 10;
			waitUntil {ppEffectCommitted _effect};
			g_alcool = g_alcool - 0.01;
		};

		if (g_alcool < 0) then {g_alcool = 0};
		_effect ppEffectEnable false;
		ppEffectDestroy _effect;
	};
} else {
	g_alcool = g_alcool + _amount;
	if (g_alcool < 0) then {g_alcool = 0};
};
