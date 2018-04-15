/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};
if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if ((_target getVariable ["surrender", false]) || (_target getVariable ["restrained", false])) then
{
	if (["mgsr_headbag", false] call AlysiaClient_fnc_handleItem) then
	{
		g_action_inUse = true;
		player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		waitUntil {((animationState player) isEqualTo "ainvpercmstpsnonwnondnon_putdown_amovpercmstpsnonwnondnon")};
		[] remoteExec ["AlysiaClient_fnc_headbag_put_target", _target];
		g_action_inUse = false;
	} else {
		["Vous n'avez pas de cagoule."] call AlysiaClient_fnc_info;
	};
} else {
	["La cible doit être menottée ou avoir les mains sur ma tête."] call AlysiaClient_fnc_info;
};
