/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

profileNamespace setVariable ["temp_inventory", ([] call AlysiaClient_fnc_getInv)];
if ([_this, 0, true, [true]] call BIS_fnc_param) then {
	saveProfileNamespace;
};
