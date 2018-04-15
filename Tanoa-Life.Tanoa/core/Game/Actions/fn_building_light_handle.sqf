/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if (isNull (_target getVariable ["lightSource", ObjNull])) then
{
	["Lumières <t color='#FF8000'>ON</t></t>"] call AlysiaClient_fnc_info;
	[_target, true] remoteExecCall ["AlysiaClient_fnc_building_light_update", -2];
} else {
	["Lumières <t color='#FF8000'>OFF</t></t>"] call AlysiaClient_fnc_info;
	[_target, false] remoteExecCall ["AlysiaClient_fnc_building_light_update", -2];
};
