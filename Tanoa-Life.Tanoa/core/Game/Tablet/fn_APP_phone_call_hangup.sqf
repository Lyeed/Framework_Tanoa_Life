/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_apply_busy_to_target", "_apply_end_to_target", "_apply_target"];
_apply_busy_to_target = [_this, 0, false, [false]] call BIS_fnc_param;
_apply_end_to_target = [_this, 1, false, [false]] call BIS_fnc_param;

_apply_target = missionNamespace getVariable ["calling_target", objNull];
if (!(isNull _apply_target)) then
{
	if (_apply_busy_to_target) then
	{
		[] remoteExecCall ["AlysiaClient_fnc_phone_call_busy", _apply_target];
	};

	if (_apply_end_to_target) then
	{
		[false, false] remoteExecCall ["AlysiaClient_fnc_APP_phone_call_hangup", _apply_target];
	};
};

if (missionNamespace getVariable ["calling", false]) then {
	missionNamespace setVariable ["calling", false];
};

if ((missionNamespace getVariable ["calling_number", ""]) != "") then {
	missionNamespace setVariable ["calling_number", ""];
};

if (g_app isEqualTo "MAIN") then {
	["MAIN"] spawn AlysiaClient_fnc_tabletApp;
};
