/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if ((isNull _target) || !(isPlayer _target)) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (!(_target getVariable ["restrained", false])) exitWith {
	["La cible n'est pas menottée."] call AlysiaClient_fnc_error;
};
if (!("Alysia_Lockpick" in (magazines player))) exitWith {
	["Vous n'avez pas de kit de crochetage."] call AlysiaClient_fnc_error;
};

if (!(["Crochetage de menottes", 7, _target, "", "AinvPknlMstpsnonWnonDnon_medic_1"] call AlysiaClient_fnc_showProgress)) exitWith {};

if (!(_target getVariable ["restrained", false])) exitWith {
	["La cible n'est pas menottée."] call AlysiaClient_fnc_error;
};
if (!("Alysia_Lockpick" in (magazines player))) exitWith {
	["Vous n'avez pas de kit de crochetage."] call AlysiaClient_fnc_error;
};

player removeMagazine "Alysia_Lockpick";
if ((random(100)) < 35) then
{
	_target setVariable ["restrained", false, true];
	["Crochetage <t color='#3ADF00'>réussi</t> !<br/>La cible n'est maintenant plus menottée."] call AlysiaClient_fnc_info;
} else {
	["Crochetage <t color='#FF0000'>raté</t> !"] call AlysiaClient_fnc_info;
};
