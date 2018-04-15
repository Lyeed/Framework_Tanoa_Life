/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_value";
_value = round([_this, 0, 0, [0]] call BIS_fnc_param);

if (_value isEqualTo 0) exitWith {};
if (player getVariable ["is_coma", false]) exitWith {};
if ((_value > 0) && (g_blood isEqualTo 4000)) exitWith {};

g_blood = g_blood + _value;
if (g_blood >= 4000) then
{
	g_blood = 4000;
	g_damage_history = [];
	if (player getVariable ["bullet_check", false]) then
	{
		player setVariable ["bullet_check", false, true];
	};
} else {
	private "_from";
	_from = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

	if ((_value < 0) && !(isNull _from)) then
	{
		_index = [(getPlayerUID _from), g_damage_history] call AlysiaClient_fnc_index;
		if (_index isEqualTo -1) then {
			g_damage_history pushBack [(getPlayerUID _from), _value];
		} else {
			g_damage_history set [_index, [(getPlayerUID _from), ((g_damage_history select _index) select 1) + _value]];
		};
	};

	if (g_blood <= 1) then
	{
		g_blood = 1;
		[_from] spawn AlysiaClient_fnc_handleComa;
	} else {
		if (!g_regen_active) then {
			[] spawn AlysiaClient_fnc_handleRegen;
		};
		if (_value < 0) then
		{
			[] call AlysiaEvent_fnc_onPlayerFireNear;
			[10] spawn BIS_fnc_BloodEffect;
			if (((vehicle player) != player) && ([_this, 2, true, [true]] call BIS_fnc_param)) then {
				addCamShake [random(15) + 1, 1, random(5) + 1];
			};
		};
	};
};

g_hurt_effect ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, (g_blood / 4000)], [1, 1, 1, 1]];
g_hurt_effect ppEffectCommit 0;
player setDamage (100 - (100 / 4000 * g_blood)) / 100;
