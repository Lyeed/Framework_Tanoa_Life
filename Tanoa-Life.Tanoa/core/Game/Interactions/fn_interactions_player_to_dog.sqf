/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {};

[
	_target,
	"player_to_dog",
	[
		[
			"stop",
			"Caresser",
			"[g_dog,'dog_one',30] call AlysiaClient_fnc_globalSay3d;g_dog setDir ([g_dog, player] call BIS_fnc_DirTo);",
			"
				!(g_dog getVariable ['follow', false]) &&
				!(g_dog getVariable ['search', false])
			"
		],[
			"hire",
			"Renvoyer",
			"[] call AlysiaClient_fnc_dog_hire;",
			"
				(g_dog isEqualTo g_interaction_target)
			"
		],[
			"search",
			"Chercher",
			"[] spawn AlysiaClient_fnc_dog_search;",
			"
				(g_dog isEqualTo g_interaction_target) &&
				!(g_dog getVariable ['search', false])
			"
		],[
			"stop",
			"Assis-toi",
			"[] call AlysiaClient_fnc_dog_stop;",
			"
				(g_dog isEqualTo g_interaction_target) &&
				(
					(g_dog getVariable ['follow',false]) ||
					(g_dog getVariable ['search', false])
				)
			"
		],[
			"follow",
			"Suis-moi",
			"[] call AlysiaClient_fnc_dog_follow;",
			"
				(g_dog isEqualTo g_interaction_target) &&
				!(g_dog getVariable ['follow', false])
			"
		]
	],
	"Chien",
	"Alysia_Client_Texture\Data\interactions\background.jpg",
	true,
	false,
	true
] spawn AlysiaClient_fnc_interactions_create;
