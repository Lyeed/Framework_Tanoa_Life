/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_playSound", "_sound"];
_sound = [_this, 0, "", [""]] call BIS_fnc_param;
_playSound = [_this, 1, false, [false]] call BIS_fnc_param;

profileNamespace setVariable ["ALYSIA_phone_call_ring", _sound];
if ((_playSound) && (_sound != "")) then {
	playSound _sound;
};
