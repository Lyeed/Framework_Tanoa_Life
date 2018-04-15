/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_use", "_item"];
_item = [_this, 0, "", [""]] call BIS_fnc_param;

if (_item isEqualTo "") exitWith {false};

if (player getVariable ["is_coma", false]) exitWith
{
	["Vous ne pouvez pas utiliser d'objet dans le coma."] call AlysiaClient_fnc_error;
	false;
};

if (g_action_inUse) exitWith
{
	["Vous ne pouvez pas utiliser d'objet pour le moment."] call AlysiaClient_fnc_error;
	false;
};

_use = getText(missionConfigFile >> "ALYSIA_ITEMS" >> _item >> "use" >> "action");
if (_use isEqualTo "") exitWith
{
	["Cet objet n'est pas utilisable."] call AlysiaClient_fnc_error;
	false;
};

call compile format[_use, _item];
true;
