/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if ((_target getVariable ["surrender", false]) || (_target getVariable ["restrained", false]) || (_target getVariable ["is_coma", false])) then {
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
} else {
	["Vous avez <t color='#FF8000'>demandé</t> à la personne de vous montrer son porte-feuille."] call AlysiaClient_fnc_info;
};

[player] remoteExec ["AlysiaClient_fnc_wallet_propose", _target];
