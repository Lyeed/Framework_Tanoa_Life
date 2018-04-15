/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (missionNamespace getVariable ["calling_answer_tmp", false]) exitWith {};

missionNamespace setVariable ["calling_answer_tmp", true];
waitUntil {(time >= (missionNamespace getVariable ["message_sound_end_time", 0]))};

if (call AlysiaClient_fnc_hasPhone) then
{
	missionNamespace setVariable ['calling_answer', true];
};

missionNamespace setVariable ["calling_answer_tmp", false];
