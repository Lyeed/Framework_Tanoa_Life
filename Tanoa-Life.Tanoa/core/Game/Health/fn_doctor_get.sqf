/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_from", "_action"];
_from = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _from) exitWith {};

if ((player getVariable ["restrained", false]) || (player getVariable ["surrender", false])) then
{
	_action = true;
	["Vous avez <t color='#3ADF00'>accepté</t> l'examen médical car vous êtes menotté ou avez les mains sur la tête."] remoteExecCall ["AlysiaClient_fnc_info", _from];
} else {
	_action =
	[
		"Quelqu'un souhaite vous examiner pour établir un <t color='#01DF01'>diagnostic médical</t>.<br/>Acceptez-vous ?",
		"Diagnostic médical",
		"Valider",
		"Annuler"
	] call BIS_fnc_guiMessage;
};

if (_action) then {
	[g_medecine, g_deseases, player] remoteExec ["AlysiaClient_fnc_doctor_return", _from];
} else {
	["La cible a <t color='#FF0000'>refusé</t> de se laisser examiner."] remoteExecCall ["AlysiaClient_fnc_info", _from];
};
