/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_config", "_timeMin", "_timeMax", "_time", "_bailMin", "_bailMax", "_bail"];

if (isNull g_interaction_target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (g_interaction_target getVariable ["arrested", false]) exitWith {
	["Cette personne est déjà en prison."] call AlysiaClient_fnc_error;
};
if (isNull g_interaction_prison) exitWith {
	["Prison invalide."] call AlysiaClient_fnc_error;
};

_config = missionConfigFile >> "ALYSIA_PRISONS" >> typeOf(g_interaction_prison);

_timeMin = getNumber(_config >> "time" >> "min");
_timeMax = getNumber(_config >> "time" >> "max");
_time = ctrlText 20010;
if (!([_time] call AlysiaClient_fnc_isNumber)) exitWith {
	["Le temps doit être un nombre valide."] call AlysiaClient_fnc_error;
};
_time = parseNumber(_time);
if (_time < _timeMin) exitWith {
	[format["Le temps doit être supérieur à %1 minutes", _timeMin]] call AlysiaClient_fnc_error;
};
if (_time > _timeMax) exitWith {
	[format["Le temps doit être inférieur ou égal à %1 minutes", _timeMax]] call AlysiaClient_fnc_error;
};

_bailMin = getNumber(_config >> "bail" >> "min");
_bailMax = getNumber(_config >> "bail" >> "max");
_bail = ctrlText 20011;
if (!([_bail] call AlysiaClient_fnc_isNumber)) exitWith {
	["Le bail doit être un nombre valide."] call AlysiaClient_fnc_error;
};
_bail = parseNumber(_bail);
if (_bail < _bailMin) exitWith {
	[format["La caution doit être supérieur à <t color='#8cff9b'>%1</t>$.", _bailMin]] call AlysiaClient_fnc_error;
};
if (_bail > _bailMax) exitWith {
	[format["La caution doit être inférieur ou égal à <t color='#8cff9b'>%1</t>$.", _bailMax]] call AlysiaClient_fnc_error;
};

[g_interaction_prison, [lbData[20006, (lbCurSel 20006)], _time, _bail, (ctrlText 20012)]] remoteExec ["AlysiaClient_fnc_prison_prepare", g_interaction_target];
closeDialog 0;
