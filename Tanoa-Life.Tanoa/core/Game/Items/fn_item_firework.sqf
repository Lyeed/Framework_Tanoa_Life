/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if ((vehicle player) != player) exitWith {
	["Vous devez être à pied pour utiliser cet objet."] call AlysiaClient_fnc_error;
};

if ([false, "firework", 1] call AlysiaClient_fnc_handleInv) then {
	[getPos player, 'random','random'] remoteExec ["AlysiaServer_fnc_fireworks", 2];
} else {
	["Impossible de récupérer l'objet de votre inventaire."] call AlysiaClient_fnc_error;
};
