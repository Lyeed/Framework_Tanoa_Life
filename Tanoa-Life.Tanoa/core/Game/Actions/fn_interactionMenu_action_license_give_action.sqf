/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_license", "_from"];
_license = [_this, 0, "", [""]] call BIS_fnc_param;
_from = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if (isNull _from) exitWith {};
if ([_license] call AlysiaClient_fnc_hasLicense) exitWith {
	(format["%1 a <t color='#01DF01'>refusé</t> votre proposition.<br/>Il possède déjà la licence que vous lui proposez.", player getVariable ["realname", profileName]]) remoteExecCall ["AlysiaClient_fnc_info", _from];
};

_action =
[
	format
	[
		"<t align='center'><img size='6' image='%4'/><br/>Le %1 <t color='#31B404'>%2</t> de la faction %3 souhaite vous donner la licence : <t color='#FF8000'>%5</t>.<br/>Acceptez-vous ?</t>",
		([(side _from), (_from getVariable["rank", 0])] call AlysiaClient_fnc_rankToStr),
		(_from getVariable ["realname", (name _from)]),
		([(side _from)] call AlysiaClient_fnc_sideToStr),
		getText(missionConfigFile >> "ALYSIA_FACTIONS" >> str(_from) >> "name"),
		[_license] call AlysiaClient_fnc_licenseGetName
	],
	"Licence",
	"Accepter",
	"Refuser"
] call BIS_fnc_guiMessage;
if (_action) then
{
	[format["%1 a <t color='#01DF01'>accepté</t> votre proposition.", player getVariable ["realname", profileName]]] remoteExecCall ["AlysiaClient_fnc_info", _from];
	["Vous avez <t color='#01DF01'>accepté</t> la proposition."] call AlysiaClient_fnc_info;
	missionNamespace setVariable [format["license_%1", _license], true];
} else {
	(format["%1 a <t color='#01DF01'>refusé</t> votre proposition.", player getVariable ["realname", profileName]]) remoteExecCall ["AlysiaClient_fnc_info", _from];
	["Vous avez <t color='#DF0101'>refusé</t> la proposition."] call AlysiaClient_fnc_info;
};
