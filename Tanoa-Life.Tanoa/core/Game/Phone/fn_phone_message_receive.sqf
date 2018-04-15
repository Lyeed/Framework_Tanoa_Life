/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_msg", "_from", "_hide"];
_msg = [_this, 0, "", [""]] call BIS_fnc_param;
_from = [_this, 1, "", [""]] call BIS_fnc_param;
_hide = [_this, 2, false, [false]] call BIS_fnc_param;

if ((_msg isEqualTo "") || (_from isEqualTo "")) exitWith {};
if (!g_connected) exitWith {};
if (((player getVariable ["number", ""])) isEqualTo "") exitWith {};
if (_from in g_phone_blacklist) exitWith {};

if ((count g_phone_messages) >= getNumber(missionConfigFile >> "ALYSIA_PHONE" >> "FORFAITS" >> g_phone_forfait >> "sms_max")) then {
	g_phone_messages deleteAt 0;
};

if (_hide) then {
	_from = "Numéro masqué";
};

g_phone_messages pushBack [_from, (format["Le %1 à %2", ([] call AlysiaClient_fnc_strDate), ([] call AlysiaClient_fnc_strTime)]), 0, _msg];
if (g_is_alive) then
{
	if ([] call AlysiaClient_fnc_hasPhone) then
	{
		_sound = profileNamespace getVariable ["ALYSIA_phone_sms_ring", ""];
		if (_sound isEqualTo "") then {
			playSound "message_rcv_silent";
		} else {
			_config = missionConfigFile >> "ALYSIA_PHONE" >> "SMS" >> "sounds" >> _sound;
			if (isClass(_config)) then {
				[player, _sound, getNumber(_config >> "distance")] call AlysiaClient_fnc_globalSay3d;
			} else {
				profileNamespace setVariable ["ALYSIA_phone_sms_ring", ""];
			};
		};
	};
};
