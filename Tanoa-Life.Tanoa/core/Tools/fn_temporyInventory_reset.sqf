/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

profileNamespace setVariable ["temp_inventory", nil];
if ([_this, 0, true, [true]] call BIS_fnc_param) then {
	saveProfileNamespace;
};
