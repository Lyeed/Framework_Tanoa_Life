/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

[
	[_this, 0, objNull, [objNull]] call BIS_fnc_param,
	"player_to_player_coma",
	[
		[
			"wallet",
			"Porte-feuille",
			"[g_interaction_target] spawn AlysiaClient_fnc_wallet_try;",
			"
				(
					(isNull (attachedTo g_interaction_target))
				) && (
					(
						getText(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(side g_interaction_target) >> 'identity_item') isEqualTo ''
					) || (
						getText(missionConfigFile >> 'ALYSIA_FACTIONS' >> str(side g_interaction_target) >> 'identity_item') in (magazines g_interaction_target)
					)
				)
			"
		],[
			"kill",
			"Achever",
			"[g_interaction_target] spawn AlysiaClient_fnc_item_knife_use;",
			"
				('SkylineItems_Couteau' in (magazines player)) &&
				!(g_interaction_target getVariable ['transporting',false]) &&
				!(g_interaction_target getVariable ['heart_attack',false]) &&
				(isNull (attachedTo g_interaction_target))
			"
		],[
			"massage",
			"Stabiliser",
			"[g_interaction_target, 'main'] spawn AlysiaClient_fnc_action_stabilize;",
			"
				!(g_interaction_target getVariable ['bed_awake', false]) &&
				!(g_interaction_target getVariable ['transporting',false]) &&
				!(g_interaction_target getVariable ['heart_attack',false]) &&
				(isNull (attachedTo g_interaction_target))
			"
		],[
			"bandage",
			"Bandage",
			"[nil,nil,nil,g_interaction_target] spawn AlysiaClient_fnc_item_bandage_use;",
			"
				(g_interaction_target getVariable ['is_bleeding', false]) &&
				('SkylineItems_Bandage' in (magazines player))
			"
		],[
			"defib",
			"Defib.",
			"[g_interaction_target, 'defib'] spawn AlysiaClient_fnc_action_stabilize;",
			"
				('SkylineItems_Defibrilateur' in (magazines player)) &&
				!(g_interaction_target getVariable ['bed_awake', false]) &&
				!(g_interaction_target getVariable ['transporting',false]) &&
				(isNull (attachedTo g_interaction_target))
			"
		],[
			"morphine",
			"Morphine",
			"[nil,nil,nil,g_interaction_target] spawn AlysiaClient_fnc_item_morphine_use;",
			"
				('SkylineItems_Morphine' in (magazines player)) &&
				!(g_interaction_target getVariable ['bed_awake', false]) &&
				!(g_interaction_target getVariable ['transporting',false]) &&
				(isNull (attachedTo g_interaction_target))
			"
		],[
			"adrenaline",
			"Adrenaline",
			"[nil,nil,nil,g_interaction_target] spawn AlysiaClient_fnc_item_adrenaline_use;",
			"
				('SkylineItems_Adrenaline' in (magazines player)) &&
				!(g_interaction_target getVariable ['bed_awake', false]) &&
				!(g_interaction_target getVariable ['transporting',false]) &&
				(isNull (attachedTo g_interaction_target))
			"
		],[
			"drag",
			"Trainer",
			"[g_interaction_target] call AlysiaClient_fnc_action_body_drag;",
			"
				!(g_interaction_target getVariable ['transporting',false]) &&
				!(g_interaction_target getVariable ['bed_awake', false]) &&
				(isNull (attachedTo g_interaction_target))
			"
		],[
			"bed",
			"Brancard",
			"[g_interaction_target, ['Alysia_Medical_Brancard_01_F']] spawn AlysiaClient_fnc_action_bed;",
			"
				(count(nearestObjects [getPosATL g_interaction_target, ['Alysia_Medical_Brancard_01_F'], 2.5]) > 0) &&
				(isNull (attachedTo g_interaction_target))
			"
		],[
			"bed",
			"Table",
			"[g_interaction_target, ['HospitalTable_F','HealTable_F']] spawn AlysiaClient_fnc_action_bed;",
			"
				(count(nearestObjects [getPosATL g_interaction_target, ['HospitalTable_F','HealTable_F'], 2.5]) > 0) &&
				(isNull (attachedTo g_interaction_target))
			"
		],[
			"bed",
			"Lit",
			"[g_interaction_target, ['Alysia_Medical_Lit_01_F']] spawn AlysiaClient_fnc_action_bed;",
			"
				(count(nearestObjects [getPosATL g_interaction_target, ['Alysia_Medical_Lit_01_F'], 2.5]) > 0) &&
				(isNull (attachedTo g_interaction_target))
			"
		],[
			"bed",
			"Sortir",
			"
				detach g_interaction_target;
				if (g_interaction_target getVariable ['bed_awake', false]) then
				{
					g_interaction_target setVariable ['bed_awake', false, true];
				};
			",
			"
				(typeOf(attachedTo g_interaction_target) in ['HospitalTable_F','HealTable_F','Alysia_Medical_Lit_01_F','Alysia_Medical_Brancard_01_F'])
			"
		],[
			"operation",
			"Opération",
			"[g_interaction_target] spawn AlysiaClient_fnc_action_operation;",
			"
				(typeOf(attachedTo g_interaction_target) in ['HospitalTable_F','HealTable_F']) &&
				(g_interaction_target getVariable ['bullet_check',false]) &&
				!(g_interaction_target getVariable ['bullet_operation_inUse', false]) &&
				!(g_interaction_target getVariable ['heart_attack', false])
			"
		]
	],
	"Blessé",
	nil,
	true,
	false
] spawn AlysiaClient_fnc_interactions_create;
