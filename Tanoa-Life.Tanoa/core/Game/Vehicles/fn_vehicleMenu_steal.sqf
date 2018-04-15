/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if ((isNull _target) || (!(_target isKindOf "Car") && !(_target isKindOf "Ship") && !(_target isKindOf "Air"))) exitWith {
	["Cible invalde."] call AlysiaClient_fnc_error;
};
if (!("Alysia_Lockpick" in (magazines player))) exitWith {
	["Vous n'avez pas de kit de crochetage."] call AlysiaClient_fnc_error;
};
if (serverTime < 600) exitWith {
	[format["Vous <t color='#FF0000'>ne pouvez pas</t> crocheter de véhicule juste après le démarrage du serveur. Veuillez attendre <t color='#2E64FE'>%1 secondes</t>", 600 - serverTime]] call AlysiaClient_fnc_error;
};
if (_target in g_vehicles) exitWith {
	["Vous possédez déjà les clefs de ce véhicule."] call AlysiaClient_fnc_error;
};
if (getNumber(missionConfigFile >> "ALYSIA_VEHICLES" >> typeOf(_target) >> "disableLockpick") isEqualTo 1) exitWith {
	["Ce type de véhicule ne peut pas être crocheté."] call AlysiaClient_fnc_error;
};

if (!(["Crochetage de véhicule", 12, _target, "", "AinvPknlMstpsnonWnonDnon_medic_1"] call AlysiaClient_fnc_showProgress)) exitWith {};

if (!("Alysia_Lockpick" in (magazines player))) exitWith {
	["Vous n'avez pas de kit de crochetage."] call AlysiaClient_fnc_error;
};

player removeMagazine "Alysia_Lockpick";
[_target, "lockpick", 100] call AlysiaClient_fnc_globalSay3d;
if ((random(100)) < 25) then
{
	g_vehicles pushBack _target;
	[(getPlayerUID player), playerSide, _target] remoteExecCall ["AlysiaServer_fnc_keyManagement", 2];
	[format["Crochetage <t color='#3ADF00'>réussi</t> !<br/>Vous avez maintenant les clefs de <t color='#FE642E'>%1</t>.", getText(configFile >> "CfgVehicles" >> typeOf(_target) >> "displayName")]] call AlysiaClient_fnc_info;
} else {
	["Crochetage <t color='#FF0000'>raté</t> !"] call AlysiaClient_fnc_info;
};
