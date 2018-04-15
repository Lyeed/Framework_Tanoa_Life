/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_from", "_license", "_company", "_config"];
_from = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_license = [_this, 1, "", [""]] call BIS_fnc_param;
_company = [_this, 2, objNull, [objNull]] call BIS_fnc_param;

if ((isNull _from) || (_license isEqualTo "") || (isNull _company)) exitWith {};

if ([_license] call AlysiaClient_fnc_hasLicense) exitWith {
	[format["Cette personne possède déjà la license : <t color='#DF3A01'>%1</t>.", [_license] call AlysiaClient_fnc_licenseGetName]] remoteExecCall ["AlysiaClient_fnc_info", _from];
};

_config = missionConfigFile >> "ALYSIA_LICENSES" >> _license >> "factions" >> str(playerSide);
if (!isClass(_config)) exitWith {
	[format["Cette personne n'est pas autorisé à recevoir la license : <t color='#DF3A01'>%1</t>.", [_license] call AlysiaClient_fnc_licenseGetName]] remoteExecCall ["AlysiaClient_fnc_info", _from];
};

if ((_company getVariable ["company_bank", 0]) >= getNumber(_config >> "price")) then
{
	[g_company, false, getNumber(_config >> "price"), (_from getVariable "realname"), "Licence"] remoteExec ["AlysiaServer_fnc_company_bank_handle", 2];
	missionNamespace setVariable [format["license_%1", _license], true];

	[
		format
		[
			"<t color='#045FB4'>%1</t> vous à payé la license : <t color='#DF3A01'>%2</t>.",
			_from getVariable "realname",
			[_license] call AlysiaClient_fnc_licenseGetName
		]
	] call AlysiaClient_fnc_info;
} else {
	[format["Vous n'avez pas assez d'argent dans le compte de votre entreprise pour payer la license : <t color='#DF3A01'>%1</t>.", [_license] call AlysiaClient_fnc_licenseGetName]] remoteExecCall ["AlysiaClient_fnc_info", _from];
};
