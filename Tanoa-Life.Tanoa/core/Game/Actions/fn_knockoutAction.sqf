/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_weapon", "_anim", "_anims", "_config", "_fatigue", "_sleep", "_target"];

if (!((vehicle player) isKindOf "Man")) exitWith {false};
if ((getFatigue player) > 85) exitWith {false};
if ((stance player) != "STAND") exitWith {false};
if ((missionNamespace getVariable ["last_anim", 0]) >= time) exitWith {false};
if (g_staff_god) exitWith {false};

_weapon = currentWeapon player;
_anims = switch (true) do
{
	case (_weapon in ["Skyline_Merlin_01", "Skyline_Pioche_01", "Skyline_Hache_01", "Skyline_Pelle_01"]): {["Skyline_SwingAnim_Outils"]};
	case (_weapon isEqualTo ""): {["MOCAP_Man_Act_Non_CivPace_Non_Punch_Hand_Left_Direct", "MOCAP_Man_Act_Non_CivPace_Non_Punch_Hand_Right_Direct"]};
	case (_weapon isEqualTo (primaryWeapon player)): {["MOCAP_Man_Act_Rfl_Stroke_DirectCurve", "MOCAP_Man_Act_Rfl_Stroke_RightCurve"]};
	case (_weapon isEqualTo (handgunWeapon player)): {["MOCAP_Man_Act_Pstl_Stroke_RightCurve", "MOCAP_Man_Act_Pstl_Stroke_LeftCurve"]};
	case (_weapon isEqualTo (secondaryWeapon player)): {["MOCAP_Man_Act_Lnr_Stroke_DirectCurve"]};
};
if (isNil "_anims") exitWith {false};

if ((animationState player) in _anims) exitWith {false};

_anim = _anims call BIS_fnc_selectRandom;
_config = missionConfigFile >> "ALYSIA_MELEE" >> _anim;
if (!isClass(_config)) exitWith {false};

_fatigue = (getFatigue player) + (getNumber(_config >> "fatigue") + ((speed player) / 150));
if (_fatigue >= 1) exitWith {false};

_sleep = getNumber(_config >> "sleep");

player playActionNow _anim;
player setFatigue _fatigue;
missionNamespace setVariable ["last_anim", (time + _sleep + 0.2)];

sleep _sleep;

_target = cursorTarget;
if (!(isNull _target) && (_target isKindOf "Man") && (isPlayer _target) && ((player distance _target) <= 1.6) && (alive _target)) then
{
	if (!(_target getVariable ["is_coma", false])) then
	{
		[_target, "punch", 15] call AlysiaClient_fnc_globalSay3d;
		[getNumber(_config >> "damage") * -1, player] remoteExecCall ["AlysiaClient_fnc_handleBlood", _target];
		[] call AlysiaEvent_fnc_onPlayerFireNear;
	};
};

true;
