/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_from", "_target"];
_from = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_target = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if ((isNull _from) || (isNull _target)) exitWith {};

["Vous avez <t color='#FF8000'>proposé</t> à la cible un examen médical."] call AlysiaClient_fnc_info;
[_from] remoteExec ["AlysiaClient_fnc_doctor_get", _target];
