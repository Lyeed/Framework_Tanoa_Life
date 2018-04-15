/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_from", "_hide", "_oldfreq", "_freq", "_handle", "_time", "_sound", "_sleep", "_config", "_duration", "_phone", "_c_channel"];
_from = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_freq = [_this, 1, "", [""]] call BIS_fnc_param;
_hide = [_this, 2, false, [false]] call BIS_fnc_param;

if (!hasInterface) exitWith {};
if (isNull _from) exitWith {};
if ((_from getVariable "number") in g_phone_blacklist) exitWith {};

if ((missionNamespace getVariable ["calling", false]) || ((missionNamespace getVariable ["calling_number", ""]) != "") || !g_is_alive) exitWith
{
	g_phone_call_history pushBack
	[
		0,
		if (_hide) then {"Inconnu"} else {_from getVariable "number"},
		false
	];
};

missionNamespace setVariable ["calling_answer", nil];
missionNamespace setVariable ["calling_number", (_from getVariable "number")];
missionNamespace setVariable ["calling_hide", _hide];

_time = 0;
_sound = profileNamespace getVariable ["ALYSIA_phone_call_ring", ""];
if (_sound isEqualTo "") then
{
	_sleep = 3.5;
	_duration = 2.6;
} else {
	_config = missionConfigFile >> "ALYSIA_PHONE" >> "CALL" >> "sounds" >> _sound;
	if (isClass(_config)) then
	{
		_sleep = getNumber(_config >> "sleep");
		_duration = getNumber(_config >> "duration");
	} else {
		profileNamespace setVariable ["ALYSIA_phone_call_ring", ""];
		_sleep = 3.5;
		_duration = 2.6;
	};
};

while {((isNil {(missionNamespace getVariable "calling_answer")}) && g_is_alive && ((missionNamespace getVariable ["calling_number", ""]) isEqualTo (_from getVariable "number")))} do
{
	if ([] call AlysiaClient_fnc_hasPhone) then
	{
		if ((_time >= _sleep) || (_time isEqualTo 0)) then
		{
			if (_sound isEqualTo "") then {
				playSound "message_rcv_silent";
			} else {
				[player, _sound, getNumber(_config >> "distance")] call AlysiaClient_fnc_globalSay3d;
			};
			missionNamespace setVariable ["message_sound_end_time", (time + _duration)];
			_time = 0;
		};
	};

	uiSleep 0.1;
	_time = _time + 0.1;
};

if (!(missionNamespace getVariable ["calling_answer", false])) exitWith
{
	missionNamespace setVariable ["calling_number", ""];
	missionNamespace setVariable ["calling_answer", nil];
	if (g_app in ["PHONE_CALLRECEIVING", "MAIN"]) then
	{
		["MAIN"] spawn AlysiaClient_fnc_tabletApp;
	};
};

if (TF_tangent_sw_pressed) then {
	call TFAR_fnc_onSwTangentReleased;
};

_phone = call TFAR_fnc_activeSwRadio;
_c_channel = (_phone call TFAR_fnc_getSwChannel) + 1;

missionNamespace setVariable ["calling", true];
missionNamespace setVariable ["calling_time", 0];
missionNamespace setVariable ["calling_freq_old", ([_phone, _c_channel] call TFAR_fnc_GetChannelFrequency)];
missionNamespace setVariable ["calling_freq", _freq];
missionNamespace setVariable ["calling_target", _from];
g_phone_call_history pushBack [0, if (_hide) then {"Inconnu"} else {_from getVariable "number"}, true];

[_phone, _c_channel, _freq] call TFAR_fnc_SetChannelFrequency;

_handle = ["PHONE_CALLING"] spawn AlysiaClient_fnc_tabletApp;
waitUntil {scriptDone _handle};

[player, _freq] remoteExecCall ["AlysiaClient_fnc_phone_call_etablish", _from];

[] spawn AlysiaClient_fnc_phone_call_loop;
