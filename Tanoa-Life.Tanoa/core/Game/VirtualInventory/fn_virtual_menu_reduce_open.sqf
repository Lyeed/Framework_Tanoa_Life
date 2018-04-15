/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_inUse", "_variable_name"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_variable_name = [_this, 1, "construction_require", [""]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

g_action_inUse = true;
uiSleep((random(1)) + 0.5);
g_action_inUse = false;

_inUse = _target getVariable ["trunk_in_use_ID", ""];
if ((_inUse != "") && !(_inUse isEqualTo (getPlayerUID player))) exitWith {
	["Le coffre est déjà en cours d'utilisation."] call AlysiaClient_fnc_error;
};

if ((vehicle player) isEqualTo player) then {
	player playAction "Gear";
};

g_interaction_reduce_var = _variable_name;
g_interaction_target = _target;
createDialog "RscDisplayVirtualReduce";

g_interaction_target setVariable ["trunk_in_use_ID", (getPlayerUID player), true];
[] call AlysiaClient_fnc_virtual_menu_reduce_update;

while {!(isNull (findDisplay 91000))} do
{
	if (isNull g_interaction_target) exitWith
	{
		["Transfert annulé : Cible invalide."] call AlysiaClient_fnc_error;
		closeDialog 0;
	};
	if ((g_interaction_target getVariable ["trunk_in_use_ID", ""]) != (getPlayerUID player)) exitWith
	{
		["Transfert annulé : Vous êtes plusieurs à intéragir avec l'inventaire."] call AlysiaClient_fnc_error;
		closeDialog 0;
	};
	if (player getVariable ["restrained", false]) exitWith
	{
		["Transfert annulé : Vous êtes menotté."] call AlysiaClient_fnc_error;
		closeDialog 0;
	};
	if (player getVariable ["surrender", false]) exitWith
	{
		["Transfert annulé : Vous avez les mains sur la tête."] call AlysiaClient_fnc_error;
		closeDialog 0;
	};

	uiSleep 0.5;
};

if ((g_interaction_target getVariable ["trunk_in_use_ID", ""]) isEqualTo (getPlayerUID player)) then {
	g_interaction_target setVariable ["trunk_in_use_ID", "", true];
};

g_interaction_target setVariable [_variable_name, (g_interaction_target getVariable [_variable_name, []]), true];
