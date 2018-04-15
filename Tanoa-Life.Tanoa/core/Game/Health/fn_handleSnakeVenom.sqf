/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_effect", "_handle"];

if (missionNamespace getVariable ["SnakeVenom", false]) exitWith {};

[
	"Vous avez été mordu par un <t color='#FACC2E'>Tanocien Royal</t>.<br/>" +
	"A moins de vous reposer dans un lit hospitalier vous risquez d'avoir des <t color='#FE2E2E'>problèmes de santé</t>."
] call AlysiaClient_fnc_info;
missionNamespace setVariable ["SnakeVenom", true];

_handle = ppEffectCreate ["ColorInversion", 8000];
_handle ppEffectForceInNVG true;
_handle ppEffectEnable true;
_effect = 0;
while {(_effect >= 0)} do
{
	if ((player getVariable ["sit", false]) && (typeOf(player getVariable ["sit_obj", objNull]) isEqualTo "Alysia_Medical_Lit_01_F")) then {
		_effect = _effect - 0.15;
	} else {
		_effect = _effect + 0.05;
		player setFatigue 1;
	};

	_handle ppEffectAdjust [_effect, _effect, _effect];
	_handle ppEffectCommit 10;
	waitUntil {ppEffectCommitted _handle};
};

ppEffectDestroy _handle;
["Vous ne subissez plus les effets du venin."] call AlysiaClient_fnc_info;
