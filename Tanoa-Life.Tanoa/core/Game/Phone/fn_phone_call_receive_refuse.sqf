/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (missionNamespace getVariable ["calling_answer_tmp", false]) exitWith {};

missionNamespace setVariable ["calling_answer_tmp", true];
waitUntil {(time >= (missionNamespace getVariable ["message_sound_end_time", 0]))};

missionNamespace setVariable ['calling_answer', false];
missionNamespace setVariable ["calling_answer_tmp", false];
