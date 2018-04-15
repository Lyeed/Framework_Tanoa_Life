/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

[true, ([_this, 1, 0, [0]] call BIS_fnc_param)] call AlysiaClient_fnc_handleCash;

{
	[true, (_x select 0), (_x select 1)] call AlysiaClient_fnc_handleInv;
} forEach ([_this, 0, [], [[]]] call BIS_fnc_param);

["L'échange a été <t color='#DF0101'>refusé</t>."] call AlysiaClient_fnc_info;
