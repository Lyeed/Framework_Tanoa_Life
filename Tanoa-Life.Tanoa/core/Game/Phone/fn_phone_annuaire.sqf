/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (([_this, 0, 0, [0]] call BIS_fnc_param) isEqualTo 0) then
{
	["Vous n'apparaîtrez plus dans l'annuaire téléphonique."] call AlysiaClient_fnc_info;
	g_phone_annuaire = false;
} else {
	["Vous serez présent dans l'annuaire téléphonique très prochainement."] call AlysiaClient_fnc_info;
	g_phone_annuaire = true;
};
