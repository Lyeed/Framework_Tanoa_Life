/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_info", "_owner"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

_info = _target getVariable "laboratory_info";
if (isNil "_info") exitWith {
	["La cible n'est pas un laboratoire."] call AlysiaClient_fnc_error;
};

if (_target getVariable ["inUse", false]) exitWith {
	["L'objet est déjà en cours d'utilisation."] call AlysiaClient_fnc_error;
};

_target setVariable ["inUse", true, true];

if (!(["Destruction", 10, _target, "", "AinvPknlMstpsnonWnonDnon_medic_1"] call AlysiaClient_fnc_showProgress)) exitWith {
	_target setVariable ["inUse", false, true];
};

if (((_info select 1) isEqualTo (getPlayerUID player)) && (g_laboratory isEqualTo _target)) then
{
	deleteMarkerLocal "laboratory";
	[_target] remoteExec ["AlysiaServer_fnc_laboratory_destroy", 2];
	["Vous avez détruit votre <t color='#FFBF00'>laboratoire</t>."] call AlysiaClient_fnc_info;
} else {
	if ([false, "destroy_labo", 1] call AlysiaClient_fnc_handleInv) then
	{
		_owner = [_info select 1] call AlysiaClient_fnc_getPlayerFromUID;
		if (!(isNull _owner)) then {[playerSide, (_info select 2)] remoteExecCall ["AlysiaClient_fnc_labo_update_destroy", _owner]};
		[_target] remoteExec ["AlysiaServer_fnc_laboratory_destroy", 2];
	} else {
		[format["Vous avez besoin de 1x <t color='#FFBF00'>%1</t>.", ["destroy_labo"] call AlysiaClient_fnc_itemGetName]] call AlysiaClient_fnc_error;
		_target setVariable ["inUse", false, true];
	};
};
