/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_sel", "_price", "_type", "_object", "_action_1", "_action_2", "_name", "_bad", "_config"];

_sel = lbCurSel 90006;
if (_sel isEqualTo -1) exitWith {};

_type = lbData[90006, _sel];
if (_type isEqualTo "") exitWith {};

_config = missionConfigFile >> "ALYSIA_COMPANIES_TYPES" >> _type;
if (!isClass(_config)) exitWith {};

_price = getNumber(_config >> "price");
if (_price > g_atm) exitWith {};

_name = ctrlText 90011;
if (_name isEqualTo "") exitWith {
	["Vous n'avez pas entré le nom de l'entreprise."] call AlysiaClient_fnc_error;
};
_bad = [_name, getText(missionConfigFile >> "ALYSIA_COMMPAGNIES_INFO" >> "name_allowed")] call AlysiaClient_fnc_TextAllowed;
if (_bad != "") exitWith {
	[format["Vous utilisez un caractère interdit dans le nom de l'entreprise (%1).", _bad]] call AlysiaClient_fnc_error;
};
if (([_name] call CBA_fnc_strLen) > getNumber(missionConfigFile >> "ALYSIA_COMMPAGNIES_INFO" >> "name_max")) exitWith {
	[format["Votre message ne doit pas dépasser %1 caractères.", getNumber(missionConfigFile >> "ALYSIA_COMPANIES_TYPES" >> "characters_max")]] call AlysiaClient_fnc_error;
};

closeDialog 0;

if (isNull g_interaction_target) exitWith {
	["Impossible de récupérer les informations du propriétaire de l'entreprise"] call AlysiaClient_fnc_error;
};

if (!(isNull g_objPut)) exitWith {
	["Vous deployez déjà un élèment"] call AlysiaClient_fnc_error;
};

_object = getText(missionConfigFile >> "ALYSIA_COMPANIES_TYPES" >> _type >> "building") createVehicle [0, 0, 0];
_object attachTo [player, [0, 10, 1]];
g_objPut = _object;

_action_1 = player addAction["Placer l'<t color='#FFFF33'>entreprise</t>",
{
	detach g_objPut;
}, "", 9999992, true, true, "",'!isNull g_objPut'];

_action_2 = player addAction["<t color='#ff8c8c'>Annuler</t> la pose",
{
	deleteVehicle g_objPut;
}, "", 9999991, true, true, "",'!isNull g_objPut'];

waitUntil {((isNull _object) || (isNull (attachedTo _object)))};

g_objPut = objNull;

player removeAction _action_1;
player removeAction _action_2;

if (isNull _object) exitWith {};

if (isNull g_interaction_target) exitWith
{
	["Impossible de récupérer les informations du propriétaire de l'entreprise."] call AlysiaClient_fnc_error;
	deleteVehicle _object;
};

_object setPos [((getPos _object) select 0), ((getPos _object) select 1), 0];
playSound "buy";
[false, _price, "Création d'entreprise"] call AlysiaClient_fnc_handleATM;
[_type, _object, g_interaction_target, _name] remoteExec ["AlysiaServer_fnc_company_insert", 2];
