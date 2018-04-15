/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_name", "_bad", "_number", "_modify_name", "_modify_number", "_index"];
_name = [_this, 0, "", [""]] call BIS_fnc_param;
_number = [_this, 1, "", [""]] call BIS_fnc_param;

if ((time - g_action_delay) < 2) exitWith {
	["Veuillez ralentir dans vos actions"] call AlysiaClient_fnc_error;
};

if (_name isEqualTo "") exitWith {
	["Vous n'avez pas entré de nom pour votre contact"] call AlysiaClient_fnc_error;
};

_bad = [_name, getText(missionConfigFile >> "ALYSIA_PHONE" >> "CONTACTS" >> "characters_allowed")] call AlysiaClient_fnc_TextAllowed;
if (_bad != "") exitWith {
	[format["Vous utilisez un caractère interdit dans le nom de votre contact à ajouter (%1)", _bad]] call AlysiaClient_fnc_error;
};
if (([_name] call CBA_fnc_strLen) > getNumber(missionConfigFile >> "ALYSIA_PHONE" >> "CONTACTS" >> "characters_max")) exitWith {
	[format["Le nom entré pour votre contact ne doit pas dépasser %1 caractères", getNumber(missionConfigFile >> "ALYSIA_PHONE" >> "CONTACTS" >> "characters_max")]] call AlysiaClient_fnc_error;
};

if (!([_number] call AlysiaClient_fnc_isNumber)) exitWith {
	["Le numéro de téléphone entré n'est pas valide"] call AlysiaClient_fnc_error;
};
if (([_number] call CBA_fnc_strLen) != 6) exitWith {
	["Un numéro de téléphone doit être composé de six chiffres"] call AlysiaClient_fnc_error;
};
if ((count g_phone_contacts) >= getNumber(missionConfigFile >> "ALYSIA_PHONE" >> "FORFAITS" >> g_phone_forfait >> "contacts_max")) exitWith {
	["Vous avez déjà atteint votre quota maximum de contacts"] call AlysiaClient_fnc_error;
};

_modify_name = false;
_modify_number = false;
_index = -1;
{
	if ((_x select 0) isEqualTo _name) exitWith
	{
		_modify_number = true;
		_index = _forEachIndex;
	};
	if (_number isEqualTo (_x select 1)) exitWith
	{
		_modify_name = true;
		_index = _forEachIndex;
	};
} forEach (g_phone_contacts);

g_action_delay = time;
if (_modify_name || _modify_number) then
{
	if ((_modify_number && (((g_phone_contacts select _index) select 1) isEqualTo _number)) || (_modify_name && (((g_phone_contacts select _index) select 0) isEqualTo _name))) exitWith {
		[format["Vous possédez déjà un contact avec <t color='#FF4000'>%1</t> comme nom et <t color='#FF4000'>%2</t> en numéro", _name, _number]] call AlysiaClient_fnc_error;
	};
	(g_phone_contacts select _index) set[0, _name];
	(g_phone_contacts select _index) set[1, _number];
	((findDisplay 7500) displayCtrl 8386) ctrlSetText "";
	((findDisplay 7500) displayCtrl 8384) ctrlSetText "";
	["phone_contacts"] spawn AlysiaClient_fnc_tabletApp;
} else {
	g_phone_contacts pushBack [_name, _number];
	((findDisplay 7500) displayCtrl 8386) ctrlSetText "";
	((findDisplay 7500) displayCtrl 8384) ctrlSetText "";
	["phone_contacts"] spawn AlysiaClient_fnc_tabletApp;
};
