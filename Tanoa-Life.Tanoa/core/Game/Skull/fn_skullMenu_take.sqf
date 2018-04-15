/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_skull";
_skull = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _skull) exitWith {};

if (!(["Récupération", 10, _skull, "", "AinvPknlMstpsnonWnonDnon_medic_1"] call AlysiaClient_fnc_showProgress)) exitWith {};

deleteVehicle _skull;
