class CfgFunctions
{
	class Events
	{
		tag="AlysiaEvent";
		class Events_functions
		{
			file="core\EventHandlers";
			class actionKeyHandler {};
			class onPlayerESC {};
			class onPlayerFireNear {};
			class onPlayerHandleDamage {};
			class onPlayerInventoryOpen {};
			class onPlayerKeyPress {};
			class onPlayerMapOpen {};
			class onPlayerSpeak {};
			class onPlayerSpeakRadio {};
			class onPlayerReload {};
		};
	};

	class MySQL
	{
		tag="AlysiaDB";
		class Functions
		{
			file="core\MySQL";
			class query_select_receive {};
			class query_update_disconnect {};
			class query_update_partial {};
			class query_update_usual {};
		};
	};

	class Public
	{
		tag="AlysiaClient";

		class Init
		{
			file="core\Inits";
			class init_loops {};
			class init_data {};
			class init_position {};
			class init_actions {};
			class init_buildings {};
			class init_loadout {};
			class init_variables {};
			class init_eventHandlers {};
			class init_keys {};
			class init_hud {};
			class preInit {
				preInit=1;
			};
		};

		class Border
		{
			file="core\Game\Border";
			class border_south_sounds {};
			class border_south_speaker_destroy {};
			class border_south_speaker_repair {};
			class border_south_missile_effects {};
			class border_south_missile_launch {};
		};

		class Dog
		{
			file="core\Game\Dog";
			class dog_get {};
			class dog_search {};
			class dog_follow {};
			class dog_stop {};
			class dog_hire {};
		};

		class VirtualInventory
		{
			file="core\Game\VirtualInventory";
			class virtual_menu_exhange_open {};
			class virtual_menu_exhange_update_lists {};
			class virtual_menu_exhange_update_player {};
			class virtual_menu_exhange_update_target {};
			class virtual_menu_exhange_store {};
			class virtual_menu_exhange_take {};
			class virtual_menu_update_list {};
			class virtual_menu_update_buttons {};
			class virtual_menu_reduce_open {};
			class virtual_menu_reduce_update {};
			class virtual_menu_reduce_action {};
		};

		class Fireworks
		{
			file="core\Game\Fireworks";
			class fireworks_effects {};
		};

		class Companies
		{
			file="core\Game\Companies";
			class company_create_open {};
			class company_create_action {};
			class company_create_update {};
			class company_construction_build {};
			class company_info_open {};
			class company_member_handle {};
			class company_member_join {};
			class company_member_propose {};
			class company_member_kick {};
			class company_member_data {};
			class company_member_invite {};
			class company_member_leave {};
			class company_member_promote {};
			class company_member_license_give {};
			class company_member_license_receive {};
			class company_storage {};
			class company_process {};
			class company_launder_open {};
			class company_launder_action {};
			class company_bank_history_open {};
			class company_destroy {};
			class company_garage {};
			class company_link_percentage_change {};
		};

		class Tools
		{
			file="core\Tools";
			class SmokingEffect {};
			class market_getPrice {};
			class temporyInventory_update {};
			class temporyInventory_reset {};
			class fixClothing {};
			class nearFourriere {};
			class globalSay3d {};
			class nearestDoor {};
			class powerRemove {};
			class velocity {};
			class hasPhone {};
			class getAllHitPointsDamage {};
			class getVehicleWeightMax {};
			class transfertVirtualItem {};
			class hideAllMarkers {};
			class showAllMarkers {};
			class sitDown {};
			class standUp {};
			class handleTrunk {};
			class itemTrunk {};
			class setHitPointDamage {};
			class hasLicense {};
			class lightOn {};
			class lightBug {};
			class weightGenerate {};
			class strToSide {};
			class errorExit {};
			class getInv {};
			class calWeightDiff {};
			class createMarker {};
			class endGame {};
			class error {};
			class fetchcfgDetails {};
			class fetchVehInfo {};
			class fillUpWithInv {};
			class getGear {};
			class getPlayerFromUID {};
			class handleInv {};
			class holdsterSwitch {};
			class index {};
			class info {};
			class isNumber {};
			class loadGear {};
			class numberText {};
			class seizeObjects {};
			class showProgress {};
			class stripDownPlayer {};
			class TextAllowed {};
			class strDate {};
			class strTime {};
			class age {};
			class getLicenses {};
			class getVehVirtual {};
			class licenseGetName {};
			class licenseGetPrice {};
			class rankToStr {};
			class sideToStr {};
			class itemCount {};
			class itemGetImage {};
			class itemGetName {};
			class itemGetBuyPrice {};
			class itemGetSellPrice {};
			class itemGetWeight {};
			class vehiclePreview {};
		};

		class Items
		{
			file="core\Game\Items";
			class moneyBag {};
			class moneyBagHandle {};
			class sifflet {};
			class handleItem {};
			class removeItem {};
			class silence {};
			class useItem {};
			class item_nitro {};
			class item_serrure {};
			class item_perquisition {};
			class item_patron {};
			class item_firework {};
		};

		class Laboratories
		{
			file="core\Game\Laboratories";
			class labo_deploy {};
			class labo_destroy {};
			class labo_process {};
			class labo_update_destroy {};
			class labo_update_build {};
			class labo_sabotage {};
			class labo_build {};
		};

		class Shops
		{
			file="core\Game\Shops";
			class steal_vehicle_open {};
			class steal_vehicle_update {};
			class steal_vehicle_action {};
			class shop_clothing_update_list {};
			class shop_clothing_open {};
			class shop_clothing_buy {};
			class shop_clothing_update_clothe {};
			class shop_vehicles_open {};
			class shop_vehicles_buy {};
			class shop_vehicles_update {};
			class shop_vehicles_preview {};
			class shop_virtual_open {};
			class shop_virtual_update_mod {};
			class shop_virtual_update_list {};
			class shop_virtual_update_list_info {};
			class shop_virtual_update_basket {};
			class shop_virtual_add {};
			class shop_virtual_buysell {};
			class shop_virtual_remove {};
			class shop_arma_open {};
			class shop_arma_update {};
			class shop_arma_buy {};
			class shop_dynamicMarkers_open {};
			class shop_dynamicMarkers_update_list {};
			class shop_dynamicMarkers_update_info {};
			class shop_dynamicMarkers_buy {};
			class shop_mission_buy {};
			class shop_mission_update {};
			class shop_mission_open {};
			class shop_mission_prevent {};
		};

		class Skull
		{
			file="core\Game\Skull";
			class skullMenu_search_open {};
			class skullMenu_search_update {};
			class skullMenu_search_take {};
			class skullMenu_take {};
			class skullMenu_who {};
			class skull_create {};
		};

		class dynamicMarkers
		{
			file="core\Game\dynamicMarkers";
			class dynamicMarkers_destroy {};
			class dynamicMarkers_update {};
			class dynamicMarkers_reveal {};
		};

		class dynamicObjects
		{
			file="core\Game\dynamicObjects";
			class dynamicObject_packup {};
			class dynamicObject_deploy {};
			class dynamicObject_escort {};
		};

		class Garage
		{
			file="core\Game\Garage";
			class garageGet {};
			class garageOpen {};
			class garageTypeSelect {};
			class garageVehicleAssure {};
			class garageVehicleFind {};
			class garageVehicleGet {};
			class garageVehicleImport {};
			class garageVehicleRefuel {};
			class garageVehicleRename {};
			class garageVehicleSelect {};
			class garageVehicleSell {};
			class garageStoreOpen {};
			class garageStoreUpdate {};
			class garageStoreAction {};
		};

		class Vehicles
		{
			file="core\Game\Vehicles";
			class clearVehicleAmmo {};
			class activateNitro {};
			class vehicleMenu_plate {};
			class vehicleMenu_flip {};
			class vehicleMenu_key {};
			class vehicleMenu_owner {};
			class vehicleMenu_refuel_open {};
			class vehicleMenu_refuel_action {};
			class vehicleMenu_repair_action {};
			class vehicleMenu_repair_fill {};
			class vehicleMenu_repair_open {};
			class vehicleMenu_repair_update {};
			class vehicleMenu_repair_getColor {};
			class vehicleMenu_steal {};
			class vehicleMenu_impound {};
			class vehicleMenu_pullout {};
			class vehicleMenu_siphon {};
			class vehicleMenu_farm_gather {};
			class vehicleMenu_farm_plant {};
			class vehicleMenu_farm_fish {};
			class vehicleMenu_dog {};
			class vehicleMenu_money_bag_take {};
			class vehicleMenu_money_bag_deposit {};
			class vehicleMenu_bomb {};
			class vehicleMenu_speaker {};
			class vehicleMenu_push {};
			class handleFuel {};
		};

		class Drill
		{
			file="core\Game\Drill";
			class drill_create {};
			class drill_activate {};
			class drill_desactivate {};
			class drill_take {};
		};
		
		class C4
		{
			file="core\Game\C4";
			class c4_open {};
			class c4_update {};
			class c4_timer {};
			class c4_activate {};
		};

		class FuelStations
		{
			file="core\Game\FuelStations";
			class fuelStation_refuel_open {};
			class fuelStation_refuel_update {};
			class fuelStation_refuel_action_vehicle {};
			class fuelStation_refuel_action_stock {};
			class fuelStation_refuel_progress {};
			class fuelStation_refuel_payment_track {};
			class fuelStation_stock_progress {};
			class fuelStation_jerrycan_open {};
			class fuelStation_jerrycan_action {};
			class fuelStation_fuel_getPrice {};
			class fuelStation_fuel_getStock {};
			class fuelStation_fuel_handle {};
			class fuelStation_refuel_pay {};
		};

		class Housing
		{
			file="core\Game\Housing";
			class house_menu_open_buy {};
			class house_menu_action_sell {};
			class house_menu_action_garage {};
			class house_menu_action_owner {};
			class house_menu_action_buy {};
			class house_menu_action_storage {};
			class house_menu_action_keys_change {};
			class house_menu_action_keys_change_update {};
			class house_menu_action_spawn_set {};
			class house_menu_action_spawn_cancel {};
			class houseReceive {};
			class house_storage_create {};
		};

		class Phone
		{
			file="core\Game\Phone";
			class phone_number_change {};
			class phone_message_send {};
			class phone_message_receive {};
			class phone_forfait_change {};
			class phone_number_to_name {};
			class phone_number_to_unit {};
			class phone_get_messages_new {};
			class phone_call_receive {};
			class phone_call_receive_accept {};
			class phone_call_receive_refuse {};
			class phone_call_start {};
			class phone_call_loop {};
			class phone_call_end {};
			class phone_call_busy {};
			class phone_call_etablish {};
			class phone_annuaire {};
			class phone_ring_call {};
			class phone_ring_message {};
		};

		class Health
		{
			file="core\Game\Health";
			class action_hospital_awake {};
			class action_hospital_heartReader {};
			class action_body_drag {};
			class action_body_drop {};
			class action_stabilize {};
			class action_suicide {};
			class action_bed {};
			class action_operation {};
			class action_medic_request {};
			class handleComa {};
			class handleAlcool {};
			class handleBleed {};
			class handleBlood {};
			class handleHunger {};
			class handleThirst {};
			class handleMedecine {};
			class handleRegen {};
			class handleSnakeVenom {};
			class handleDesease {};
			class item_chlore_use {};
			class item_knife_apply {};
			class item_knife_use {};
			class item_morphine_apply {};
			class item_morphine_use {};
			class item_vaccin_apply {};
			class item_vaccin_use {};
			class item_adrenaline_apply {};
			class item_adrenaline_use {};
			class item_bandage_use {};
			class item_adn_use {};
			class adn_get {};
			class doctor_start {};
			class doctor_get {};
			class doctor_return {};
		};

		class Process
		{
			file="core\Game\Process";
			class process_action {};
			class process_open {};
			class process_update {};
			class process_choice_open {};
			class process_choice_action {};
		};

		class Gather
		{
			file="core\Game\Gather";
			class catchTurtle {};
			class pickGather {};
			class plantHarvest {};
			class plantCreate {};
			class plantSeed {};
			class plantGrow {};
			class farm_object {};
		};

		class Licenses
		{
			file="core\Game\Licenses";
			class buyLicense {};
		};

		class Launder
		{
			file="core\Game\Launder";
			class launder_reverse {};
			class launder_open {};
			class launder_action {};
		};

		class Bank
		{
			file="core\Game\Bank";
			class atm_bag_deposit {};
			class atm_bag_get {};
			class atmAction {};
			class atmScreen {};
			class atmFactionGet {};
			class atmFactionHandle {};
			class atmMoneyHandle {};
			class salaryProcess {};
			class handleATM {};
			class handleCash {};
		};

		class Prisons
		{
			file="core\game\Prisons";
			class prison_near {};
			class prison_prepare {};
			class prison_loop {};
			class prison_arrest_open {};
			class prison_arrest_action {};
		};

		class Interactions
		{
			file="core\Game\Interactions";
			class edit_create {};
			class edit_action {};
			class interactions_create {};
			class interactions_recall {};
			class interactions_player_to_atm {};
			class interactions_player_to_chair {};
			class interactions_player_to_drill {};
			class interactions_player_to_player_basics {};
			class interactions_player_to_player_coma {};
			class interactions_player_to_player_prison {};
			class interactions_player_to_skull {};
			class interactions_player_to_vehicle {};
			class interactions_player_to_house {};
			class interactions_player_to_station {};
			class interactions_player_to_company {};
			class interactions_player_to_speaker {};
			class interactions_player_to_dog {};
			class interactions_player_to_laboratory {};
		};

		class Actions
		{
			file="core\Game\Actions";
			class building_light_handle {};
			class building_light_update {};
			class building_door_lock_handle {};
			class building_door_knock {};
			class building_door_doorbell {};
			class panic_mod {};
			class animPlay {};
			class plateReceive {};
			class headbag_put_action {};
			class headbag_put_target {};
			class headbag_take_action {};
			class silence_put_action {};
			class silence_put_target {};
			class silence_take_action {};
			class wallet_try {};
			class wallet_propose {};
			class wallet_return {};
			class wipe {};
			class escort {};
			class stopescort {};
			class sirene {};
			class eatFood {};
			class knockedOut {};
			class knockoutAction {};
			class restrain {};
			class surrender {};
			class alcootest_get {};
			class alcootest_return {};
			class interactionMenu_action_restrain {};
			class interactionMenu_action_unrestrain {};
			class interactionMenu_action_lockpick {};
			class interactionMenu_action_trade_open {};
			class interactionMenu_action_trade_update {};
			class interactionMenu_action_trade_add_inventory {};
			class interactionMenu_action_trade_add_money {};
			class interactionMenu_action_trade_add_key_vehicles {};
			class interactionMenu_action_trade_add_key_buildings {};
			class interactionMenu_action_trade_remove {};
			class interactionMenu_action_trade_propose {};
			class interactionMenu_action_trade_receive {};
			class interactionMenu_action_trade_refuse {};
			class interactionMenu_action_trade_space {};
			class search_action {};
			class search_get {};
			class search_open {};
			class search_update {};
			class search_seize_target {};
			class search_seize_player {};
			class interactionMenu_action_ticket {};
			class interactionMenu_action_ticket_send {};
			class interactionMenu_action_ticket_receive {};
			class license_revoke {};
			class interactionMenu_action_alcootest {};
			class interactionMenu_action_license_give_open {};
			class interactionMenu_action_license_give_action {};
			class action_feed_open {};
			class action_feed_execute {};
		};

		class Welcome
		{
			file="core\Game\Welcome";
			class welcomeInit {};
			class welcomeMenu_Open {};
			class welcomeMenu_Proceed {};
		};

		class Tablet
		{
			file="core\Game\Tablet";
			class tabletOpen {};
			class tabletApp {};
			class tabletAppAnimation {};
			class tabletShow {};
			class APP_main {};
			class APP_solde {};
			class APP_solde_bills {};
			class APP_vehicles {};
			class APP_vehicles_update {};
			class APP_settings {};
			class APP_server {};
			class APP_store {};
			class APP_store_licenses {};
			class APP_store_licenses_Update {};
			class APP_store_licenses_Buy {};
			class APP_store_applications {};
			class APP_store_applications_update {};
			class APP_store_applications_buy {};
			class APP_store_forfait {};
			class APP_store_forfait_update {};
			class APP_store_forfait_buy {};
			class APP_help {};
			class APP_phone {};
			class APP_phone_calling {};
			class APP_phone_calling_update {};
			class APP_phone_callreceiving {};
			class APP_phone_call {};
			class APP_phone_call_addDigit {};
			class APP_phone_call_back {};
			class APP_phone_call_suppr {};
			class APP_phone_call_action {};
			class APP_phone_call_hangup {};
			class APP_phone_contacts {};
			class APP_phone_contacts_add {};
			class APP_phone_contacts_call {};
			class APP_phone_messages_read {};
			class APP_phone_messages_read_open {};
			class APP_phone_messages_read_delete {};
			class APP_phone_messages_send {};
			class APP_phone_messages_send_action {};
			class APP_phone_settings {};
			class APP_phone_change {};
			class APP_phone_blacklist {};
			class APP_phone_blacklist_add {};
			class APP_licenses {};
			class APP_faction {};
			class APP_faction_leader_office {};
			class APP_faction_leader_officeHandler {};
			class APP_faction_leader_office_invite {};
			class APP_faction_leader_office_invitePropose {};
			class APP_faction_leader_office_edit {};
			class APP_faction_leader_office_update_members {};
			class APP_faction_leader_history {};
			class APP_market {};
			class APP_market_update {};
			class APP_staff {};
			class APP_staff_spec_ON {};
			class APP_staff_spec_OFF {};
			class APP_staff_player_actions_update {};
			class APP_staff_players_actions_update {};
			class APP_staff_players_getData {};
			class APP_staff_players_returnData {};
			class APP_staff_god {};
			class APP_staff_rabbit {};
			class APP_staff_snake {};
			class APP_fuel {};
			class APP_fuel_update {};
			class APP_fuel_update_info {};
			class APP_announces_write {};
			class APP_announces_write_action {};
			class APP_announces_show {};
			class APP_announces_show_update {};
			class APP_company {};
			class APP_company_update {};
			class APP_company_leave {};
			class APP_gov {};
			class APP_gov_taxes {};
			class APP_gov_taxes_update {};
			class APP_gov_taxes_modify {};
			class APP_dab {};
			class APP_dab_update {};
			class APP_annuaire {};
			class APP_compagnies {};
			class APP_compagnies_update {};
			class APP_compagnies_call {};
			class APP_compagnies_infolist {};
		};
	};
};
