/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_index", "_display", "_forfait", "_config"];

disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_index = [_this, 1, -1, [-1]] call BIS_fnc_param;

if ((_index isEqualTo -1) || (isNull _list)) exitWith {};
if ((_list lbText _index) isEqualTo "Aucun") exitWith {};

_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_forfait = _list lbData _index;
if (_forfait isEqualTo "") exitWith {};

_config = missionConfigFile >> "ALYSIA_PHONE" >> "FORFAITS" >> _forfait;
if (!isClass(_config)) exitWith {};

(_display displayCtrl 8111) ctrlSetStructuredText parseText format
[
		"<br/><t font='PuristaBold'><t align='center' size='2'>%1</t><br/>"
	+	"<t size='1.2'>"
	+	"<t align='left'>Par salaire</t><t align='right'><t color='#8cff9b'>%2</t>$</t><br/>"
	+	"<t align='left'>Prix du SMS</t><t align='right'><t color='#8cff9b'>%3</t>$</t><br/>"
	+	"<t align='left'>Masquer son numéro</t><t align='right'>%7</t><br/>"
	+	"<t align='center'>Sauvegardes</t><br/>"
	+	"<t align='left'>SMS</t><t align='right'>%4</t><br/>"
	+	"<t align='left'>Contact(s)</t><t align='right'>%5</t><br/>"
	+	"<t align='left'>Blacklist(s)</t><t align='right'>%6</t><br/>"
	+	"</t>",
	getText(_config >> "name"),
	[getNumber(_config >> "bill")] call AlysiaClient_fnc_numberText,
	[getNumber(_config >> "sms_price")] call AlysiaClient_fnc_numberText,
	getNumber(_config >> "sms_max"),
	getNumber(_config >> "contacts_max"),
	getNumber(_config >> "backlist_max"),
	if (getNumber(_config >> "hide_number") isEqualTo 1) then {"Oui"} else {"Non"}
];

[8111, true] call AlysiaClient_fnc_tabletShow;

if ((g_atm < getNumber(missionConfigFile >> "ALYSIA_PHONE" >> "FORFAITS" >> _forfait >> "bill")) || (_forfait isEqualTo g_phone_forfait)) then
{
	[8108, false] call AlysiaClient_fnc_tabletShow;
	[8109, false] call AlysiaClient_fnc_tabletShow;
} else {
	[8108, true] call AlysiaClient_fnc_tabletShow;
	[8109, true] call AlysiaClient_fnc_tabletShow;
};
