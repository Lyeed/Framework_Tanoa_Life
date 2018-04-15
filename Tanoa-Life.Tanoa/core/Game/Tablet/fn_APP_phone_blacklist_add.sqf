/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_number"];
_number = [_this, 0, "", [""]] call BIS_fnc_param;

if ((time - g_action_delay) < 2) exitWith {
	["Veuillez ralentir dans vos actions"] call AlysiaClient_fnc_error;
};

if (!([_number] call AlysiaClient_fnc_isNumber)) exitWith {
	["Le numéro de téléphone entré n'est pas valide"] call AlysiaClient_fnc_error;
};
if (([_number] call CBA_fnc_strLen) != 6) exitWith {
	["Un numéro de téléphone doit être composé de six chiffres"] call AlysiaClient_fnc_error;
};
if ((count g_phone_blacklist) >= getNumber(missionConfigFile >> "ALYSIA_PHONE" >> "FORFAITS" >> g_phone_forfait >> "backlist_max")) exitWith {
	["Vous avez déjà atteint votre quota maximum de numéros blacklistés"] call AlysiaClient_fnc_error;
};
if ((g_phone_blacklist find _number) != -1) exitWith {
	["Ce numéro est déjà blacklisté"] call AlysiaClient_fnc_error;
};
if (([_number, g_phone_contacts] call AlysiaClient_fnc_index) != -1) exitWith {
	["Vous ne pouvez pas blacklister un numéro faisant partie de vos contacts"] call AlysiaClient_fnc_error;
};

g_action_delay = time;
g_phone_blacklist pushBack _number;
((findDisplay 7500) displayCtrl 8540) ctrlSetText "";
["PHONE_BLACKLIST"] spawn AlysiaClient_fnc_tabletApp;
