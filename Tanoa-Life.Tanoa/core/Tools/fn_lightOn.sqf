/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_obj", "_state"];
_obj = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_state = [_this, 1, false, [false]] call BIS_fnc_param;

if (isNull _obj) exitWith {};

if (_state) then
{
	_obj setHit ["light_1_hitpoint", 0];
	_obj setHit ["light_2_hitpoint", 0];
	_obj setHit ["light_3_hitpoint", 0];
	_obj setHit ["light_4_hitpoint", 0];
} else {
	_obj setHit ["light_1_hitpoint", 0.97];
	_obj setHit ["light_2_hitpoint", 0.97];
	_obj setHit ["light_3_hitpoint", 0.97];
	_obj setHit ["light_4_hitpoint", 0.97];
};
