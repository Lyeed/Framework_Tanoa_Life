/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_msg", "_from", "_to", "_hide", "_messages"];
_msg = [_this, 0, "", [""]] call BIS_fnc_param;
_from = [_this, 1, "", [""]] call BIS_fnc_param;
_to = [_this, 2, "", [""]] call BIS_fnc_param;
_hide = [_this, 3, false, [false]] call BIS_fnc_param;

if ((_msg isEqualTo "") || (_from isEqualTo "") || (_to isEqualTo "")) exitWith {};

_messages = missionNamespace getVariable [format["SERVER_MESSAGES_%1", _to], []];
_messages pushBack [[_from, (format["Le %1 à %2", ([] call AlysiaClient_fnc_strDate), ([] call AlysiaClient_fnc_strTime)]), 0, _msg], _hide];
missionNamespace setVariable [format["SERVER_MESSAGES_%1", _to], _messages];

if ((gServer_phone_messages_buffer find _to) isEqualTo -1) then {
	gServer_phone_messages_buffer pushBack _to;
};
