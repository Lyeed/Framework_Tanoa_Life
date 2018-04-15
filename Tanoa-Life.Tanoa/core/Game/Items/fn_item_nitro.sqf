/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if ((vehicle player) != player) exitWith {
	["Vous devez être à pied pour utiliser cet objet."] call AlysiaClient_fnc_error;
};
if ((isNull _target) || !(_target isKindOf "Car")) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if ((_target getVariable ["nitro", 0]) != 0) exitWith {
	["La cible a déjà un kit nitro installé."] call AlysiaClient_fnc_error;
};

if (["Fixation de l'injecteur nitro", 6, _target, "", "AinvPknlMstpsnonWnonDnon_medic_1"] call AlysiaClient_fnc_showProgress) then
{
	if ([false, "nitro", 1] call AlysiaClient_fnc_handleInv) then
	{
		_target setVariable ["nitro", 3, true];
		["Injecteur Nitro fixé au véhicule<br/>Vous disposez de <t color='#00FF40'>3 injections</t>."] call AlysiaClient_fnc_info;
	} else {
		["Impossible de récupérer l'objet de votre inventaire."] call AlysiaClient_fnc_error;
	};
};
