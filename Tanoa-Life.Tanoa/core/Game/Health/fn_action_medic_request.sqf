/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if (player getVariable ["medic_request", false]) exitWith {};

if (player getVariable ["is_coma", false]) then
{
	ctrlShow[356, false];
	ctrlShow[357, false];
	player setVariable ["medic_request", true, true];
	player setVariable ["medic_request_time", time + (10 * 60), false];
	[format["Nouvelle demande de soin en <t color='#01DF01'>%1</t>.", (mapGridPosition player)], "CENTRAL", false] remoteExecCall ["AlysiaClient_fnc_phone_message_receive", independent];
};
