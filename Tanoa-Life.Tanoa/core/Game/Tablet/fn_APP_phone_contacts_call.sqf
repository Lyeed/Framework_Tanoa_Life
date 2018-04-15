/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_handle", "_number", "_index"];

_index = lbCurSel 8374;
if (_index isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné de contact."] call AlysiaClient_fnc_error;
};

_number = lbData[8374, _index];
if (_number isEqualTo "") exitWith
{
	["Ce contact n'a pas de numéro."] call AlysiaClient_fnc_error;
	g_phone_contacts deleteAt _index;
	["PHONE_CONTACTS"] spawn AlysiaClient_fnc_tabletApp;
};

_handle = ['PHONE_CALL'] spawn AlysiaClient_fnc_tabletApp;
waitUntil {(scriptDone _handle)};

uiNamespace setVariable ["phone_call_number", _number];
((uiNamespace getVariable ["tablet", displayNull]) displayCtrl 8920) ctrlSetStructuredText parseText format["<t size='2.5' align='center'>%1</t>", _number];
