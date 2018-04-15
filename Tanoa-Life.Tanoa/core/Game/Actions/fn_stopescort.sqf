/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_escorter", "_escorting", "_action"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_action = [_this, 1, true, [true]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};

if (_action) then
{
	g_action_inUse = true;
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil {((animationState player) isEqualTo "ainvpercmstpsnonwnondnon_putdown_amovpercmstpsnonwnondnon")};
	g_action_inUse = false;
};

_escorter = _target getVariable ["escorted", objNull];
if (!(isNull _escorter)) exitWith
{
	detach _target;
	_escorter setVariable ["escorting", objNull, true];
	_target setVariable ["escorted", objNull, true];
};

_escorting = _target getVariable ["escorting", objNull];
if (!(isNull _escorting)) exitWith
{
	detach _escorting;
	_escorting setVariable ["escorted", objNull, true];
	_target setVariable ["escorting", objNull, true];
};
