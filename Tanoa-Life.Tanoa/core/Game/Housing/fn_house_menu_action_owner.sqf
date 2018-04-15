/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_ownerInfo", "_target"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {};

_ownerInfo = _target getVariable ["house_owner", []];
if (_ownerInfo isEqualTo []) then {
	["Cette batisse n'a pas de propriétaire"] call AlysiaClient_fnc_error;
} else {
	[format["<t align='center'>Propriétaire<br/><t color='#FF0000'>%1</t></t>", (_ownerInfo select 1)]] call AlysiaClient_fnc_info;
};
