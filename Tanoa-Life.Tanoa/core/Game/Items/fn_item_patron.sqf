/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_item", "_target", "_info", "_config"];
_item = [_this, 0, "", [""]] call BIS_fnc_param;

if (_item isEqualTo "") exitWith {
	["Aucun patron précisé."] call AlysiaClient_fnc_error;
};

_config = missionConfigFile >> "ALYSIA_BLUEPRINTS" >> _item;
if (!isClass(_config)) exitWith {
	[format["<t color='#FF8000'>%1</t> n'est pas un patron."]] call AlysiaClient_fnc_error;
};

_target = cursorObject;
if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

_info = cursorObject getVariable "laboratory_info";
if (isNil "_info") exitWith {
	["La cible n'est pas un laboratoire."] call AlysiaClient_fnc_error;
};

if ((player distance _target) > 8) exitWith {
	["Vous êtes trop loin du laboratoire."] call AlysiaClient_fnc_error;
};

if (!((_info select 2) in getArray(_config >> "labos"))) exitWith {
	["Ce patron n'est pas utilisable sur ce type de laboratoire."] call AlysiaClient_fnc_error;
};

if ([false, _item, 1] call AlysiaClient_fnc_handleInv) then
{
	[format["<t color='#FF8000'>%1</t> utilisé avec succès.", [_item] call AlysiaClient_fnc_itemGetName]] call AlysiaClient_fnc_info;
	_target setVariable ["extra_process", ((_target getVariable ["extra_process", []]) + getArray(_config >> "process")), true];
} else {
	[format["Vous avez besoin de <t color='#FF8000'>%1</t>.", [_item] call AlysiaClient_fnc_itemGetName]] call AlysiaClient_fnc_error;
};
