/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_level", "_from"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_level = [_this, 1, 0, [0]] call BIS_fnc_param;
_from = [_this, 2, objNull, [objNull]] call BIS_fnc_param;

if ((isNull _target) || (isNull _from)) exitWith {};

[
	format
	[
		"<t color='#FF8000'>%1</t><br/>Nouveau niveau d'accréditation rebelle : <t color='#00FF00'>%2</t>",
		_target getVariable "realname",
		_level
	]
] remoteExecCall ["AlysiaClient_fnc_info", (owner _from)];

[
	format
	[
		"Votre niveau d'accréditation rebelle a été <t color='#FF8000'>mis à jour</t>.<br/><br/>Nouveau niveau : <t color='#00FF00'>%1</t>.<br/>Veuillez vous reconnecter.",
		_level
	]
] remoteExecCall ["AlysiaClient_fnc_info", (owner _target)];

_target setVariable ["rank", _level, true];

[
	format
	[
		"UPDATE players SET CIV_level='%1' WHERE uid='%2'",
		_level,
		getPlayerUID _target
	], 1
] call ExtDB3_fnc_async;
