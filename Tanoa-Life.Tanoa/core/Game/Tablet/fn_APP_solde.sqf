/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_salary", "_config"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_config = missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "salary";

_salary = getNumber(_config >> "amount");
if (getNumber(_config >> "apply_rank") isEqualTo 1) then
{
	_salary = _salary * (player getVariable ["rank", 0]);
};

(_display displayCtrl 7601) ctrlSetStructuredText parseText format
[
		"Vous avez <t color='#8cff9b'>%1</t>$ en banque.<br/><br/>"
	+	"Vous recevrez <t color='#8cff9b'>%2</t>$ de <t color='#FF8000'>%3</t> dans %4 minute(s).",
	[g_atm] call AlysiaClient_fnc_numberText,
	[_salary] call AlysiaClient_fnc_numberText,
	getText(_config >> "name"),
	round((g_nextPay - time) / 60)
];

if ((player getVariable ["number", ""]) != "") then
{
	[7602, true] call AlysiaClient_fnc_tabletShow;
	[7603, true] call AlysiaClient_fnc_tabletShow;
	(_display displayCtrl 7602) cbSetChecked (profileNamespace getVariable ["ALYSIA_phone_salary", true]);
};
