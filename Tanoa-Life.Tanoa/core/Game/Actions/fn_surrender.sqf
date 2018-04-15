/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if ((vehicle player) isEqualTo player) then
{
	if (count(attachedObjects player) isEqualTo 0) then
	{
		if (player getVariable ["surrender", false]) then {
			player setVariable ["surrender", false, true];
		} else {
			player setVariable ["surrender", true, true];
			player playActionNow "Surrender";
			[] spawn
			{
				while {(player getVariable ["surrender", false])} do
				{
					player playActionNow "Surrender";
					uiSleep 0.8;
				};
				[player, "amovpercmstpssurwnondnon_amovpercmstpsnonwnondnon"] remoteExecCall ["switchMove", -2];
				player playMove "amovpercmstpssurwnondnon_amovpercmstpsnonwnondnon";
			};
		};
	} else {
		["Vous ne pouvez pas mettre les mains sur la tête alors que vous trainez quelqu'un."] call AlysiaClient_fnc_info;
	};
};

true;
