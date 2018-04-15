/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

with missionNamespace do
{
	/******************************
	****** Backend Variables *****
	******************************/
	g_curWep_h = "";
	g_objPut = ObjNull;
	g_killer = ObjNull;
	g_dog = objNull;
	/* ===================[inUse/delay variables]======================= */
	g_action_delay = time;
	g_action_inUse = false;
	g_interrupted = false;
	g_is_alive = false;
	g_connected = false;
	g_yielding = false;
	g_speaking = false;
	g_seatbelt = false;
	g_garage_store = false;
	g_vehicle_preview = false;
	/* ===================[roleplay info]======================= */
	g_firstName = "";
	g_lastName = "";
	g_birth = [];
	g_nationality = "";
	g_sexe = "";
	/* ===================[Staff]==========================*/
	g_staff_on = false;
	g_staff_god = false;
	g_staff_markers = false;
	g_staff_spec = false;
	/* ===================[Tablet]==========================*/
	g_apps = [];
	g_app = "";
	/* ===================[Phone]======================= */
	g_phone_contacts = [];
	g_phone_messages = [];
	g_phone_forfait = "none";
	g_phone_blacklist = [];
	g_phone_annuaire = false;
	g_phone_call_history = [];
	/* ===================[First Person View]======================= */
	g_firstCombatActive = false;
	/* ===================[Weight system]======================= */
	g_maxWeight = 24;
	g_carryWeight = 0;
	/* ===================[Money]======================= */
	g_cash = 0;
	g_atm = 0;
	g_atm_from = [];
	/* ===================[Levels]======================= */
	g_WESTLevel = 0;
	g_EASTLevel = 0;
	g_GUERLevel = 0;
	g_CIVLevel = 0;
	/* ===================[Prison]======================= */
	g_arrest_Prison = objNull;
	g_arrest_Cellule = "";
	g_arrest_Time = 0;
	g_arrest_Caution = 0;
	g_arrest_Reason = "";
	g_arrest_Gear = [];
	g_arrest_Escape = false;
	/* ==================[Health/body system]==================== */
	g_hurt_effect = ppEffectCreate ["ColorCorrections", 9999];
	g_hurt_effect ppEffectEnable true;
	g_hurt_effect ppEffectForceInNVG true;
	g_thirst = 100;
	g_hunger = 100;
	g_blood = 4000;
	g_damage_history = [];
	g_bleed = 0;
	g_alcool = 0;
	g_morphine = 0;
	g_adrenaline = 0;
	g_regen_active = false;
	g_deseases = [];
	g_medecine = [];
	g_vaccins = [];
	/* =================[Dynamic Markers]=================== */
	g_dynamic_markers = [];
	/* =================[Plants]=================== */
	g_plants = [];
	{
		g_plants pushBack (configName _x);
	} forEach ("true" configClasses (missionConfigFile >> "ALYSIA_FARMING_PLANT_OBJETCS"));
	g_plants = compileFinal str(g_plants);
};
