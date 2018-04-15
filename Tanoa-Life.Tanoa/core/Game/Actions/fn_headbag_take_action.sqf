/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if ((headgear _target) isEqualTo "mgsr_headbag") then
{
	if (["mgsr_headbag", true] call AlysiaClient_fnc_handleItem) then
	{
		player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		_target remoteExec ["removeHeadgear", _target];
	} else {
		["Vous n'avez pas assez de place dans votre inventaire."] call AlysiaClient_fnc_error;
	};
} else {
	["La cible n'est pas cagoulé."] call AlysiaClient_fnc_error;
};
