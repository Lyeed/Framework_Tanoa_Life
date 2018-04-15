/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_hired", "_info", "_license", "_hasLicense"];
_hired = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull g_company) exitWith {};

_info = g_company getVariable "company_info";
if (isNil "_info") exitWith {};

_hasLicense = false;
_license = getText(missionConfigFile >> "ALYSIA_COMPANIES_TYPES" >> (_info select 2) >> "license");
if (_license != "") then
{
	if ([_license] call AlysiaClient_fnc_hasLicense) then
	{
		missionNamespace setVariable [format["license_%1", _license], false];
		_hasLicense = true;
	};
};

if (isNull _hired) then {
	[format[
		"Vous avez quitté l'entreprise : <t color='#74DF00'>%1</t>%2",
		(_info select 0),
		if (_hasLicense) then {format["<br/>Votre licence %1 vous a été retirée.", ([_license] call AlysiaClient_fnc_licenseGetName)]} else {""}
	]] call AlysiaClient_fnc_info;
} else {
	[format[
		"Vous avez été renvoyé par <t color='#045FB4'>%1</t> de l'entreprise : <t color='#74DF00'>%2</t>.<br/>%3",
		(_hired getVariable ["realname", (name _hired)]),
		(_info select 0),
		if (_hasLicense) then {format["<br/>Votre licence %1 vous a été retirée.", ([_license] call AlysiaClient_fnc_licenseGetName)]} else {""}
	]] call AlysiaClient_fnc_info;
};

g_company = objNull;
