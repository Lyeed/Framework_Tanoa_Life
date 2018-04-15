class ALYSIA_SHOPS_VEHICLES
{
	class CIV_air
	{
		name="Concessionnaire aérien";
		createVehicle=1;
		stock[]=
		{
			"sab_a2",
			"Skyline_Vehicule_A3_M900_F",
			"Skyline_Vehicule_A3_Orca_F",
			/*"Skyline_Vehicule_A3_Mohawk_F",*/
			"Skyline_Vehicule_APEX_Caesar_BTT_F"
		};
	};
	class CIV_ship: CIV_air
	{
		name="Concessionnaire maritime";
		stock[]=
		{
			"B_Boat_Transport_01_F",
			"C_Boat_Civil_01_F",
			"C_Scooter_Transport_01_F",
			"Skyline_Vehicule_APEX_RHIB_01_F"
		};
	};
	class CIV_land_normal: CIV_air
	{
		name="Concessionnaire automobiles";
		stock[]=
		{
			"Mrshounka_Alfa_Romeo_civ",
			"Mrshounka_bmwm1_civ",
			"Mrshounka_Bowler_c",
			"Mrshounka_a3_dodge15_civ",
			"Mrshounka_cherokee_noir",
			"Mrshounka_mercedes_190_p_civ",
			"Mrshounka_megane_rs_2015_civ",
			"Mrshounka_a3_smart_civ",
			"shounka_avalanche",
			"shounka_a3_rs5_civ",
			"shounka_rs6",
			"DAR_ChallengerCiv",
			"DAR_M3Civ",
			"Skyline_VW_Touareg",
			"Skyline_Audi_RS4",
			"Skyline_Ford_Transit",
			"Skyline_Peugeot_308",
			"Skyline_Vehicule_Jonzie_Escalade",
			"Skyline_Vehicule_Jonzie_Mini_Cooper",
			"Skyline_Vehicule_Jonzie_Datsun_510",
			"Skyline_Vehicule_Jonzie_Corolla",
			"Skyline_Vehicule_Jonzie_Datsun_Z432",
			"Skyline_Vehicule_Jonzie_Raptor",
			"Skyline_Vehicule_Jonzie_Ceed",
			"Skyline_Vehicule_Jonzie_30CSL",
			"Skyline_Vehicule_Jonzie_XB",
			"Skyline_Jeep_Wrangler_Rubicon",
			"Skyline_Jeep_Wrangler",
			"Skyline_GMC_Vandura",
			"Skyline_Vehicule_APEX_MB_4WD",
			"Skyline_Vehicule_A3_Offroad",
			"C_Van_01_transport_F",
			"C_Van_01_box_F",
			"SAL_AudiCiv",
			"RDS_Golf4_Civ_01",
			"GeK_ElCamino",
			"GeK_Cadillac_Fleetwood_Brougham_85",
			"GeK_CTSV",
			"GeK_M6",
			"GeK_DS3",
			"GeK_Fiorino",
			"GeK_IS",
			"GeK_A45",
			"GeK_C63_AMG",
			"GeK_Insignia",
			"GeK_107",
			"GeK_clio",
			"GeK_Impreza",
			"GeK_Supra",
			"GeK_Golf",
			"GeK_C30",
			"GeK_S60",
			"GeK_Zil",
			"GeK_UAZ_3303",
			"GeK_Audi_Quattro",
			"Alysia_Willys_PNT",
			"Alysia_GMC_PNT_01",
			"chevrolet_Apache_chris20215",
			"Polaris_RZR_Turbo_chris20215",
			"Nissan_PatrolGR_chris20215",
			"AM_M939A2_chris20215_m939",
			"Golf2_16D",
			"Lemon_Jeep",
			"Lemon_Citroen_2CV",
			"Lemon_Volkswagen_Karmann_Ghia",
			"Lemon_Bronco",
			"Lemon_BMW_750i",
			"Lemon_Ford_A",
			"Lemon_Citroen_SM",
			"Lemon_Ural_Farm",
			"Lemon_Dac_Farm"
		};
	};
	class CIV_land_occasion: CIV_air
	{
		name="Concessionnaire d'occasions";
		stock[]=
		{
			"C_Quadbike_01_F",
			"RDS_Lada_Civ",
			"RDS_Gaz24_Civ",
			"ADM_Ford_F100",
			"Lemon_Peugeot_205_Turbo_16_Occasion",
			"Lemon_Citroen_2CV_Occasion",
			"Lemon_F350_Farm_1970",
			"Lemon_QUAD_HONDA_TRX450",
			"Lemon_Dac_Farm_Occasion"
		};
	};
	class CIV_land_Luxe: CIV_air
	{
		name="Concessionnaire de Luxe";
		stock[]=
		{
			"madsa_zl1_f",
			"shounka_monsteur",
			"Mrshounka_lykan_c",
			"Skyline_Vehicule_Shounka_F430_Scuderia",
			"Skyline_Vehicule_Shounka_McLaren_MP4",
			"Skyline_Vehicule_Shounka_Porsche911",
			"Skyline_Vehicule_Jonzie_Quattroporte",
			"Skyline_Vehicule_Jonzie_Viper",
			"Skyline_Lotus_Esprit",
			"GeK_250GT",
			"GeK_Mustang",
			"GeK_911_1972",
			"GeK_GTR",
			"GeK_Mercedes_ML63",
			"Lemon_Mercedes_300SL_1955"
		};
	};
	class CIV_jobs: CIV_air
	{
		name="Concessionnaire entreprises";
		side="CIV";
		createVehicle=0;
		stock[]=
		{
			/* company_transport_people */
			"Lemon_Chrysler_300C_Limousine",
			"Maels_Taxi",
			"Maels_Ikarus",
			/* company_garagist */
			"Skyline_Scania_G420_Depanneuse",
			"Skyline_Jeep_Wrangler_Rubicon_Depannage",
			"Skyline_Mercedes_Sprinter_Depannage",
			"Maels_Mercedes_Sprinter_fast_repair",
			"Alysia_garage_01",
			/* company_money_tranfer */
			"Skyline_Brinks_01_F",
			/* company_farming */
			"RDS_Zetor6945_Base",
			/* company_location_sea */
			"Burnes_mk10",
			/* company_location_land */
			"Skyline_Scania_Streamline_Box",
			"Skyline_Vehicule_Shounka_Renault_Magnum",
			"GeK_Iveco_Stralis",
			/* company_fuel */
			"Skyline_Scania_Streamline_Citerne",
			/* company_press */
			/* company_driving_school */
			"Touareg_AET",
			"Maels_Lexus_is_AET",
			"Maels_Ikarus_AET",
			"Maels_magnum_AET",
			"Maels_ducati_AET",
			"Maels_boat_aet",
			/* company_tourism */
			"R_HotairBalloon",
			/* company_music_label */
			"Maels_Vandura_GMC_special"
			/* company_car_shop 
			"Lemon_Peterbilt_1999",
			"Lemon_Navistar"*/
		};
	};
	class CIV_land_moto: CIV_air
	{
		name="Concessionnaire moto";
		stock[]=
		{
			"Mrshounka_ducati_p_base",
			"Mrshounka_yamaha_p_base",
			"shounka_harley_a3",
			"Lemon_Ducati_Diavel"
		};
	};
	class CIV_rebelle: CIV_air
	{
		name="Concessionnaire rebelle";
		side="CIV";
		createVehicle=0;
		stock[]=
		{
			"Mrshounka_hummer_civ",
			"madsa_hummer_h2",
			"Skyline_Vehicule_A3_Offroad_Rebelle",
			"Skyline_Vehicule_A3_Offroad_Armed_Rebelle",
			"Skyline_MTVR_4X4",
			"Skyline_MTVR_MK23",
			"Skyline_MTVR_MK27T",
			"Skyline_MTVR_MK27",
			"Skyline_MTVR_LHS_16",
			"Skyline_Vehicule_A3_M900_F_rebel",
			"Skyline_Vehicule_A3_MH9_Unarmed_F_rebel",
			"GeK_Raptor",
			"GeK_G65",
			"Lemon_Mercedes_ML_63_Rebelle",
			"Lemon_Mercedes_ML_63_Rebelle_Kaki",
			"Skyline_Vehicule_APEX_RHIB_02_F",
			"MH9_EIT"
		};
	};

	class GUER
	{
		name="Concessionnaire SAMU";
		createVehicle=0;
		side="GUER";
		stock[]=
		{
			/* Véhicules Terrestres */
			"Skyline_Mercedes_Sprinter_Samu",
			"Skyline_VW_TouaregR50_Samu_01_F",
			"Skyline_VW_TouaregR50_Samu_02_F",
			"Jonzie_Ambulance",
			"Mrshounka_corbillard_base_p",
			"GeK_TLC100_Medic",
			/* Véhicules Aériens */
			"Skyline_Agusta_Bell_01_F",
			"EC635_ADAC",
			/* Véhicules Navals */
			"Maels_boat_samu"
		};
	};

	class EAST
	{
		name="Concessionnaire ANT";
		createVehicle=0;
		side="EAST";
		stock[]=
		{
			/* Véhicules Terrestres non armés */
			"Alysia_GMC_East_Base",
			"Alysia_R71_East_Base",
			"Alysia_Opelblitz_East_Base",
			"Alysia_Minicooper_East_Base",
			"Gurkha_f5",
			"B_Truck_01_ammo_F",
			"iD_Jeep_Willys_Cmd",
			"Alysia_Willys_philidor",
			"Alysia_Willys_rochefort",
			"Alysia_Willys_droolens",
			"Alysia_Willys_gomez",
			"Alysia_Willys_matariki",
			"Lemon_Jeep_ANT",
			"Lemon_Bronco_ANT",
			"ANT_Prowler",
            "Skyline_Vehicule_APEX_Prowler_01_F",
			/* Véhicules Terrestres armés */
			"Gurkha_M60",
			"Alysia_Willys_philidor_armed",
			"Alysia_Willys_rochefort_armed",
			"Alysia_Willys_droolens_armed",
			"Alysia_Willys_gomez_armed",
			"Alysia_Willys_matariki_armed",
			"Alysia_APC_East",
			/* Véhicules Navals */
			"B_Boat_Armed_01_minigun_F",
			"ANT_RHIB",
			"Maels_boat_ant",
			/* Véhicules Aériens */
			"Alysia_heli_light_East_01",
			"Alysia_EC635_East_01",
			"B_T_VTOL_01",
			"Alysia_Hellcat_East_01",
			"MH9_BDR"
		};
	};

	class WEST
	{
		name="Concessionnaire GDM";
		createVehicle=0;
		side="WEST";
		stock[]=
		{
			/* Véhicules Terrestres non armés */
			"RDS_Lada_Civ_05",
			"Alysia_R71_West_Base",
			"Alysia_GMC_West_Base",
			"GeK_Cadillac_Fleetwood_Brougham_85_04",
			"Lemon_Beverly_Sedan_Garde",
			"Lemon_Citroen_2CV_Garde_Tanocienne",
			/* Véhicules Terrestres armés */
			/* Véhicules Navals */
			/* Véhicules Aériens */
			"Alysia_HeliAttack_West"
		};
	};
};
