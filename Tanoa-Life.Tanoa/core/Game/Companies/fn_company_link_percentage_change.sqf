/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_value";
_value = floor([_this, 0, -1, [0]] call BIS_fnc_param);

if (_value isEqualTo -1) exitWith {
	["Vous n'avez pas précisé de valeur."] call AlysiaClient_fnc_error;
};
if (_value < 0) exitWith {
	["La valeur ne peut pas être négative."] call AlysiaClient_fnc_error;
};
if (!((_value >= 0) && (_value <= 70))) exitWith {
	["La valeur doit être comprise entre 0 et 70."] call AlysiaClient_fnc_error;
};
if (isNull g_company) exitWith {
	["Vous n'avez pas d'entreprise."] call AlysiaClient_fnc_error;
};

g_company setVariable ["company_link_percentage", _value, true];
