/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (isNull (uiNamespace getVariable ["tablet", displayNull])) exitWith {};

if ((call compile format["call g_%1Level", str(playerSide)]) >= getNumber(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "board" >> "leader_board" >> "access_rank")) then {
	[player] remoteExec ["AlysiaServer_fnc_factionMemberList", 2];
};
