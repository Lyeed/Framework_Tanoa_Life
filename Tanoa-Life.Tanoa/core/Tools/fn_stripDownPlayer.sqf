/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if ((hmd player) != "") then
{
	player unlinkItem (hmd player);
};

{
	player unassignItem _x;
} foreach (assignedItems player);

removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
RemoveAllWeapons player;

{
    missionNamespace setVariable [format["inv_%1", (_x select 0)], 0];
} forEach ([] call AlysiaClient_fnc_getInv);
