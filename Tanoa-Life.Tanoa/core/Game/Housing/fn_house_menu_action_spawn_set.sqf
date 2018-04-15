/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if ((g_houses find _target) isEqualTo -1) exitWith {
	["Vous n'avez pas les clefs de cette maison."] call AlysiaClient_fnc_error;
};

if (!isClass(missionConfigFile >> 'ALYSIA_HOUSES' >> typeof(_target) >> "house")) exitWith {
	["Vous ne pouvez pas réapparaitre dans cette maison."] call AlysiaClient_fnc_error;
};

if (((_target getVariable ["house_owner", ["", ""]]) select 0) != (getPlayerUID player)) exitWith {
	["Vous n'êtes pas propriétaire dans cette maison."] call AlysiaClient_fnc_error;
};

g_respawn_point = _target;
profileNamespace setVariable ["ALYSIA_house_spawn_info", [typeOf(_target), getPosATL _target]];
[format["Vous réapparaitrez dans votre bâtisse en <t color='#3ADF00'>%1</t>.", mapGridPosition _target]] call AlysiaClient_fnc_info;
