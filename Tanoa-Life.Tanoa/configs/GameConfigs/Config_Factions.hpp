class ALYSIA_FACTIONS
{
	class EAST
	{
		/*** GLOBAL ***/
		name="ANT";
		name_full="Armée Nationale Tanocienne";
		icon="Alysia_Client_Texture\Data\faction\EAST_logo.paa";
		identity_item="Alysia_Identity_East";

		/*** SALARY ***/
		class salary
		{
			name="Salaire";
			amount=950;
			apply_rank=1;
			timer=15;
		};

		/*** PHONE ***/
		class phone
		{
			change_number_price=5000;
			receive_fuel_alert=1;
			class send_global_message
			{
				rank=5;
			};
			class central_plate {};
		};

		/*** COMPANIES ***/
		class companies
		{
			search=1;
			owner=0;
			employee=0;
			class history
			{
				rank=10;
				class clean
				{
					rank=10;
				};
			};
			class destroy
			{
				rank=10;
			};
		};

		/*** LAUNDER ***/
		class launder_transfer
		{
			rank=2;
		};
		
		class bank_faction
		{
			rank=10;
			payFuel=1;
		};
		class taxes_app
		{
			rank=11;
		};

		/*** Licenses ***/
		class licenses_seize
		{
			rank=4;
		};
		class licenses_give
		{
			class politique_pnt_sec
			{
				rank=11;
				same_side_only=0;
			};

			class east_form
			{
				rank=11;
				same_side_only=1;
			};

			class east_tank_resp
			{
				rank=11;
				same_side_only=1;
			};
			class east_medic_resp: east_tank_resp {};
			class east_fm_resp: east_tank_resp {};
			class east_dog_resp: east_tank_resp {};
			class east_tp_resp: east_tank_resp {};
			class east_cook_resp: east_tank_resp {};
			class east_pilot_resp: east_tank_resp {};
			class east_ope_radio_resp: east_tank_resp {};
			
			class east_tank
			{
				license="east_tank_resp";
				same_side_only=1;
			};
			class east_medic: east_tank
			{
				license="east_medic_resp";		
			};
			class east_fm: east_tank
			{
				license="east_fm_resp";
			};
			class east_dog: east_tank
			{
				license="east_dog_resp";
			};
			class east_tp: east_tank
			{
				license="east_tp_resp";
			};
			class east_cook: east_tank
			{
				license="east_cook_resp";
			};
			class east_pilot: east_tank
			{
				license="east_pilot_resp";
			};
			class east_ope_radio: east_tank
			{
				license="east_ope_radio_resp";
			};
		};

		/*** MAP ***/
		class map_factions_markers
		{
			shown[]={"EAST","WEST"};
		};

		/*** SPAWN/RESPAWN ***/
		class respawn
		{
			marker="respawn_east";
			price=2200;
			suicide=0.2;
		};

		/*** HOUSING ***/
		class housing
		{
			search=1;
			max=2;
		};

		/*** HEAL ***/
		can_use_debrif=0;

		/*** SKULL ***/
		skull_who=0;
		skull_take=1;

		/*** INTERACTIONS ***/
		interaction_seize_gear=1;

		/*** LEADER BOARD ***/
		class board
		{
			history_items[]=
			{
				"arifle_CTAR_blk_F",
				"RH_m1911"
			};
			class leader_board
			{
				access_rank=8;
			};
		};

		/*** LOADOUT ***/
		class Loadout
		{
			uniform="Alysia_Uniform_East_recrue_Parade";
			headgear="";
			vest="";
			backpack="";
			items[]={};
		};

        /*** RANKS ***/
        class Ranks
        {
            ranks_complet[]=
            {
                "Civil",
                "Recrue",
                "Soldat",
                "Soldat 1er Classe", 
                "Caporal-Chef",
                "Sergent",
                "Adjudant",
                "Major",
                "Lieutenant",
                "Capitaine",
                "Lieutenant Colonel",
                "Colonel"
            };

            ranks_short[]=
            {
                "Civ",
                "Rec",
                "Sdt",
                "1cl",
                "Cch",
                "Sgt",
                "Adj",
                "Maj",
                "Ltn",
                "Cne",
                "Lcl",
                "Col"
            };
        };
    };
	class CIV
	{
		/*** GLOBAL ***/
		name="Tanocien";
		name_full="Tanocien";
		icon="Alysia_Client_Texture\Data\faction\CIV_logo.paa";
		identity_item="Alysia_Identity_Civ";

		/*** SALARY ***/
		class salary
		{
			name="Aides";
			amount=1450;
			apply_rank=0;
			timer=15;
		};

		/*** PHONE ***/
		class phone
		{
			change_number_price=1000;
			receive_fuel_alert=0;
		};

		/*** Licenses ***/
		class licenses_give
		{
			class politique_pnt_member
			{
				rank=0;
				same_side_only=0;
				license="politique_pnt_sec";
			};
			class politique_pnt_coryphee: politique_pnt_member {};
			class politique_pnt_militant: politique_pnt_member {};
			
			class driver
			{
				rank=0;
				same_side_only=0;
				license="company_driving_school";
			};
			class pilot: driver {};
			class truck: driver {};
			class boat: driver {};
			class moto: driver {};
		};

		/*** COMPANIES ***/
		class companies
		{
			search=0;
			owner=1;
			employee=1;
			class create
			{
				license="coop_agri";
			};
			class history
			{
				license="coop_agri";
				class clean
				{
					license="coop_agri";
				};
			};
		};

		/*** SPAWN/RESPAWN ***/
		class respawn
		{
			marker="respawn_civilian";
			price=1000;
			suicide=0.05;
		};

		/*** HOUSING ***/
		class housing
		{
			search=0;
			max=2;
		};

		/*** HEAL ***/
		can_use_debrif=0;

		/*** SKULL ***/
		skull_who=0;
		skull_take=0;

		/*** INTERACTIONS ***/
		interaction_seize_gear=0;

		/*** LOADOUT ***/
		class Loadout
		{
			uniform="Skyline_Uniforme_Alysia_01_F";
			headgear="";
			vest="";
			backpack="";
			items[]={};
		};

		/*** RANKS ***/
		class Ranks
		{
			ranks_complet[]=
			{
				"Citoyen",
				"Criminel",
				"Rebelle"
			};
			ranks_short[]=
			{
				"Cit",
				"Crim",
				"Reb"
			};
		};
	};

	class GUER
	{
		/*** GLOBAL ***/
		name="SAMU";
		name_full="Service d'aide médicale urgente";
		icon="Alysia_Client_Texture\Data\faction\GUER_logo.paa";
		identity_item="Alysia_Identity_Guer";

		/*** SALARY ***/
		class salary
		{
			name="Salaire";
			amount=875;
			apply_rank=1;
			timer=15;
		};

		/*** PHONE ***/
		class phone
		{
			change_number_price=1000;
			receive_fuel_alert=0;
			class send_global_message
			{
				rank=5;
			};
		};

		/*** COMPANIES ***/
		class companies
		{
			search=0;
			owner=0;
			employee=0;
		};

		class bank_faction
		{
			rank=6;
			payFuel=1;
		};

		/*** MAP ***/
		class map_coma_markers {};
		class map_factions_markers
		{
			shown[]={"GUER"};
		};

		/*** SPAWN/RESPAWN ***/
		class respawn
		{
			marker="respawn_guerrila";
			price=0;
			suicide=0;
		};

		/*** HOUSING ***/
		class housing
		{
			search=0;
			max=1;
		};

		/*** HEAL ***/
		can_use_debrif=1;

		/*** SKULL ***/
		skull_who=1;
		skull_take=1;

		/*** INTERACTIONS ***/
		interaction_seize_gear=0;

		/*** Licenses ***/
		class licenses_give
		{
			class pilot
			{
				rank=6;
				same_side_only=1;
			};
			class medical
			{
				rank=1;
				same_side_only=0;
				license="guer_medical";
			};
			class guer_medical
			{
				rank=6;
				same_side_only=1;
			};
			class guer_gen
			{
				rank=6;
				same_side_only=1;
			};
			class guer_chirurgien
			{
				rank=6;
				same_side_only=1;
			};
			class guer_inspector
			{
				rank=6;
				same_side_only=1;
			};
			class assr_medical
			{
				rank=1;
				same_side_only=0;
			};
		};

		/*** LEADER BOARD ***/
		class board
		{
			history_items[]={};
			class leader_board
			{
				access_rank=5;
			};
		};

		/*** LOADOUT ***/
		class Loadout
		{
			uniform="rds_uniform_assistant";
			headgear="";
			vest="";
			backpack="";
			items[]={};
		};

		/*** RANKS ***/
		class Ranks
		{
			ranks_complet[]=
			{
				"Civil",
				"Stagiaire",
				"Infirmier",
				"Médecin Externe",
				"Médecin Interne",
				"Médecin Titulaire",
				"Médecin Chef"
			};

			ranks_short[]=
			{
				"Civ",
				"Stg",
				"Inf",
				"Ext",
				"Int",
				"Tit",
				"Chef"
			};
		};
	};

	class WEST
	{
		/*** GLOBAL ***/
		name="GDM";
		name_full="Garde de Malieu";
		icon="Alysia_Client_Texture\Data\faction\WEST_logo.paa";
		identity_item="Alysia_Identity_West";

		/*** SALARY ***/
		class salary
		{
			name="Salaire";
			amount=840;
			apply_rank=1;
			timer=15;
		};

		/*** PHONE ***/
		class phone
		{
			change_number_price=5000;
			receive_fuel_alert=0;
			class send_global_message
			{
				rank=4;
			};
			class central_plate {};
		};

		/*** COMPANIES ***/
		class companies
		{
			search=1;
			owner=0;
			employee=0;
			class history
			{
				rank=1;
				class clean
				{
					rank=6;
				};
			};
			class destroy
			{
				rank=6;
			};
			class create
			{
				rank=6;
			};
		};

		class bank_faction
		{
			rank=5;
			payFuel=1;
		};

		/*** Licenses ***/
		class licenses_seize
		{
			rank=3;
		};
		class licenses_give {};

		/*** MAP ***/
		class map_factions_markers
		{
			shown[]={"EAST","WEST"};
		};

		/*** SPAWN/RESPAWN ***/
		class respawn
		{
			marker="respawn_west";
			price=2200;
			suicide=0.2;
		};

		/*** HOUSING ***/
		class housing
		{
			search=1;
			max=1;
		};

		/*** HEAL ***/
		can_use_debrif=0;

		/*** SKULL ***/
		skull_who=0;
		skull_take=1;

		/*** INTERACTIONS ***/
		interaction_seize_gear=1;

		/*** LAUNDER ***/
		class launder_transfer
		{
			rank=1;
		};

		/*** LEADER BOARD ***/
		class board
		{
			history_items[]=
			{
				"RH_g17",
				"Alysia_MP44"
			};
			class leader_board
			{
				access_rank=5;
			};
		};

		/*** LOADOUT ***/
		class Loadout
		{
			uniform="Alysia_Uniform_West_Garde";
			headgear="";
			vest="";
			backpack="";
			items[]={};
		};

		/*** RANKS ***/
		class Ranks
		{
			ranks_complet[]=
			{
				"Civil",
				"Garde",
				"Caporal",
				"Sergent",
				"Lieutenant",
				"Commandant",
				"Commissaire Général"
			};

			ranks_short[]=
			{
				"Civ",
				"Ga",
				"Cp",
				"Sgt",
				"Lt",
				"Cmd",
				"Com-Gen"
			};
		};
	};
};
