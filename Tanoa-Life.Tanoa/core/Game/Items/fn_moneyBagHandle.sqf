/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_obj", "_action_1"];
_obj = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (!(isNull _obj) && !(isNull(attachedTo _obj))) exitWith {
	["Quelqu'un porte déjà ce sac."] call AlysiaClient_fnc_error;
};

if ((currentWeapon player) != "") exitWith {
	["Vous ne devez pas avoir d'arme en main pour pouvoir récupérer la valise."] call AlysiaClient_fnc_error;
};

if (isNull _obj) then {
	_obj = "Land_Suitcase_F" createVehicle (getPos player);
};

_obj attachTo [player, [-0.03, -0.05, -0.25], "rightHandMiddle1"];
_obj setDir 90;
player setVariable ["wallet_obj", _obj];

_action_1 = player addAction [format["Déposer <t color='#FFFF33'>%1</t>", ["money_transfer"] call AlysiaClient_fnc_itemGetName],
{
	if (!g_action_inUse && !(isNull (player getVariable ["wallet_obj", objNull]))) then
	{
		detach (player getVariable ["wallet_obj", objNull]);
		(player getVariable ["wallet_obj", objNull]) setVariable ["money_bank", true, true];
		player setVariable ["wallet_obj", objNull];
	};
}, "", 9999992, true, true, "",'!(isNull (player getVariable ["wallet_obj", objNull]))'];

while {!(isNull _obj) && !(isNull (attachedTo _obj))} do
{
	if (
			(player getVariable ["is_coma", false]) ||
			(player getVariable ["restrained", false]) ||
			(player getVariable ["surrender", false]) ||
			((currentWeapon player) != "")
	) exitWith {detach _obj};
	uiSleep 0.5;
};

player removeAction _action_1;
