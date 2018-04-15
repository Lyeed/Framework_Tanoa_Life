/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_license", "_from"];
_license = [_this, 0, "", [""]] call BIS_fnc_param;
_from = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if (isNull _from) exitWith {};

if ([_license] call AlysiaClient_fnc_hasLicense) then
{
	missionNamespace setVariable [format["license_%1", _license], false];

	[
		format
		[
			"Votre licence <t color='#DF7401'>%1</t> vous a été retirée par <t color='#2E64FE'>%2 %3</t>",
			[_license] call AlysiaClient_fnc_licenseGetName,
			[side _from, _from getVariable ["rank", 0]] call AlysiaClient_fnc_rankToStr,
			_from getVariable "realname"
		]
	] call AlysiaClient_fnc_info;

	[
		format
		[
			"La licence <t color='#DF7401'>%1</t> a été retirée",
			[_license] call AlysiaClient_fnc_licenseGetName
		]
	] remoteExecCall ["AlysiaClient_fnc_info", _from];
} else {
	[
		format
		[
			"Impossible de trouver la licence <t color='#DF7401'>%1</t>.<br/>La cible ne l'a peut etre déjà plus.",
			[_license] call AlysiaClient_fnc_licenseGetName
		]
	] remoteExecCall ["AlysiaClient_fnc_info", _from];
};
