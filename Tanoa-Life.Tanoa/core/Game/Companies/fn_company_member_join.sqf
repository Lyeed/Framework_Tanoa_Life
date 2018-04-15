/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_company", "_info", "_actual", "_give_license"];
_company = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_give_license = [_this, 1, false, [false]] call BIS_fnc_param;

if (isNull _company) exitWith {};

_info = _company getVariable "company_info";
if (isNil "_info") exitWith {};

if (isNull g_company) then
{
	[format["Vous avez rejoint l'entreprise : <t color='#74DF00'>%1</t>.", (_info select 0)]] call AlysiaClient_fnc_info;
	[_company, true, (getPlayerUID player), profileName] call AlysiaClient_fnc_company_member_handle;
	g_company = _company;
	if (_give_license) then
	{
		_license = getText(missionConfigFile >>  "ALYSIA_COMPANIES_TYPES" >> (_info select 2) >> "license");
		if (_license != "") then
		{
			_config = missionConfigFile >> "ALYSIA_LICENSES" >> _license >> "factions" >> str(playerSide);
			if (isClass(_config)) then {missionNamespace setVariable [format["license_%1", _license], true]};
		};
	};
} else {
	_actual = g_company getVariable "company_info";
	[format["Vous êtes déjà membre de l'entreprise : <t color='#74DF00'>%1</t>.<br/>Contactez <t color='#045FB4'>%2</t> et demandez-lui de quitter l'entreprise.", (_actual select 0), (_actual select 4)]] call AlysiaClient_fnc_error;
};
