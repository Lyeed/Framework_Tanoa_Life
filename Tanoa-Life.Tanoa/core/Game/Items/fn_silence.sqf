/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (missionNamespace getVariable ["silence", false]) then
{
	1 fadeSound 1;
	missionNamespace setVariable ["silence", false];
} else {
	1 fadeSound 0.2;
	missionNamespace setVariable ["silence", true];
};

true;
