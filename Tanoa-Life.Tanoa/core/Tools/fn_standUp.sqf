/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (player getVariable ["sit", false]) then
{
	[player, ""] remoteExecCall ["switchMove", -2];
	player setVariable ["sit", false];
	player setVariable ["sit_obj", objNull];
};
