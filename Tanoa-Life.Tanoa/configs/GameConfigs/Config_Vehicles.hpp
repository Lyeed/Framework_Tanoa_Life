class ALYSIA_VEHICLES_INFO
{
	/* MASTER VEHICLES CONFIG */
	insurance_percentage=0.5;
	garage_percentage=0.03;
	steal_percentage=0.4;
	sell_percentage=0.4;
	transfert_percentage=0.15;
	// based on vehicle's buyPrice
};

class ALYSIA_VEHICLES
{
	/*
	class master_vehicleClassname
	{
		buy price 				-NUMBER-	(vehicle shop buy price)
    Ex: buyPrice=1910000;
    ----------------------------
		virtual inventory	    -NUMBER-	(virtual inventory space)
    Ex: inventory=45;
    ----------------------------
		side 					-TXT- (allow vehicles defined as WEST,EAST,GUER to be opened by faction member without having keys)
    possible: [WEST,EAST,GUER,CIV]
    Ex: side="";
    ----------------------------
		insurance 				-NUMBER-	(can be insured)
    possible [0(no),1(yes]
    Ex: insurance=1;
	----------------------------
		license						-TXT-			(license name/empty if no need: player needs to have license x to buy vehicle. Eg: CONFIG_licenses)
    Ex: licenses[]={"truck"};
    ----------------------------
		rank 							-NUMBER-	(use in WEST,EAST,GUER factions: player needs to have alteast rank x to buy vehicle. Must be 0 for civilian. Eg: CONFIG_factions)
    Ex: rank=4;
    ----------------------------
		colors 						-ARRAT-		(vehicle's color classnames)
    Ex: colors[]={"className_color1","className_color2",...};
    ----------------------------
		realname 					-TXT-			(vehicle name in shop)
    Ex: realname="Camion Ben";
    ----------------------------
	};

	OPTIONAL:         (multiple colors for the same model)
	class master_vehicleClassname_color1: master_vehicleClassname {};
	class master_vehicleClassname_color2: master_vehicleClassname {};
	class master_vehicleClassname_color3: master_vehicleClassname {};
	...
	**				CIVILIAN VEHICLES
	*/
	class madsa_hummer_h2
	{
		realname="Hummer H2";
		buyPrice=344000;
		inventory=85;
		side="CIV";
		insurance=0;
		disableOwnerInfos=1;
		licenses[]={"rebelle_1"};
		fuel="SP95";
		fuelCapacity=121;
		colors[]=
		{
			"madsa_hummer_h2_black_F",
			"madsa_hummer_h2_blue_F",
			"madsa_hummer_h2_gold_F",
			"madsa_hummer_h2_green_F",
			"madsa_hummer_h2_pink_F",
			"madsa_hummer_h2_purple_F",
			"madsa_hummer_h2_red_F",
			"madsa_hummer_h2_silver_F",
			"madsa_hummer_h2_white_F",
			"madsa_hummer_h2_yellow_F"
		};
	};
	class madsa_hummer_h2_black_F: madsa_hummer_h2 {};
	class madsa_hummer_h2_blue_F: madsa_hummer_h2 {};
	class madsa_hummer_h2_gold_F: madsa_hummer_h2 {};
	class madsa_hummer_h2_green_F: madsa_hummer_h2 {};
	class madsa_hummer_h2_pink_F: madsa_hummer_h2 {};
	class madsa_hummer_h2_purple_F: madsa_hummer_h2 {};
	class madsa_hummer_h2_red_F: madsa_hummer_h2 {};
	class madsa_hummer_h2_silver_F: madsa_hummer_h2 {};
	class madsa_hummer_h2_white_F: madsa_hummer_h2 {};
	class madsa_hummer_h2_yellow_F: madsa_hummer_h2 {};

	class RDS_Zetor6945_Base
	{
		realname="Tracteur Zetor6945";
		buyPrice=90000;
		inventory=155;
		side="CIV";
		insurance=1;
		licenses[]={"driver","company_farming"};
		fuel="Diesel";
		fuelCapacity=67;
		tractor=1;
	};
	class madsa_zl1_f
	{
		realname="Chevrolet zl1f";
		buyprice=260000;
		inventory=20;
		side="CIV";
		insurance=1;
		licence[]={"driver"};
		fuel="SP98";
		fuelCapacity=67;
		colors[]={};
	};

  	class DAR_TaurusCiv
	{
		realname="Ford Taurus";
		buyPrice=30000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=72;
		colors[]=
		{
			"DAR_TaurusCiv",
			"DAR_TaurusCivBlack",
			"DAR_TaurusCivBlue"
		};
	};
  	class DAR_TaurusCivBlack: DAR_TaurusCiv {};
  	class DAR_TaurusCivBlue: DAR_TaurusCiv {};

  	class Skyline_Vehicule_Shounka_Renault_Magnum
	{
		realname="Renault Magnum";
		buyPrice=415750;
		inventory=650;
		side="CIV";
		insurance=1;
		licenses[]={"truck","company_location_land"};
		fuel="Diesel";
		fuelCapacity=1455;
		colors[]=
		{
			"Skyline_Vehicule_Shounka_Renault_Magnum_01_F",
			"Skyline_Vehicule_Shounka_Renault_Magnum_02_F",
			"Skyline_Vehicule_Shounka_Renault_Magnum_03_F",
			"Skyline_Vehicule_Shounka_Renault_Magnum_04_F",
			"Skyline_Vehicule_Shounka_Renault_Magnum_05_F",
			"Skyline_Vehicule_Shounka_Renault_Magnum_06_F",
			"Skyline_Vehicule_Shounka_Renault_Magnum_07_F",
			"Skyline_Vehicule_Shounka_Renault_Magnum_08_F",
			"Skyline_Vehicule_Shounka_Renault_Magnum_09_F",
			"Skyline_Vehicule_Shounka_Renault_Magnum_10_F",
			"Skyline_Vehicule_Shounka_Renault_Magnum_11_F",
			"Skyline_Vehicule_Shounka_Renault_Magnum_12_F",
			"Skyline_Vehicule_Shounka_Renault_Magnum_13_F"
		};
	};
	class Skyline_Vehicule_Shounka_Renault_Magnum_01_F: Skyline_Vehicule_Shounka_Renault_Magnum{};
	class Skyline_Vehicule_Shounka_Renault_Magnum_02_F: Skyline_Vehicule_Shounka_Renault_Magnum{};
	class Skyline_Vehicule_Shounka_Renault_Magnum_03_F: Skyline_Vehicule_Shounka_Renault_Magnum{};
	class Skyline_Vehicule_Shounka_Renault_Magnum_04_F: Skyline_Vehicule_Shounka_Renault_Magnum{};
	class Skyline_Vehicule_Shounka_Renault_Magnum_05_F: Skyline_Vehicule_Shounka_Renault_Magnum{};
	class Skyline_Vehicule_Shounka_Renault_Magnum_06_F: Skyline_Vehicule_Shounka_Renault_Magnum{};
	class Skyline_Vehicule_Shounka_Renault_Magnum_07_F: Skyline_Vehicule_Shounka_Renault_Magnum{};
	class Skyline_Vehicule_Shounka_Renault_Magnum_08_F: Skyline_Vehicule_Shounka_Renault_Magnum{};
	class Skyline_Vehicule_Shounka_Renault_Magnum_09_F: Skyline_Vehicule_Shounka_Renault_Magnum{};
	class Skyline_Vehicule_Shounka_Renault_Magnum_10_F: Skyline_Vehicule_Shounka_Renault_Magnum{};
	class Skyline_Vehicule_Shounka_Renault_Magnum_11_F: Skyline_Vehicule_Shounka_Renault_Magnum{};
	class Skyline_Vehicule_Shounka_Renault_Magnum_12_F: Skyline_Vehicule_Shounka_Renault_Magnum{};
	class Skyline_Vehicule_Shounka_Renault_Magnum_13_F: Skyline_Vehicule_Shounka_Renault_Magnum{};

	class Mrshounka_Alfa_Romeo_civ
	{
		realname="Alfa Romeo";
		buyPrice=22500;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=60;
		colors[]=
		{
			"Mrshounka_Alfa_Romeo_noir",
			"Mrshounka_Alfa_Romeo_bleufonce",
			"Mrshounka_Alfa_Romeo_rouge",
			"Mrshounka_Alfa_Romeo_jaune",
			"Mrshounka_Alfa_Romeo_rose",
			"Mrshounka_Alfa_Romeo_grise",
			"Mrshounka_Alfa_Romeo_violet",
			"Mrshounka_Alfa_Romeo_orange"
		};
	};
	class Mrshounka_Alfa_Romeo_noir: Mrshounka_Alfa_Romeo_civ {};
	class Mrshounka_Alfa_Romeo_bleufonce: Mrshounka_Alfa_Romeo_civ {};
	class Mrshounka_Alfa_Romeo_rouge: Mrshounka_Alfa_Romeo_civ {};
	class Mrshounka_Alfa_Romeo_jaune: Mrshounka_Alfa_Romeo_civ {};
	class Mrshounka_Alfa_Romeo_rose: Mrshounka_Alfa_Romeo_civ {};
	class Mrshounka_Alfa_Romeo_grise: Mrshounka_Alfa_Romeo_civ {};
	class Mrshounka_Alfa_Romeo_violet: Mrshounka_Alfa_Romeo_civ {};
	class Mrshounka_Alfa_Romeo_orange: Mrshounka_Alfa_Romeo_civ {};

	class shounka_a3_rs5_civ
	{
		realname="Audi RS5";
		buyPrice=105000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=64;
		colors[]=
		{
			"shounka_a3_rs5_civ_noir",
			"shounka_a3_rs5_civ_bleufonce",
			"shounka_a3_rs5_civ_rouge",
			"shounka_a3_rs5_civ_jaune",
			"shounka_a3_rs5_civ_rose",
			"shounka_a3_rs5_civ_grise",
			"shounka_a3_rs5_civ_violet",
			"shounka_a3_rs5_civ_orange"
		};
	};
	class shounka_a3_rs5_civ_noir: shounka_a3_rs5_civ {};
	class shounka_a3_rs5_civ_bleufonce: shounka_a3_rs5_civ {};
	class shounka_a3_rs5_civ_rouge: shounka_a3_rs5_civ {};
	class shounka_a3_rs5_civ_jaune: shounka_a3_rs5_civ {};
	class shounka_a3_rs5_civ_rose: shounka_a3_rs5_civ {};
	class shounka_a3_rs5_civ_grise: shounka_a3_rs5_civ {};
	class shounka_a3_rs5_civ_violet: shounka_a3_rs5_civ {};
	class shounka_a3_rs5_civ_orange: shounka_a3_rs5_civ {};

	class shounka_rs6
	{
		realname="Audi RS6";
		buyPrice=96000;
		inventory=60;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=75;
		colors[]=
		{
			"shounka_rs6_noir",
			"shounka_rs6_bleufonce",
			"shounka_rs6_rouge",
			"shounka_rs6_jaune",
			"shounka_rs6_rose",
			"shounka_rs6_grise",
			"shounka_rs6_violet",
			"shounka_rs6_orange"
		};
	};
	class shounka_rs6_noir: shounka_rs6 {};
	class shounka_rs6_bleufonce: shounka_rs6 {};
	class shounka_rs6_rouge: shounka_rs6 {};
	class shounka_rs6_jaune: shounka_rs6 {};
	class shounka_rs6_rose: shounka_rs6 {};
	class shounka_rs6_grise: shounka_rs6 {};
	class shounka_rs6_violet: shounka_rs6 {};
	class shounka_rs6_orange: shounka_rs6 {};

	class Mrshounka_bmwm1_civ
	{
		realname="BMW 1";
		buyPrice=75300;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=51;
		colors[]=
		{
			"Mrshounka_bmwm1_civ_noir",
			"Mrshounka_bmwm1_civ_bleufonce",
			"Mrshounka_bmwm1_civ_rouge",
			"Mrshounka_bmwm1_civ_jaune",
			"Mrshounka_bmwm1_civ_rose",
			"Mrshounka_bmwm1_civ_grise",
			"Mrshounka_bmwm1_civ_violet",
			"Mrshounka_bmwm1_civ_orange"
		};
	};
	class Mrshounka_bmwm1_civ_noir: Mrshounka_bmwm1_civ {};
	class Mrshounka_bmwm1_civ_bleufonce: Mrshounka_bmwm1_civ {};
	class Mrshounka_bmwm1_civ_rouge: Mrshounka_bmwm1_civ {};
	class Mrshounka_bmwm1_civ_jaune: Mrshounka_bmwm1_civ {};
	class Mrshounka_bmwm1_civ_rose: Mrshounka_bmwm1_civ {};
	class Mrshounka_bmwm1_civ_grise: Mrshounka_bmwm1_civ {};
	class Mrshounka_bmwm1_civ_violet: Mrshounka_bmwm1_civ {};
	class Mrshounka_bmwm1_civ_orange: Mrshounka_bmwm1_civ {};

	class Mrshounka_bmwm6_civ
	{
		realname="BMW M6";
		buyPrice=145000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=70;
		colors[]=
		{
			"Mrshounka_bmwm6_noir",
			"Mrshounka_bmwm6_bleufonce",
			"Mrshounka_bmwm6_rouge",
			"Mrshounka_bmwm6_jaune",
			"Mrshounka_bmwm6_rose",
			"Mrshounka_bmwm6_grise",
			"Mrshounka_bmwm6_violet",
			"Mrshounka_bmwm6_orange"
		};
	};
	class Mrshounka_bmwm6_noir: Mrshounka_bmwm6_civ {};
	class Mrshounka_bmwm6_bleufonce: Mrshounka_bmwm6_civ {};
	class Mrshounka_bmwm6_rouge: Mrshounka_bmwm6_civ {};
	class Mrshounka_bmwm6_jaune: Mrshounka_bmwm6_civ {};
	class Mrshounka_bmwm6_rose: Mrshounka_bmwm6_civ {};
	class Mrshounka_bmwm6_grise: Mrshounka_bmwm6_civ {};
	class Mrshounka_bmwm6_violet: Mrshounka_bmwm6_civ {};
	class Mrshounka_bmwm6_orange: Mrshounka_bmwm6_civ {};

	class Mrshounka_Bowler_c
	{
		realname="Bowler";
		buyPrice=195000;
		inventory=85;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=140;
		colors[]=
		{
			"Mrshounka_Bowler_c_noir",
			"Mrshounka_Bowler_c_bleufonce",
			"Mrshounka_Bowler_c_rouge",
			"Mrshounka_Bowler_c_jaune",
			"Mrshounka_Bowler_c_rose",
			"Mrshounka_Bowler_c_grise",
			"Mrshounka_Bowler_c_violet",
			"Mrshounka_Bowler_c_orange"
		};
	};
	class Mrshounka_Bowler_c_noir: Mrshounka_Bowler_c {};
	class Mrshounka_Bowler_c_bleufonce: Mrshounka_Bowler_c {};
	class Mrshounka_Bowler_c_rouge: Mrshounka_Bowler_c {};
	class Mrshounka_Bowler_c_jaune: Mrshounka_Bowler_c {};
	class Mrshounka_Bowler_c_rose: Mrshounka_Bowler_c {};
	class Mrshounka_Bowler_c_grise: Mrshounka_Bowler_c {};
	class Mrshounka_Bowler_c_violet: Mrshounka_Bowler_c {};
	class Mrshounka_Bowler_c_orange: Mrshounka_Bowler_c {};

	class shounka_avalanche
	{
		realname="Chevrolet Avalanche";
		buyPrice=47500;
		inventory=90;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=117;
		colors[]=
		{
			"shounka_avalanche_noir",
			"shounka_avalanche_bleufonce",
			"shounka_avalanche_rouge",
			"shounka_avalanche_jaune",
			"shounka_avalanche_rose",
			"shounka_avalanche_grise",
			"shounka_avalanche_violet",
			"shounka_avalanche_orange"
		};
	};
	class shounka_avalanche_noir: shounka_avalanche {};
	class shounka_avalanche_bleufonce: shounka_avalanche {};
	class shounka_avalanche_rouge: shounka_avalanche {};
	class shounka_avalanche_jaune: shounka_avalanche {};
	class shounka_avalanche_rose: shounka_avalanche {};
	class shounka_avalanche_grise: shounka_avalanche {};
	class shounka_avalanche_violet: shounka_avalanche {};
	class shounka_avalanche_orange: shounka_avalanche {};

	class shounka_monsteur
	{
		realname="Chevrolet Monster";
		buyPrice=1700000;
		inventory=10;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=131;
		colors[]=
		{
			"shounka_monsteur_noir",
			"shounka_monsteur_bleufonce",
			"shounka_monsteur_rouge",
			"shounka_monsteur_jaune",
			"shounka_monsteur_rose",
			"shounka_monsteur_grise",
			"shounka_monsteur_violet",
			"shounka_monsteur_orange"
		};
	};
	class shounka_monsteur_noir: shounka_monsteur {};
	class shounka_monsteur_bleufonce: shounka_monsteur {};
	class shounka_monsteur_rouge: shounka_monsteur {};
	class shounka_monsteur_jaune: shounka_monsteur {};
	class shounka_monsteur_rose: shounka_monsteur {};
	class shounka_monsteur_grise: shounka_monsteur {};
	class shounka_monsteur_violet: shounka_monsteur {};
	class shounka_monsteur_orange: shounka_monsteur {};

	class Mrshounka_a3_ds3_civ
	{
		realname="Citroen DS3";
		buyPrice=15950;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=50;
		colors[]=
		{
			"Mrshounka_a3_ds3_civ_noir",
			"Mrshounka_a3_ds3_civ_bleufonce",
			"Mrshounka_a3_ds3_civ_civ_rouge",
			"Mrshounka_a3_ds3_civ_civ_jaune",
			"Mrshounka_a3_ds3_civ_civ_rose",
			"Mrshounka_a3_ds3_civ_civ_grise",
			"Mrshounka_a3_ds3_civ_civ_violet",
			"Mrshounka_a3_ds3_civ_civ_orange"
		};
	};
	class Mrshounka_a3_ds3_civ_noir: Mrshounka_a3_ds3_civ {};
	class Mrshounka_a3_ds3_civ_bleufonce: Mrshounka_a3_ds3_civ {};
	class Mrshounka_a3_ds3_civ_civ_rouge: Mrshounka_a3_ds3_civ {};
	class Mrshounka_a3_ds3_civ_civ_jaune: Mrshounka_a3_ds3_civ {};
	class Mrshounka_a3_ds3_civ_civ_rose: Mrshounka_a3_ds3_civ {};
	class Mrshounka_a3_ds3_civ_civ_grise: Mrshounka_a3_ds3_civ {};
	class Mrshounka_a3_ds3_civ_civ_violet: Mrshounka_a3_ds3_civ {};
	class Mrshounka_a3_ds3_civ_civ_orange: Mrshounka_a3_ds3_civ {};

	class shounka_a3_ds4_civ
	{
		realname="Citroen DS4";
		buyPrice=23700;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=60;
		colors[]=
		{
			"shounka_a3_ds4_noir",
			"shounka_a3_ds4_bleufonce",
			"shounka_a3_ds4_rouge",
			"shounka_a3_ds4_jaune",
			"shounka_a3_ds4_rose",
			"shounka_a3_ds4_grise",
			"shounka_a3_ds4_violet",
			"shounka_a3_ds4_orange"
		};
	};
	class shounka_a3_ds4_noir: shounka_a3_ds4_civ {};
	class shounka_a3_ds4_bleufonce: shounka_a3_ds4_civ {};
	class shounka_a3_ds4_rouge: shounka_a3_ds4_civ {};
	class shounka_a3_ds4_jaune: shounka_a3_ds4_civ {};
	class shounka_a3_ds4_rose: shounka_a3_ds4_civ {};
	class shounka_a3_ds4_grise: shounka_a3_ds4_civ {};
	class shounka_a3_ds4_violet: shounka_a3_ds4_civ {};
	class shounka_a3_ds4_orange: shounka_a3_ds4_civ {};

	class Mrshounka_c4_p_civ
	{
		realname="Citroen C4";
		buyPrice=19900;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=60;
		colors[]=
		{
			"Mrshounka_c4_p_bleufonce",
			"Mrshounka_c4_p_grise",
			"Mrshounka_c4_p_jaune",
			"Mrshounka_c4_p_noir",
			"Mrshounka_c4_p_orange",
			"Mrshounka_c4_p_rose",
			"Mrshounka_c4_p_rouge",
			"Mrshounka_c4_p_violet"
		};
	};
	class Mrshounka_c4_p_bleufonce: Mrshounka_c4_p_civ {};
	class Mrshounka_c4_p_grise: Mrshounka_c4_p_civ {};
	class Mrshounka_c4_p_jaune: Mrshounka_c4_p_civ {};
	class Mrshounka_c4_p_noir: Mrshounka_c4_p_civ {};
	class Mrshounka_c4_p_orange: Mrshounka_c4_p_civ {};
	class Mrshounka_c4_p_rose: Mrshounka_c4_p_civ {};
	class Mrshounka_c4_p_rouge: Mrshounka_c4_p_civ {};
	class Mrshounka_c4_p_violet: Mrshounka_c4_p_civ {};

	class shounka_nemo
	{
		realname="Citroen Nemo";
		buyPrice=16000;
		inventory=125;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=45;
		colors[]=
		{
			"shounka_nemo_bleufonce",
			"shounka_nemo_grise",
			"shounka_nemo_jaune",
			"shounka_nemo_noir",
			"shounka_nemo_orange",
			"shounka_nemo_rose",
			"shounka_nemo_rouge",
			"shounka_nemo_violet"
		};
	};
	class shounka_nemo_bleufonce: shounka_nemo {};
	class shounka_nemo_grise: shounka_nemo {};
	class shounka_nemo_jaune: shounka_nemo {};
	class shounka_nemo_noir: shounka_nemo {};
	class shounka_nemo_orange: shounka_nemo {};
	class shounka_nemo_rose: shounka_nemo {};
	class shounka_nemo_rouge: shounka_nemo {};
	class shounka_nemo_violet: shounka_nemo {};

	class shounka_a3_cliors_civ
	{
		realname="Renault Clio";
		buyPrice=13500;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=45;
		colors[]=
		{
			"shounka_a3_cliors_civ_bleufonce",
			"shounka_a3_cliors_civ_grise",
			"shounka_a3_cliors_civ_jaune",
			"shounka_a3_cliors_civ_noir",
			"shounka_a3_cliors_civ_orange",
			"shounka_a3_cliors_civ_rose",
			"shounka_a3_cliors_civ_rouge",
			"shounka_a3_cliors_civ_violet"
		};
	};
	class shounka_a3_cliors_civ_bleufonce: shounka_a3_cliors_civ {};
	class shounka_a3_cliors_civ_grise: shounka_a3_cliors_civ {};
	class shounka_a3_cliors_civ_jaune: shounka_a3_cliors_civ {};
	class shounka_a3_cliors_civ_noir: shounka_a3_cliors_civ {};
	class shounka_a3_cliors_civ_orange: shounka_a3_cliors_civ {};
	class shounka_a3_cliors_civ_rose: shounka_a3_cliors_civ {};
	class shounka_a3_cliors_civ_rouge: shounka_a3_cliors_civ {};
	class shounka_a3_cliors_civ_violet: shounka_a3_cliors_civ {};

	class Mrshounka_a3_dodge15_civ
	{
		realname="Dodge Charger";
		buyPrice=38500;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=68;
		colors[]=
		{
			"Mrshounka_a3_dodge15_civ_bleufonce",
			"Mrshounka_a3_dodge15_civ_grise",
			"Mrshounka_a3_dodge15_civ_jaune",
			"Mrshounka_a3_dodge15_civ_noir",
			"Mrshounka_a3_dodge15_civ_orange",
			"Mrshounka_a3_dodge15_civ_rose",
			"Mrshounka_a3_dodge15_civ_rouge",
			"Mrshounka_a3_dodge15_civ_violet"
		};
	};
	class Mrshounka_a3_dodge15_civ_bleufonce: Mrshounka_a3_dodge15_civ {};
	class Mrshounka_a3_dodge15_civ_grise: Mrshounka_a3_dodge15_civ {};
	class Mrshounka_a3_dodge15_civ_jaune: Mrshounka_a3_dodge15_civ {};
	class Mrshounka_a3_dodge15_civ_noir: Mrshounka_a3_dodge15_civ {};
	class Mrshounka_a3_dodge15_civ_orange: Mrshounka_a3_dodge15_civ {};
	class Mrshounka_a3_dodge15_civ_rose: Mrshounka_a3_dodge15_civ {};
	class Mrshounka_a3_dodge15_civ_rouge: Mrshounka_a3_dodge15_civ {};
	class Mrshounka_a3_dodge15_civ_violet: Mrshounka_a3_dodge15_civ {};

	class Skyline_Vehicule_Shounka_F430_Scuderia
	{
		realname="Ferrari 430 Scuderia";
		buyPrice=685000;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=95;
		colors[]=
		{
			"Skyline_Vehicule_Shounka_F430_Scuderia_01_F",
			"Skyline_Vehicule_Shounka_F430_Scuderia_02_F",
			"Skyline_Vehicule_Shounka_F430_Scuderia_03_F",
			"Skyline_Vehicule_Shounka_F430_Scuderia_04_F",
			"Skyline_Vehicule_Shounka_F430_Scuderia_05_F",
			"Skyline_Vehicule_Shounka_F430_Scuderia_06_F",
			"Skyline_Vehicule_Shounka_F430_Scuderia_07_F",
			"Skyline_Vehicule_Shounka_F430_Scuderia_08_F",
			"Skyline_Vehicule_Shounka_F430_Scuderia_09_F",
			"Skyline_Vehicule_Shounka_F430_Scuderia_10_F",
			"Skyline_Vehicule_Shounka_F430_Scuderia_11_F",
			"Skyline_Vehicule_Shounka_F430_Scuderia_12_F"
		};
	};
	class Skyline_Vehicule_Shounka_F430_Scuderia_01_F: Skyline_Vehicule_Shounka_F430_Scuderia {};
	class Skyline_Vehicule_Shounka_F430_Scuderia_02_F: Skyline_Vehicule_Shounka_F430_Scuderia {};
	class Skyline_Vehicule_Shounka_F430_Scuderia_03_F: Skyline_Vehicule_Shounka_F430_Scuderia {};
	class Skyline_Vehicule_Shounka_F430_Scuderia_04_F: Skyline_Vehicule_Shounka_F430_Scuderia {};
	class Skyline_Vehicule_Shounka_F430_Scuderia_05_F: Skyline_Vehicule_Shounka_F430_Scuderia {};
	class Skyline_Vehicule_Shounka_F430_Scuderia_06_F: Skyline_Vehicule_Shounka_F430_Scuderia {};
	class Skyline_Vehicule_Shounka_F430_Scuderia_07_F: Skyline_Vehicule_Shounka_F430_Scuderia {};
	class Skyline_Vehicule_Shounka_F430_Scuderia_08_F: Skyline_Vehicule_Shounka_F430_Scuderia {};
	class Skyline_Vehicule_Shounka_F430_Scuderia_09_F: Skyline_Vehicule_Shounka_F430_Scuderia {};
	class Skyline_Vehicule_Shounka_F430_Scuderia_10_F: Skyline_Vehicule_Shounka_F430_Scuderia {};
	class Skyline_Vehicule_Shounka_F430_Scuderia_11_F: Skyline_Vehicule_Shounka_F430_Scuderia {};
	class Skyline_Vehicule_Shounka_F430_Scuderia_12_F: Skyline_Vehicule_Shounka_F430_Scuderia {};

	class Mrshounka_mustang_civ
	{
		realname="Ford Mustang";
		buyPrice=63500;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=59;
		colors[]=
		{
			"Mrshounka_mustang_mat",
			"Mrshounka_mustang_noir",
			"Mrshounka_mustang_mat_n",
			"Mrshounka_mustang_bleufonce",
			"Mrshounka_mustang_mat_b",
			"Mrshounka_mustang_rouge",
			"Mrshounka_mustang_jaune",
			"Mrshounka_mustang_rose",
			"Mrshounka_mustang_grise",
			"Mrshounka_mustang_violet",
			"Mrshounka_mustang_orange"
		};
	};
	class Mrshounka_mustang_mat: Mrshounka_mustang_civ {};
	class Mrshounka_mustang_noir: Mrshounka_mustang_civ {};
	class Mrshounka_mustang_mat_n: Mrshounka_mustang_civ {};
	class Mrshounka_mustang_bleufonce: Mrshounka_mustang_civ {};
	class Mrshounka_mustang_mat_b: Mrshounka_mustang_civ {};
	class Mrshounka_mustang_rouge: Mrshounka_mustang_civ {};
	class Mrshounka_mustang_jaune: Mrshounka_mustang_civ {};
	class Mrshounka_mustang_rose: Mrshounka_mustang_civ {};
	class Mrshounka_mustang_grise: Mrshounka_mustang_civ {};
	class Mrshounka_mustang_violet: Mrshounka_mustang_civ {};
	class Mrshounka_mustang_orange: Mrshounka_mustang_civ {};

	class Skyline_GMC_Vandura
	{
		realname="GMC Vendura";
		buyPrice=26000;
		inventory=165;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=83;
		colors[]=
		{
			"Skyline_GMC_Vandura_01_F",
			"Skyline_GMC_Vandura_02_F",
			"Skyline_GMC_Vandura_03_F",
			"Skyline_GMC_Vandura_04_F",
			"Skyline_GMC_Vandura_05_F",
			"Skyline_GMC_Vandura_06_F",
			"Skyline_GMC_Vandura_07_F",
			"Skyline_GMC_Vandura_08_F",
			"Skyline_GMC_Vandura_09_F",
			"Skyline_GMC_Vandura_10_F",
			"Skyline_GMC_Vandura_11_F",
			"Skyline_GMC_Vandura_12_F",
			"Skyline_GMC_Vandura_13_F",
			"Skyline_GMC_Vandura_14_F",
			"Skyline_GMC_Vandura_15_F",
			"Skyline_GMC_Vandura_16_F",
			"Skyline_GMC_Vandura_17_F"
		};
	};
	class Skyline_GMC_Vandura_01_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_02_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_03_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_04_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_05_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_06_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_07_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_08_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_09_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_10_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_11_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_12_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_13_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_14_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_15_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_16_F: Skyline_GMC_Vandura {};
	class Skyline_GMC_Vandura_17_F: Skyline_GMC_Vandura {};

	class Skyline_GMC_Vandura_Radio_02_F
	{
		realname="GMC Vendura radio";
		buyPrice=26000;
		inventory=165;
		side="CIV";
		insurance=1;
		licenses[]={"company_press","driver"};
		fuel="Diesel";
		fuelCapacity=110;
		colors[]={};
	};	

	class Mrshounka_golfvi_civ
	{
		realname="Golf VI";
		buyPrice=12500;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=55;
		colors[]=
		{
			"Mrshounka_golfvi_bleufonce",
			"Mrshounka_golfvi_grise",
			"Mrshounka_golfvi_jaune",
			"Mrshounka_golfvi_noir",
			"Mrshounka_golfvi_orange",
			"Mrshounka_golfvi_rose",
			"Mrshounka_golfvi_rouge",
			"Mrshounka_golfvi_violet"
		};
	};
	class Mrshounka_golfvi_bleufonce: Mrshounka_golfvi_civ {};
	class Mrshounka_golfvi_grise: Mrshounka_golfvi_civ {};
	class Mrshounka_golfvi_jaune: Mrshounka_golfvi_civ {};
	class Mrshounka_golfvi_noir: Mrshounka_golfvi_civ {};
	class Mrshounka_golfvi_orange: Mrshounka_golfvi_civ {};
	class Mrshounka_golfvi_rose: Mrshounka_golfvi_civ {};
	class Mrshounka_golfvi_rouge: Mrshounka_golfvi_civ {};
	class Mrshounka_golfvi_violet: Mrshounka_golfvi_civ {};

	class Mrshounka_hummer_civ
	{
		realname="Hummer H1";
		buyPrice=312000;
		inventory=85;
		side="CIV";
		insurance=0;
		disableOwnerInfos=1;
		licenses[]={"rebelle_1"};
		fuel="Diesel";
		fuelCapacity=95;
		colors[]=
		{
			"Mrshounka_hummer_civ_bleufonce",
			"Mrshounka_hummer_civ_grise",
			"Mrshounka_hummer_civ_jaune",
			"Mrshounka_hummer_civ_noir",
			"Mrshounka_hummer_civ_orange",
			"Mrshounka_hummer_civ_rose",
			"Mrshounka_hummer_civ_rouge",
			"Mrshounka_hummer_civ_violet"
		};
	};
	class Mrshounka_hummer_civ_bleufonce: Mrshounka_hummer_civ {};
	class Mrshounka_hummer_civ_grise: Mrshounka_hummer_civ {};
	class Mrshounka_hummer_civ_jaune: Mrshounka_hummer_civ {};
	class Mrshounka_hummer_civ_noir: Mrshounka_hummer_civ {};
	class Mrshounka_hummer_civ_orange: Mrshounka_hummer_civ {};
	class Mrshounka_hummer_civ_rose: Mrshounka_hummer_civ {};
	class Mrshounka_hummer_civ_rouge: Mrshounka_hummer_civ {};
	class Mrshounka_hummer_civ_violet: Mrshounka_hummer_civ {};

	class Mrshounka_cherokee_noir
	{
		realname="Jeep Cherokee";
		buyPrice=43000;
		inventory=85;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=60;
		colors[]=
		{
			"Mrshounka_cherokee_noir_mat",
			"Mrshounka_cherokee_noir_bleu",
			"Mrshounka_cherokee_noir_bleu_mat",
			"Mrshounka_cherokee_noir_blanc",
			"Mrshounka_cherokee_noir_blanc_mat",
			"Mrshounka_cherokee_noir_violet",
			"Mrshounka_cherokee_noir_violet_mat",
			"Mrshounka_cherokee_noir_rouge",
			"Mrshounka_cherokee_noir_rouge_mat"
		};
	};
	class Mrshounka_cherokee_noir_mat: Mrshounka_cherokee_noir {};
	class Mrshounka_cherokee_noir_bleu: Mrshounka_cherokee_noir {};
	class Mrshounka_cherokee_noir_bleu_mat: Mrshounka_cherokee_noir {};
	class Mrshounka_cherokee_noir_blanc: Mrshounka_cherokee_noir {};
	class Mrshounka_cherokee_noir_blanc_mat: Mrshounka_cherokee_noir {};
	class Mrshounka_cherokee_noir_violet: Mrshounka_cherokee_noir {};
	class Mrshounka_cherokee_noir_violet_mat: Mrshounka_cherokee_noir {};
	class Mrshounka_cherokee_noir_rouge: Mrshounka_cherokee_noir {};
	class Mrshounka_cherokee_noir_rouge_mat: Mrshounka_cherokee_noir {};

	class Mrshounka_evox_civ
	{
		realname="Lancer Evolution";
		buyPrice=23400;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=55;
		colors[]=
		{
			"Mrshounka_evox_bleufonce",
			"Mrshounka_evox_grise",
			"Mrshounka_evox_jaune",
			"Mrshounka_evox_noir",
			"Mrshounka_evox_orange",
			"Mrshounka_evox_rose",
			"Mrshounka_evox_rouge",
			"Mrshounka_evox_violet"
		};
	};
	class Mrshounka_evox_bleufonce: Mrshounka_evox_civ {};
	class Mrshounka_evox_grise: Mrshounka_evox_civ {};
	class Mrshounka_evox_jaune: Mrshounka_evox_civ {};
	class Mrshounka_evox_noir: Mrshounka_evox_civ {};
	class Mrshounka_evox_orange: Mrshounka_evox_civ {};
	class Mrshounka_evox_rose: Mrshounka_evox_civ {};
	class Mrshounka_evox_rouge: Mrshounka_evox_civ {};
	class Mrshounka_evox_violet: Mrshounka_evox_civ {};

	class shounka_limo_civ
	{
		realname="Limousine";
		buyPrice=180000;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver","company_transport_people"};
		fuel="Diesel";
		fuelCapacity=88;
		colors[]=
		{
			"shounka_limo_civ_bleufonce",
			"shounka_limo_civ_grise",
			"shounka_limo_civ_jaune",
			"shounka_limo_civ_noir",
			"shounka_limo_civ_orange",
			"shounka_limo_civ_rose",
			"shounka_limo_civ_rouge",
			"shounka_limo_civ_violet"
		};
	};
	class shounka_limo_civ_bleufonce: shounka_limo_civ {};
	class shounka_limo_civ_grise: shounka_limo_civ {};
	class shounka_limo_civ_jaune: shounka_limo_civ {};
	class shounka_limo_civ_noir: shounka_limo_civ {};
	class shounka_limo_civ_orange: shounka_limo_civ {};
	class shounka_limo_civ_rose: shounka_limo_civ {};
	class shounka_limo_civ_rouge: shounka_limo_civ {};
	class shounka_limo_civ_violet: shounka_limo_civ {};

	class Mrshounka_lykan_c
	{
		realname="Lykan Hypersport";
		buyPrice=875000;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=79;
		colors[]=
		{
			"Mrshounka_lykan_c_bleufonce",
			"Mrshounka_lykan_c_grise",
			"Mrshounka_lykan_c_jaune",
			"Mrshounka_lykan_c_noir",
			"Mrshounka_lykan_c_orange",
			"Mrshounka_lykan_c_rose",
			"Mrshounka_lykan_c_rouge",
			"Mrshounka_lykan_c_violet"
		};
	};
	class Mrshounka_lykan_c_bleufonce: Mrshounka_lykan_c {};
	class Mrshounka_lykan_c_grise: Mrshounka_lykan_c {};
	class Mrshounka_lykan_c_jaune: Mrshounka_lykan_c {};
	class Mrshounka_lykan_c_noir: Mrshounka_lykan_c {};
	class Mrshounka_lykan_c_orange: Mrshounka_lykan_c {};
	class Mrshounka_lykan_c_rose: Mrshounka_lykan_c {};
	class Mrshounka_lykan_c_rouge: Mrshounka_lykan_c {};
	class Mrshounka_lykan_c_violet: Mrshounka_lykan_c {};

	class Skyline_Vehicule_Shounka_McLaren_MP4
	{
		realname="McLaren MP4-12C";
		buyPrice=915000;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=72;
		colors[]=
		{
			"Skyline_Vehicule_Shounka_McLaren_MP4_01_F",
			"Skyline_Vehicule_Shounka_McLaren_MP4_02_F",
			"Skyline_Vehicule_Shounka_McLaren_MP4_03_F",
			"Skyline_Vehicule_Shounka_McLaren_MP4_04_F",
			"Skyline_Vehicule_Shounka_McLaren_MP4_05_F",
			"Skyline_Vehicule_Shounka_McLaren_MP4_06_F",
			"Skyline_Vehicule_Shounka_McLaren_MP4_07_F",
			"Skyline_Vehicule_Shounka_McLaren_MP4_08_F",
			"Skyline_Vehicule_Shounka_McLaren_MP4_09_F",
			"Skyline_Vehicule_Shounka_McLaren_MP4_10_F",
			"Skyline_Vehicule_Shounka_McLaren_MP4_11_F",
			"Skyline_Vehicule_Shounka_McLaren_MP4_12_F"
		};
	};
	class Skyline_Vehicule_Shounka_McLaren_MP4_01_F: Skyline_Vehicule_Shounka_McLaren_MP4 {};
	class Skyline_Vehicule_Shounka_McLaren_MP4_02_F: Skyline_Vehicule_Shounka_McLaren_MP4 {};
	class Skyline_Vehicule_Shounka_McLaren_MP4_03_F: Skyline_Vehicule_Shounka_McLaren_MP4 {};
	class Skyline_Vehicule_Shounka_McLaren_MP4_04_F: Skyline_Vehicule_Shounka_McLaren_MP4 {};
	class Skyline_Vehicule_Shounka_McLaren_MP4_05_F: Skyline_Vehicule_Shounka_McLaren_MP4 {};
	class Skyline_Vehicule_Shounka_McLaren_MP4_06_F: Skyline_Vehicule_Shounka_McLaren_MP4 {};
	class Skyline_Vehicule_Shounka_McLaren_MP4_07_F: Skyline_Vehicule_Shounka_McLaren_MP4 {};
	class Skyline_Vehicule_Shounka_McLaren_MP4_08_F: Skyline_Vehicule_Shounka_McLaren_MP4 {};
	class Skyline_Vehicule_Shounka_McLaren_MP4_09_F: Skyline_Vehicule_Shounka_McLaren_MP4 {};
	class Skyline_Vehicule_Shounka_McLaren_MP4_10_F: Skyline_Vehicule_Shounka_McLaren_MP4 {};
	class Skyline_Vehicule_Shounka_McLaren_MP4_11_F: Skyline_Vehicule_Shounka_McLaren_MP4 {};
	class Skyline_Vehicule_Shounka_McLaren_MP4_12_F: Skyline_Vehicule_Shounka_McLaren_MP4 {};

	class Mrshounka_mercedes_190_p_civ
	{
		realname="Mercedes 190";
		buyPrice=45250;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=55;
		colors[]=
		{
			"Mrshounka_mercedes_190_p_bleufonce",
			"Mrshounka_mercedes_190_p_grise",
			"Mrshounka_mercedes_190_p_jaune",
			"Mrshounka_mercedes_190_p_noir",
			"Mrshounka_mercedes_190_p_orange",
			"Mrshounka_mercedes_190_p_rose",
			"Mrshounka_mercedes_190_p_rouge",
			"Mrshounka_mercedes_190_p_violet"
		};
	};
	class Mrshounka_mercedes_190_p_bleufonce: Mrshounka_mercedes_190_p_civ {};
	class Mrshounka_mercedes_190_p_grise: Mrshounka_mercedes_190_p_civ {};
	class Mrshounka_mercedes_190_p_jaune: Mrshounka_mercedes_190_p_civ {};
	class Mrshounka_mercedes_190_p_noir: Mrshounka_mercedes_190_p_civ {};
	class Mrshounka_mercedes_190_p_orange: Mrshounka_mercedes_190_p_civ {};
	class Mrshounka_mercedes_190_p_rose: Mrshounka_mercedes_190_p_civ {};
	class Mrshounka_mercedes_190_p_rouge: Mrshounka_mercedes_190_p_civ {};
	class Mrshounka_mercedes_190_p_violet: Mrshounka_mercedes_190_p_civ {};

	class Mrshounka_c63_2015_civ
	{
		realname="Mercedes C63";
		buyPrice=96000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=66;
		colors[]=
		{
			"Mrshounka_c63_2015_mat",
			"Mrshounka_c63_2015_noir",
			"Mrshounka_c63_2015_mat_n",
			"Mrshounka_c63_2015_bleufonce",
			"Mrshounka_c63_2015_mat_b",
			"Mrshounka_c63_2015_rouge",
			"Mrshounka_c63_2015_jaune",
			"Mrshounka_c63_2015_rose",
			"Mrshounka_c63_2015_grise",
			"Mrshounka_c63_2015_violet",
			"Mrshounka_c63_2015_orange"
		};
	};
	class Mrshounka_c63_2015_mat: Mrshounka_c63_2015_civ {};
	class Mrshounka_c63_2015_noir: Mrshounka_c63_2015_civ {};
	class Mrshounka_c63_2015_mat_n: Mrshounka_c63_2015_civ {};
	class Mrshounka_c63_2015_bleufonce: Mrshounka_c63_2015_civ {};
	class Mrshounka_c63_2015_mat_b: Mrshounka_c63_2015_civ {};
	class Mrshounka_c63_2015_rouge: Mrshounka_c63_2015_civ {};
	class Mrshounka_c63_2015_jaune: Mrshounka_c63_2015_civ {};
	class Mrshounka_c63_2015_rose: Mrshounka_c63_2015_civ {};
	class Mrshounka_c63_2015_grise: Mrshounka_c63_2015_civ {};
	class Mrshounka_c63_2015_violet: Mrshounka_c63_2015_civ {};
	class Mrshounka_c63_2015_orange: Mrshounka_c63_2015_civ {};

	class shounka_clk
	{
		realname="Mercedes CLK";
		buyPrice=67500;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=62;
		colors[]=
		{
			"shounka_clk_bleufonce",
			"shounka_clk_grise",
			"shounka_clk_jaune",
			"shounka_clk_noir",
			"shounka_clk_orange",
			"shounka_clk_rose",
			"shounka_clk_rouge",
			"shounka_clk_violet"
		};
	};
	class shounka_clk_bleufonce: shounka_clk {};
	class shounka_clk_grise: shounka_clk {};
	class shounka_clk_jaune: shounka_clk {};
	class shounka_clk_noir: shounka_clk {};
	class shounka_clk_orange: shounka_clk {};
	class shounka_clk_rose: shounka_clk {};
	class shounka_clk_rouge: shounka_clk {};
	class shounka_clk_violet: shounka_clk {};

	class shounka_a3_spr_civ
	{
		realname="Mercedes Sprinter";
		buyPrice=51500;
		inventory=200;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=100;
		colors[]=
		{
			"shounka_a3_spr_civ_bleufonce",
			"shounka_a3_spr_civ_grise",
			"shounka_a3_spr_civ_jaune",
			"shounka_a3_spr_civ_noir",
			"shounka_a3_spr_civ_orange",
			"shounka_a3_spr_civ_rose",
			"shounka_a3_spr_civ_rouge",
			"shounka_a3_spr_civ_violet"
		};
	};
	class shounka_a3_spr_civ_bleufonce: shounka_a3_spr_civ {};
	class shounka_a3_spr_civ_grise: shounka_a3_spr_civ {};
	class shounka_a3_spr_civ_jaune: shounka_a3_spr_civ {};
	class shounka_a3_spr_civ_noir: shounka_a3_spr_civ {};
	class shounka_a3_spr_civ_orange: shounka_a3_spr_civ {};
	class shounka_a3_spr_civ_rose: shounka_a3_spr_civ {};
	class shounka_a3_spr_civ_rouge: shounka_a3_spr_civ {};
	class shounka_a3_spr_civ_violet: shounka_a3_spr_civ {};

	class Skyline_Mercedes_Sprinter
	{
		realname="Mercedes Sprinter";
		buyPrice=110000;
		inventory=200;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=100;
		colors[]=
		{
			"Skyline_Mercedes_Sprinter_01_F",
			"Skyline_Mercedes_Sprinter_02_F",
			"Skyline_Mercedes_Sprinter_03_F",
			"Skyline_Mercedes_Sprinter_04_F",
			"Skyline_Mercedes_Sprinter_05_F",
			"Skyline_Mercedes_Sprinter_06_F",
			"Skyline_Mercedes_Sprinter_07_F",
			"Skyline_Mercedes_Sprinter_08_F",
			"Skyline_Mercedes_Sprinter_09_F",
			"Skyline_Mercedes_Sprinter_10_F",
			"Skyline_Mercedes_Sprinter_11_F",
			"Skyline_Mercedes_Sprinter_12_F",
			"Skyline_Mercedes_Sprinter_13_F",
			"Skyline_Mercedes_Sprinter_14_F",
			"Skyline_Mercedes_Sprinter_15_F",
			"Skyline_Mercedes_Sprinter_16_F"
		};
	};
	class Skyline_Mercedes_Sprinter_01_F: Skyline_Mercedes_Sprinter {};
	class Skyline_Mercedes_Sprinter_02_F: Skyline_Mercedes_Sprinter {};
	class Skyline_Mercedes_Sprinter_03_F: Skyline_Mercedes_Sprinter {};
	class Skyline_Mercedes_Sprinter_04_F: Skyline_Mercedes_Sprinter {};
	class Skyline_Mercedes_Sprinter_05_F: Skyline_Mercedes_Sprinter {};
	class Skyline_Mercedes_Sprinter_06_F: Skyline_Mercedes_Sprinter {};
	class Skyline_Mercedes_Sprinter_07_F: Skyline_Mercedes_Sprinter {};
	class Skyline_Mercedes_Sprinter_08_F: Skyline_Mercedes_Sprinter {};
	class Skyline_Mercedes_Sprinter_09_F: Skyline_Mercedes_Sprinter {};
	class Skyline_Mercedes_Sprinter_10_F: Skyline_Mercedes_Sprinter {};
	class Skyline_Mercedes_Sprinter_11_F: Skyline_Mercedes_Sprinter {};
	class Skyline_Mercedes_Sprinter_12_F: Skyline_Mercedes_Sprinter {};
	class Skyline_Mercedes_Sprinter_13_F: Skyline_Mercedes_Sprinter {};
	class Skyline_Mercedes_Sprinter_14_F: Skyline_Mercedes_Sprinter {};
	class Skyline_Mercedes_Sprinter_15_F: Skyline_Mercedes_Sprinter {};
	class Skyline_Mercedes_Sprinter_16_F: Skyline_Mercedes_Sprinter {};

	class Skyline_Mercedes_Sprinter_Depannage
	{
		realname="Mercedes Sprinter Dépanneur";
		buyPrice=51500;
		inventory=200;
		side="CIV";
		insurance=1;
		licenses[]={"driver","company_garagist"};
		fuel="Diesel";
		fuelCapacity=100;
		colors[]=
		{
			"Skyline_Mercedes_Sprinter_Depannage_01_F",
			"Skyline_Mercedes_Sprinter_Depannage_02_F",
			"Alysia_garage_01"
		};
	};
	class Skyline_Mercedes_Sprinter_Depannage_01_F: Skyline_Mercedes_Sprinter_Depannage {};
	class Skyline_Mercedes_Sprinter_Depannage_02_F: Skyline_Mercedes_Sprinter_Depannage {};
	class Alysia_garage_01: Skyline_Mercedes_Sprinter_Depannage 
	{
		colors[]={};
	};

	class Maels_Mercedes_Sprinter_fast_repair: Skyline_Mercedes_Sprinter_Depannage 
	{
		colors[]={};
	};
	
	class Mrshounka_a3_gtr_civ
	{
		realname="Nissan GTR";
		buyPrice=95300;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=74;
		colors[]=
		{
			"Mrshounka_a3_gtr_civ_noir",
			"Mrshounka_a3_gtr_civ_bleu"
		};
	};
	class Mrshounka_a3_gtr_civ_noir: Mrshounka_a3_gtr_civ {};
	class Mrshounka_a3_gtr_civ_bleu: Mrshounka_a3_gtr_civ {};

	class Mrshounka_207_civ
	{
		realname="Peugeot 207";
		buyPrice=12000;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=50;
		colors[]=
		{
			"Mrshounka_207_bleufonce",
			"Mrshounka_207_grise",
			"Mrshounka_207_jaune",
			"Mrshounka_207_noir",
			"Mrshounka_207_orange",
			"Mrshounka_207_rose",
			"Mrshounka_207_rouge",
			"Mrshounka_207_violet"
		};
	};
	class Mrshounka_207_bleufonce: Mrshounka_207_civ {};
	class Mrshounka_207_grise: Mrshounka_207_civ {};
	class Mrshounka_207_jaune: Mrshounka_207_civ {};
	class Mrshounka_207_noir: Mrshounka_207_civ {};
	class Mrshounka_207_orange: Mrshounka_207_civ {};
	class Mrshounka_207_rose: Mrshounka_207_civ {};
	class Mrshounka_207_rouge: Mrshounka_207_civ {};
	class Mrshounka_207_violet: Mrshounka_207_civ {};

	class Mrshounka_a3_308_rcz
	{
		realname="Peugeot 308 RCZ";
		buyPrice=36100;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=55;
		colors[]=
		{
			"Mrshounka_a3_308_rcz_bleufonce",
			"Mrshounka_a3_308_rcz_grise",
			"Mrshounka_a3_308_rcz_jaune",
			"Mrshounka_a3_308_rcz_noir",
			"Mrshounka_a3_308_rcz_orange",
			"Mrshounka_a3_308_rcz_rose",
			"Mrshounka_a3_308_rcz_rouge",
			"Mrshounka_a3_308_rcz_violet"
		};
	};
	class Mrshounka_a3_308_rcz_bleufonce: Mrshounka_a3_308_rcz {};
	class Mrshounka_a3_308_rcz_grise: Mrshounka_a3_308_rcz {};
	class Mrshounka_a3_308_rcz_jaune: Mrshounka_a3_308_rcz {};
	class Mrshounka_a3_308_rcz_noir: Mrshounka_a3_308_rcz {};
	class Mrshounka_a3_308_rcz_orange: Mrshounka_a3_308_rcz {};
	class Mrshounka_a3_308_rcz_rose: Mrshounka_a3_308_rcz {};
	class Mrshounka_a3_308_rcz_rouge: Mrshounka_a3_308_rcz {};
	class Mrshounka_a3_308_rcz_violet: Mrshounka_a3_308_rcz {};

	class shounka_a3_peugeot508_civ
	{
		realname="Peugeot 508";
		buyPrice=28000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=72;
		colors[]=
		{
			"shounka_a3_peugeot508_civ_bleufonce",
			"shounka_a3_peugeot508_civ_grise",
			"shounka_a3_peugeot508_civ_jaune",
			"shounka_a3_peugeot508_civ_noir",
			"shounka_a3_peugeot508_civ_orange",
			"shounka_a3_peugeot508_civ_rose",
			"shounka_a3_peugeot508_civ_rouge",
			"shounka_a3_peugeot508_civ_violet"
		};
	};
	class shounka_a3_peugeot508_civ_bleufonce: shounka_a3_peugeot508_civ {};
	class shounka_a3_peugeot508_civ_grise: shounka_a3_peugeot508_civ {};
	class shounka_a3_peugeot508_civ_jaune: shounka_a3_peugeot508_civ {};
	class shounka_a3_peugeot508_civ_noir: shounka_a3_peugeot508_civ {};
	class shounka_a3_peugeot508_civ_orange: shounka_a3_peugeot508_civ {};
	class shounka_a3_peugeot508_civ_rose: shounka_a3_peugeot508_civ {};
	class shounka_a3_peugeot508_civ_rouge: shounka_a3_peugeot508_civ {};
	class shounka_a3_peugeot508_civ_violet: shounka_a3_peugeot508_civ {};

	class Skyline_Vehicule_Shounka_Porsche911
	{
		realname="Porshe 911 Turbo";
		buyPrice=215000;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=64;
		colors[]=
		{
			"Skyline_Vehicule_Shounka_Porsche911_01_F",
			"Skyline_Vehicule_Shounka_Porsche911_02_F",
			"Skyline_Vehicule_Shounka_Porsche911_03_F",
			"Skyline_Vehicule_Shounka_Porsche911_04_F",
			"Skyline_Vehicule_Shounka_Porsche911_05_F",
			"Skyline_Vehicule_Shounka_Porsche911_06_F",
			"Skyline_Vehicule_Shounka_Porsche911_07_F",
			"Skyline_Vehicule_Shounka_Porsche911_08_F",
			"Skyline_Vehicule_Shounka_Porsche911_09_F",
			"Skyline_Vehicule_Shounka_Porsche911_10_F",
			"Skyline_Vehicule_Shounka_Porsche911_11_F",
			"Skyline_Vehicule_Shounka_Porsche911_12_F"
		};
	};
	class Skyline_Vehicule_Shounka_Porsche911_01_F: Skyline_Vehicule_Shounka_Porsche911 {};
	class Skyline_Vehicule_Shounka_Porsche911_02_F: Skyline_Vehicule_Shounka_Porsche911 {};
	class Skyline_Vehicule_Shounka_Porsche911_03_F: Skyline_Vehicule_Shounka_Porsche911 {};
	class Skyline_Vehicule_Shounka_Porsche911_04_F: Skyline_Vehicule_Shounka_Porsche911 {};
	class Skyline_Vehicule_Shounka_Porsche911_05_F: Skyline_Vehicule_Shounka_Porsche911 {};
	class Skyline_Vehicule_Shounka_Porsche911_06_F: Skyline_Vehicule_Shounka_Porsche911 {};
	class Skyline_Vehicule_Shounka_Porsche911_07_F: Skyline_Vehicule_Shounka_Porsche911 {};
	class Skyline_Vehicule_Shounka_Porsche911_08_F: Skyline_Vehicule_Shounka_Porsche911 {};
	class Skyline_Vehicule_Shounka_Porsche911_09_F: Skyline_Vehicule_Shounka_Porsche911 {};
	class Skyline_Vehicule_Shounka_Porsche911_10_F: Skyline_Vehicule_Shounka_Porsche911 {};
	class Skyline_Vehicule_Shounka_Porsche911_11_F: Skyline_Vehicule_Shounka_Porsche911 {};
	class Skyline_Vehicule_Shounka_Porsche911_12_F: Skyline_Vehicule_Shounka_Porsche911 {};

	class mrshounka_92_civ
	{
		realname="Porshe 92";
		buyPrice=325000;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=68;
		colors[]=
		{
			"mrshounka_92_civ_bleufonce",
			"mrshounka_92_civ_grise",
			"mrshounka_92_civ_jaune",
			"mrshounka_92_civ_noir",
			"mrshounka_92_civ_orange",
			"mrshounka_92_civ_rose",
			"mrshounka_92_civ_rouge",
			"mrshounka_92_civ_violet"
		};
	};
	class mrshounka_92_civ_bleufonce: mrshounka_92_civ {};
	class mrshounka_92_civ_grise: mrshounka_92_civ {};
	class mrshounka_92_civ_jaune: mrshounka_92_civ {};
	class mrshounka_92_civ_noir: mrshounka_92_civ {};
	class mrshounka_92_civ_orange: mrshounka_92_civ {};
	class mrshounka_92_civ_rose: mrshounka_92_civ {};
	class mrshounka_92_civ_rouge: mrshounka_92_civ {};
	class mrshounka_92_civ_violet: mrshounka_92_civ {};

	class Mrshounka_cayenne_p_civ
	{
		realname="Porshe Cayenne";
		buyPrice=85000;
		inventory=60;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=80;
		colors[]=
		{
			"Mrshounka_cayenne_p_bleufonce",
			"Mrshounka_cayenne_p_grise",
			"Mrshounka_cayenne_p_jaune",
			"Mrshounka_cayenne_p_noir",
			"Mrshounka_cayenne_p_orange",
			"Mrshounka_cayenne_p_rose",
			"Mrshounka_cayenne_p_rouge",
			"Mrshounka_cayenne_p_violet"
		};
	};
	class Mrshounka_cayenne_p_bleufonce: Mrshounka_cayenne_p_civ {};
	class Mrshounka_cayenne_p_grise: Mrshounka_cayenne_p_civ {};
	class Mrshounka_cayenne_p_jaune: Mrshounka_cayenne_p_civ {};
	class Mrshounka_cayenne_p_noir: Mrshounka_cayenne_p_civ {};
	class Mrshounka_cayenne_p_orange: Mrshounka_cayenne_p_civ {};
	class Mrshounka_cayenne_p_rose: Mrshounka_cayenne_p_civ {};
	class Mrshounka_cayenne_p_rouge: Mrshounka_cayenne_p_civ {};
	class Mrshounka_cayenne_p_violet: Mrshounka_cayenne_p_civ {};

	class Mrshounka_r5_civ
	{
		realname="Renault 5";
		buyPrice=8000;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=93;
		colors[]=
		{
			"Mrshounka_r5_bleufonce",
			"Mrshounka_r5_grise",
			"Mrshounka_r5_jaune",
			"Mrshounka_r5_noir",
			"Mrshounka_r5_orange",
			"Mrshounka_r5_rose",
			"Mrshounka_r5_rouge",
			"Mrshounka_r5_violet"
		};
	};
	class Mrshounka_r5_bleufonce: Mrshounka_r5_civ {};
	class Mrshounka_r5_grise: Mrshounka_r5_civ {};
	class Mrshounka_r5_jaune: Mrshounka_r5_civ {};
	class Mrshounka_r5_noir: Mrshounka_r5_civ {};
	class Mrshounka_r5_orange: Mrshounka_r5_civ {};
	class Mrshounka_r5_rose: Mrshounka_r5_civ {};
	class Mrshounka_r5_rouge: Mrshounka_r5_civ {};
	class Mrshounka_r5_violet: Mrshounka_r5_civ {};

	class Mrshounka_megane_rs_2015_civ
	{
		realname="Renault Megane RS";
		buyPrice=28000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=60;
		colors[]=
		{
			"Mrshounka_megane_rs_2015_bleufonce",
			"Mrshounka_megane_rs_2015_grise",
			"Mrshounka_megane_rs_2015_jaune",
			"Mrshounka_megane_rs_2015_noir",
			"Mrshounka_megane_rs_2015_orange",
			"Mrshounka_megane_rs_2015_rose",
			"Mrshounka_megane_rs_2015_rouge",
			"Mrshounka_megane_rs_2015_violet"
		};
	};
	class Mrshounka_megane_rs_2015_bleufonce: Mrshounka_megane_rs_2015_civ {};
	class Mrshounka_megane_rs_2015_grise: Mrshounka_megane_rs_2015_civ {};
	class Mrshounka_megane_rs_2015_jaune: Mrshounka_megane_rs_2015_civ {};
	class Mrshounka_megane_rs_2015_noir: Mrshounka_megane_rs_2015_civ {};
	class Mrshounka_megane_rs_2015_orange: Mrshounka_megane_rs_2015_civ {};
	class Mrshounka_megane_rs_2015_rose: Mrshounka_megane_rs_2015_civ {};
	class Mrshounka_megane_rs_2015_rouge: Mrshounka_megane_rs_2015_civ {};
	class Mrshounka_megane_rs_2015_violet: Mrshounka_megane_rs_2015_civ {};

	class Mrshounka_twingo_p
	{
		realname="Renault Twingo";
		buyPrice=10900;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=40;
		colors[]=
		{
			"Mrshounka_twingo_p_noir",
			"Mrshounka_twingo_p_bf",
			"Mrshounka_twingo_p_r",
			"Mrshounka_twingo_p_j",
			"Mrshounka_twingo_p_rose",
			"Mrshounka_twingo_p_g",
			"Mrshounka_twingo_p_v",
			"Mrshounka_twingo_p_o"
		};
	};
	class Mrshounka_twingo_p_noir: Mrshounka_twingo_p {};
	class Mrshounka_twingo_p_bf: Mrshounka_twingo_p {};
	class Mrshounka_twingo_p_r: Mrshounka_twingo_p {};
	class Mrshounka_twingo_p_j: Mrshounka_twingo_p {};
	class Mrshounka_twingo_p_rose: Mrshounka_twingo_p {};
	class Mrshounka_twingo_p_g: Mrshounka_twingo_p {};
	class Mrshounka_twingo_p_v: Mrshounka_twingo_p {};
	class Mrshounka_twingo_p_o: Mrshounka_twingo_p {};

	class Mrshounka_a3_smart_civ
	{
		realname="Smart";
		buyPrice=18000;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=33;
		colors[]=
		{
			"Mrshounka_a3_smart_civ_noir",
			"Mrshounka_a3_smart_civ_bleu"
		};
	};
	class Mrshounka_a3_smart_civ_noir: Mrshounka_a3_smart_civ {};
	class Mrshounka_a3_smart_civ_bleu: Mrshounka_a3_smart_civ {};

	class Mrshounka_subaru08_civ
	{
		realname="Subaru Impreza";
		buyPrice=37000;
		inventory=60;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=60;
		colors[]=
		{
			"Mrshounka_subaru08_bleufonce",
			"Mrshounka_subaru08_grise",
			"Mrshounka_subaru08_jaune",
			"Mrshounka_subaru08_noir",
			"Mrshounka_subaru08_orange",
			"Mrshounka_subaru08_rose",
			"Mrshounka_subaru08_rouge",
			"Mrshounka_subaru08_violet"
		};
	};
	class Mrshounka_subaru08_bleufonce: Mrshounka_subaru08_civ {};
	class Mrshounka_subaru08_grise: Mrshounka_subaru08_civ {};
	class Mrshounka_subaru08_jaune: Mrshounka_subaru08_civ {};
	class Mrshounka_subaru08_noir: Mrshounka_subaru08_civ {};
	class Mrshounka_subaru08_orange: Mrshounka_subaru08_civ {};
	class Mrshounka_subaru08_rose: Mrshounka_subaru08_civ {};
	class Mrshounka_subaru08_rouge: Mrshounka_subaru08_civ {};
	class Mrshounka_subaru08_violet: Mrshounka_subaru08_civ {};

	class shounka_a3_dafxf_euro6_f
	{
		realname="Daf euro 6";
		buyPrice=25000;
		inventory=150;
		side="CIV";
		insurance=1;
		licenses[]={"truck"};
		fuel="Diesel";
		fuelCapacity=400;
	};

	class shounka_a3_tgs
	{
		realname="Man TGS dépannage";
		buyPrice=25000;
		inventory=150;
		side="CIV";
		insurance=1;
		licenses[]={"truck","company_garagist"};
		fuel="Diesel";
		fuelCapacity=400;
	};

	class SAL_AudiCiv
	{
		realname="Audi A4";
		buyPrice=60000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=54;
		colors[]=
		{
			"SAL_AudiCiv",
			"SAL_AudiCivRed",
			"SAL_AudiCivSilver",
			"SAL_AudiCivBlack"
		};
	};
  	class SAL_AudiCivRed: SAL_AudiCiv {};
  	class SAL_AudiCivSilver: SAL_AudiCiv {};
  	class SAL_AudiCivBlack: SAL_AudiCiv {};

  	class DAR_ChallengerCiv
	{
		realname="Dodge Challenger";
		buyPrice=35350;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=70;
		colors[]=
		{
			"DAR_ChallengerCivWhite",
			"DAR_ChallengerCivRed",
			"DAR_ChallengerCivBlack",
			"DAR_ChallengerCivOrange"
		};
	};
  	class DAR_ChallengerCivWhite: DAR_ChallengerCiv {};
  	class DAR_ChallengerCivRed: DAR_ChallengerCiv {};
  	class DAR_ChallengerCivBlack: DAR_ChallengerCiv {};
  	class DAR_ChallengerCivOrange: DAR_ChallengerCiv {};

	class B_Truck_01_transport_F
	{
		realname="HEMTT Transport";
		buyPrice=25000;
		inventory=150;
		side="CIV";
		insurance=1;
		licenses[]={"truck"};
		fuel="Diesel";
		fuelCapacity=587;
	};

	class B_Truck_01_covered_F
	{
		realname="HEMTT Couvert";
		buyPrice=25000;
		inventory=150;
		side="CIV";
		insurance=1;
		licenses[]={"truck"};
		fuel="Diesel";
		fuelCapacity=587;
	};

	class B_Truck_01_box_F
	{
		realname="HEMTT Box";
		buyPrice=25000;
		inventory=150;
		side="CIV";
		insurance=1;
		licenses[]={"truck"};
		fuel="Diesel";
		fuelCapacity=587;
	};

  	class DAR_M3Civ
	{
		realname="BMW M3";
		buyPrice=48000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=60;
		colors[]=
		{
			"DAR_M3CivBlack",
			"DAR_M3CivWhite",
			"DAR_M3CivGrey"
		};
	};
  	class DAR_M3CivBlack: DAR_M3Civ {};
  	class DAR_M3CivWhite: DAR_M3Civ {};
  	class DAR_M3CivGrey: DAR_M3Civ {};

    class C_Van_01_transport_F
	{
		realname="Camionnette transport";
		buyPrice=46000;
		inventory=175;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=100;
	};

    class C_Van_01_box_F
	{
		realname="Camionnette caisse";
		buyPrice=49250;
		inventory=185;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=100;
	};

    class RDS_Gaz24_Civ
	{
		realname="Gaz";
		buyPrice=800;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="GPL";
		fuelCapacity=55;
		colors[]=
		{
			"RDS_Gaz24_Civ_01",
			"RDS_Gaz24_Civ_02",
			"RDS_Gaz24_Civ_03"
		};
	};
  	class RDS_Gaz24_Civ_01: RDS_Gaz24_Civ {};
  	class RDS_Gaz24_Civ_02: RDS_Gaz24_Civ {};
  	class RDS_Gaz24_Civ_03: RDS_Gaz24_Civ {};

  	class RDS_Golf4_Civ_01
	{
		realname="Golf IV";
		buyPrice=1800;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=55;
	};

	class C_Quadbike_01_F
	{
		realname="Quad";
		buyPrice=800;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={};
		fuel="SP95";
		fuelCapacity=8;
		colors[]=
		{
			"C_Quadbike_01_black_F",
			"C_Quadbike_01_blue_F",
			"C_Quadbike_01_red_F",
			"C_Quadbike_01_white_F"
		};
	};
	class C_Quadbike_01_black_F: C_Quadbike_01_F {};
	class C_Quadbike_01_blue_F: C_Quadbike_01_F {};
	class C_Quadbike_01_red_F: C_Quadbike_01_F {};
	class C_Quadbike_01_white_F: C_Quadbike_01_F {};

	class RDS_S1203_Civ_01
	{
		realname="Skoda 1203";
		buyPrice=900;
		inventory=60;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=40;
	};

	class RDS_Octavia_Civ_01
	{
		realname="Skoda Octavia";
		buyPrice=1800;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=50;
	};

	class RDS_Lada_Civ
	{
		realname="Vaz 2103";
		buyPrice=800;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="GPL";
		fuelCapacity=39;
		colors[]=
		{
			"RDS_Lada_Civ_01",
			"RDS_Lada_Civ_02",
			"RDS_Lada_Civ_03",
			"RDS_Lada_Civ_04"
		};
	};
  	class RDS_Lada_Civ_01: RDS_Lada_Civ {};
  	class RDS_Lada_Civ_02: RDS_Lada_Civ {};
  	class RDS_Lada_Civ_03: RDS_Lada_Civ {};
  	class RDS_Lada_Civ_04: RDS_Lada_Civ {};

	class sab_a2
	{
		realname="Sab An2";
		buyPrice=325000;
		inventory=150;
		side="CIV";
		insurance=1;
		licenses[]={"pilot"};
		fuel="Kerosene";
		fuelCapacity=90;
		colors[]=
		{
			"sab_BI_An2",
			"Sab_cz_An2",
			"Sab_fd_An2",
			"Sab_yel_An2",
			"Sab_ana_An2",
			"sab_AH_An2",
			"sab_ca_An2",
			"Sab_ee_An2",
			"Sab_ru_An2",
			"Sab_tk_An2",
			"Sab_af_An2",
			"Sab_A2_An2"
		};
	};
  	class sab_BI_An2: sab_a2 {};
  	class Sab_cz_An2: sab_a2 {};
  	class Sab_fd_An2: sab_a2 {};
  	class Sab_yel_An2: sab_a2 {};
  	class Sab_ana_An2: sab_a2 {};
  	class sab_AH_An2: sab_a2 {};
  	class sab_ca_An2: sab_a2 {};
  	class Sab_ee_An2: sab_a2 {};
  	class Sab_ru_An2: sab_a2 {};
  	class Sab_tk_An2: sab_a2 {};
  	class Sab_af_An2: sab_a2 {};
  	class Sab_A2_An2: sab_a2 {};

  	class C_Heli_light //Obselette
	{
		realname="M-900";
		buyPrice=750000;
		inventory=5;
		side="CIV";
		insurance=1;
		licenses[]={"pilot"};
		fuel="Kerosene";
		fuelCapacity=242;
		colors[]=
		{
			"C_Heli_light_01_blue_F",
			"C_Heli_light_01_red_F",
			"C_Heli_light_01_ion_F",
			"C_Heli_light_01_blueLine_F",
			"C_Heli_light_01_digital_F",
			"C_Heli_light_01_elliptical_F",
			"C_Heli_light_01_furious_F",
			"C_Heli_light_01_graywatcher_F",
			"C_Heli_light_01_jeans_F",
			"C_Heli_light_01_light_F",
			"C_Heli_light_01_shadow_F",
			"C_Heli_light_01_sheriff_F",
			"C_Heli_light_01_speedy_F",
			"C_Heli_light_01_sunset_F",
			"C_Heli_light_01_vrana_F",
			"C_Heli_light_01_wasp_F",
			"C_Heli_light_01_wave_F",
			"C_Heli_light_01_stripped_F",
			"C_Heli_light_01_luxe_F"
		};
	};
  	class C_Heli_light_01_blue_F: C_Heli_light {};
  	class C_Heli_light_01_red_F: C_Heli_light {};
  	class C_Heli_light_01_ion_F: C_Heli_light {};
  	class C_Heli_light_01_blueLine_F: C_Heli_light {};
  	class C_Heli_light_01_digital_F: C_Heli_light {};
  	class C_Heli_light_01_elliptical_F: C_Heli_light {};
  	class C_Heli_light_01_furious_F: C_Heli_light {};
  	class C_Heli_light_01_graywatcher_F: C_Heli_light {};
  	class C_Heli_light_01_jeans_F: C_Heli_light {};
  	class C_Heli_light_01_light_F: C_Heli_light {};
  	class C_Heli_light_01_shadow_F: C_Heli_light {};
  	class C_Heli_light_01_sheriff_F: C_Heli_light {};
  	class C_Heli_light_01_speedy_F: C_Heli_light {};
  	class C_Heli_light_01_sunset_F: C_Heli_light {};
  	class C_Heli_light_01_vrana_F: C_Heli_light {};
  	class C_Heli_light_01_wasp_F: C_Heli_light {};
  	class C_Heli_light_01_wave_F: C_Heli_light {};
  	class C_Heli_light_01_stripped_F: C_Heli_light {};
  	class C_Heli_light_01_luxe_F: C_Heli_light {};
	
  	class Skyline_Vehicule_A3_M900_F
	{
		realname="M-900";
		buyPrice=750000;
		inventory=5;
		side="CIV";
		insurance=1;
		licenses[]={"pilot"};
		fuel="Kerosene";
		fuelCapacity=242;
		colors[]=
		{
			"Skyline_Vehicule_A3_M900_01_F",
			"Skyline_Vehicule_A3_M900_02_F",
			"Skyline_Vehicule_A3_M900_04_F",
			"Skyline_Vehicule_A3_M900_05_F",
			"Skyline_Vehicule_A3_M900_06_F",
			"Skyline_Vehicule_A3_M900_07_F",
			"Skyline_Vehicule_A3_M900_08_F",
			"Skyline_Vehicule_A3_M900_09_F",
			"Skyline_Vehicule_A3_M900_10_F",
			"Skyline_Vehicule_A3_M900_11_F",
			"Skyline_Vehicule_A3_M900_12_F",
			"Skyline_Vehicule_A3_M900_13_F",
			"Skyline_Vehicule_A3_M900_14_F",
			"Skyline_Vehicule_A3_M900_15_F",
			"Skyline_Vehicule_A3_M900_16_F",
			"Skyline_Vehicule_A3_M900_17_F",
			"Maels_M_900_18",
			"Maels_M_900_19",
			"Maels_M_900_20",
			"Maels_M_900_21",
			"Maels_M_900_22",
			"Maels_M_900_23",
			"Maels_M_900_24",
			"Maels_M_900_25",
			"Maels_M_900_26",
			"Maels_M_900_27"
		};
	};
  	class Skyline_Vehicule_A3_M900_01_F: Skyline_Vehicule_A3_M900_F {};
  	class Skyline_Vehicule_A3_M900_02_F: Skyline_Vehicule_A3_M900_F {};
  	class Skyline_Vehicule_A3_M900_04_F: Skyline_Vehicule_A3_M900_F {};
  	class Skyline_Vehicule_A3_M900_05_F: Skyline_Vehicule_A3_M900_F {};
  	class Skyline_Vehicule_A3_M900_06_F: Skyline_Vehicule_A3_M900_F {};
  	class Skyline_Vehicule_A3_M900_07_F: Skyline_Vehicule_A3_M900_F {};
  	class Skyline_Vehicule_A3_M900_08_F: Skyline_Vehicule_A3_M900_F {};
  	class Skyline_Vehicule_A3_M900_09_F: Skyline_Vehicule_A3_M900_F {};
  	class Skyline_Vehicule_A3_M900_10_F: Skyline_Vehicule_A3_M900_F {};
  	class Skyline_Vehicule_A3_M900_11_F: Skyline_Vehicule_A3_M900_F {};
  	class Skyline_Vehicule_A3_M900_12_F: Skyline_Vehicule_A3_M900_F {};
  	class Skyline_Vehicule_A3_M900_13_F: Skyline_Vehicule_A3_M900_F {};
  	class Skyline_Vehicule_A3_M900_14_F: Skyline_Vehicule_A3_M900_F {};
  	class Skyline_Vehicule_A3_M900_15_F: Skyline_Vehicule_A3_M900_F {};
  	class Skyline_Vehicule_A3_M900_16_F: Skyline_Vehicule_A3_M900_F {};
  	class Skyline_Vehicule_A3_M900_17_F: Skyline_Vehicule_A3_M900_F {};
  	class Maels_M_900_18: Skyline_Vehicule_A3_M900_F {};
  	class Maels_M_900_19: Skyline_Vehicule_A3_M900_F {};
  	class Maels_M_900_20: Skyline_Vehicule_A3_M900_F {};
  	class Maels_M_900_21: Skyline_Vehicule_A3_M900_F {};
  	class Maels_M_900_22: Skyline_Vehicule_A3_M900_F {};
  	class Maels_M_900_23: Skyline_Vehicule_A3_M900_F {};
  	class Maels_M_900_24: Skyline_Vehicule_A3_M900_F {};
  	class Maels_M_900_25: Skyline_Vehicule_A3_M900_F {};
  	class Maels_M_900_26: Skyline_Vehicule_A3_M900_F {};
  	class Maels_M_900_27: Skyline_Vehicule_A3_M900_F {};

  	class Skyline_Vehicule_A3_M900_F_rebel: Skyline_Vehicule_A3_M900_F
  	{
  		licenses[]={"rebelle_1"};
  		insurance=0;
  		disableOwnerInfos=1;
		colors[]=
		{
			"Skyline_Vehicule_A3_M900_03_F"
		};
  	};
  	class Skyline_Vehicule_A3_M900_03_F: Skyline_Vehicule_A3_M900_F_rebel {};
	
  	class Skyline_Vehicule_A3_Mohawk_F
	{
		realname="CH-49 Mohawk";
		buyPrice=3000000;
		inventory=25;
		side="CIV";
		insurance=1;
		licenses[]={"pilot"};
		fuel="Kerosene";
		fuelCapacity=375;
		colors[]=
		{
			"Skyline_Vehicule_A3_Mohawk_01_F"
		};
	};
  	class Skyline_Vehicule_A3_Mohawk_01_F: Skyline_Vehicule_A3_Mohawk_F {};
	
  	class Skyline_Vehicule_A3_MH9_Unarmed_F
	{
		realname="MH-9 Little-Bird";
		buyPrice=775000;
		inventory=5;
		side="CIV";
		insurance=1;
		licenses[]={"pilot"};
		fuel="Kerosene";
		fuelCapacity=242;
		colors[]=
		{
			"Skyline_Vehicule_A3_MH9_Unarmed_01_F",
			"Skyline_Vehicule_A3_MH9_Unarmed_02_F",
			"Skyline_Vehicule_A3_MH9_Unarmed_04_F",
			"Skyline_Vehicule_A3_MH9_Unarmed_05_F",
			"Skyline_Vehicule_A3_MH9_Unarmed_06_F",
			"Skyline_Vehicule_A3_MH9_Unarmed_07_F",
			"Skyline_Vehicule_A3_MH9_Unarmed_08_F",
			"Skyline_Vehicule_A3_MH9_Unarmed_09_F",
			"Skyline_Vehicule_A3_MH9_Unarmed_10_F",
			"Skyline_Vehicule_A3_MH9_Unarmed_11_F",
			"Skyline_Vehicule_A3_MH9_Unarmed_12_F",
			"Skyline_Vehicule_A3_MH9_Unarmed_13_F",
			"Skyline_Vehicule_A3_MH9_Unarmed_14_F",
			"Skyline_Vehicule_A3_MH9_Unarmed_15_F",
			"Skyline_Vehicule_A3_MH9_Unarmed_16_F",
			"Skyline_Vehicule_A3_MH9_Unarmed_17_F"
		};
	};
  	class Skyline_Vehicule_A3_MH9_Unarmed_01_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};
  	class Skyline_Vehicule_A3_MH9_Unarmed_02_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};
  	class Skyline_Vehicule_A3_MH9_Unarmed_04_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};
  	class Skyline_Vehicule_A3_MH9_Unarmed_05_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};
  	class Skyline_Vehicule_A3_MH9_Unarmed_06_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};
  	class Skyline_Vehicule_A3_MH9_Unarmed_07_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};
  	class Skyline_Vehicule_A3_MH9_Unarmed_08_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};
  	class Skyline_Vehicule_A3_MH9_Unarmed_09_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};
  	class Skyline_Vehicule_A3_MH9_Unarmed_10_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};
  	class Skyline_Vehicule_A3_MH9_Unarmed_11_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};
  	class Skyline_Vehicule_A3_MH9_Unarmed_12_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};
  	class Skyline_Vehicule_A3_MH9_Unarmed_13_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};
  	class Skyline_Vehicule_A3_MH9_Unarmed_14_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};
  	class Skyline_Vehicule_A3_MH9_Unarmed_15_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};
  	class Skyline_Vehicule_A3_MH9_Unarmed_16_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};
  	class Skyline_Vehicule_A3_MH9_Unarmed_17_F: Skyline_Vehicule_A3_MH9_Unarmed_F {};

  	class Skyline_Vehicule_A3_MH9_Unarmed_F_rebel: Skyline_Vehicule_A3_MH9_Unarmed_F
  	{
  		licenses[]={"rebelle_1"};
  		insurance=0;
  		disableOwnerInfos=1;
		colors[]=
		{
			"Skyline_Vehicule_A3_MH9_Unarmed_03_F",
			"Maels_MH9_rebelle_1",
			"Maels_MH9_rebelle_2",
			"Maels_MH9_rebelle_3",
			"Maels_MH9_rebelle_4",
			"Maels_MH9_rebelle_5",
			"Maels_MH9_rebelle_6",
			"Maels_MH9_rebelle_7",
			"Maels_MH9_rebelle_8",
			"Maels_MH9_rebelle_9",
			"Maels_MH9_rebelle_10",
			"Maels_MH9_rebelle_12",
			"Maels_MH9_rebelle_13",
			"Maels_MH9_rebelle_14",
			"Maels_MH9_rebelle_15",
			"Maels_MH9_rebelle_16",
			"Maels_MH9_rebelle_jungle"
		};
  	};
	class Skyline_Vehicule_A3_MH9_Unarmed_03_F: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_1: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_2: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_3: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_4: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_5: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_6: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_7: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_8: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_9: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_10: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_12: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_13: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_14: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_15: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_16: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
	class Maels_MH9_rebelle_jungle: Skyline_Vehicule_A3_MH9_Unarmed_F_rebel {};
 
 	class Skyline_Vehicule_A3_Orca_F
	{
		realname="PO-30 Orca";
		buyPrice=1300000;
		inventory=15;
		side="CIV";
		insurance=1;
		licenses[]={"pilot"};
		fuel="Kerosene";
		fuelCapacity=350;
		colors[]=
		{
			"Skyline_Vehicule_A3_Orca_01_F",
			"Skyline_Vehicule_A3_Orca_02_F",
			"Skyline_Vehicule_A3_Orca_03_F",
			"Skyline_Vehicule_A3_Orca_04_F",
			"Skyline_Vehicule_A3_Orca_05_F"
		};
	};
  	class Skyline_Vehicule_A3_Orca_01_F: Skyline_Vehicule_A3_Orca_F {};
  	class Skyline_Vehicule_A3_Orca_02_F: Skyline_Vehicule_A3_Orca_F {};
  	class Skyline_Vehicule_A3_Orca_03_F: Skyline_Vehicule_A3_Orca_F {};
  	class Skyline_Vehicule_A3_Orca_04_F: Skyline_Vehicule_A3_Orca_F {};
  	class Skyline_Vehicule_A3_Orca_05_F: Skyline_Vehicule_A3_Orca_F {};

	class Skyline_Scania_G420_Depanneuse
	{
		realname="Scania G420 (Dépanneuse)";
		buyPrice=229500;
		inventory=120;
		side="CIV";
		insurance=1;
		licenses[]={"truck","company_garagist"};
		fuel="Diesel";
		fuelCapacity=150;
		colors[]=
		{
			"Skyline_Scania_G420_Depanneuse_01_F",
			"Skyline_Scania_G420_Depanneuse_02_F",
			"Skyline_Scania_G420_Depanneuse_03_F",
			"Skyline_Scania_G420_Depanneuse_04_F",
			"Skyline_Scania_G420_Depanneuse_05_F",
			"Skyline_Scania_G420_Depanneuse_06_F",
			"Skyline_Scania_G420_Depanneuse_07_F",
			"Skyline_Scania_G420_Depanneuse_08_F",
			"Skyline_Scania_G420_Depanneuse_09_F",
			"Skyline_Scania_G420_Depanneuse_10_F",
			"Skyline_Scania_G420_Depanneuse_11_F",
			"Skyline_Scania_G420_Depanneuse_12_F",
			"Skyline_Scania_G420_Depanneuse_13_F",
			"Skyline_Scania_G420_Depanneuse_14_F"
		};
	};
	class Skyline_Scania_G420_Depanneuse_01_F: Skyline_Scania_G420_Depanneuse{};
	class Skyline_Scania_G420_Depanneuse_02_F: Skyline_Scania_G420_Depanneuse{};
	class Skyline_Scania_G420_Depanneuse_03_F: Skyline_Scania_G420_Depanneuse{};
	class Skyline_Scania_G420_Depanneuse_04_F: Skyline_Scania_G420_Depanneuse{};
	class Skyline_Scania_G420_Depanneuse_05_F: Skyline_Scania_G420_Depanneuse{};
	class Skyline_Scania_G420_Depanneuse_06_F: Skyline_Scania_G420_Depanneuse{};
	class Skyline_Scania_G420_Depanneuse_07_F: Skyline_Scania_G420_Depanneuse{};
	class Skyline_Scania_G420_Depanneuse_08_F: Skyline_Scania_G420_Depanneuse{};
	class Skyline_Scania_G420_Depanneuse_09_F: Skyline_Scania_G420_Depanneuse{};
	class Skyline_Scania_G420_Depanneuse_10_F: Skyline_Scania_G420_Depanneuse{};
	class Skyline_Scania_G420_Depanneuse_11_F: Skyline_Scania_G420_Depanneuse{};
	class Skyline_Scania_G420_Depanneuse_12_F: Skyline_Scania_G420_Depanneuse{};
	class Skyline_Scania_G420_Depanneuse_13_F: Skyline_Scania_G420_Depanneuse{};
	class Skyline_Scania_G420_Depanneuse_14_F: Skyline_Scania_G420_Depanneuse{};
	
	class Skyline_Scania_Streamline_Citerne
	{
		realname="Scania Streamline (Citerne)";
		buyPrice=373000;
		inventory=300;
		side="CIV";
		insurance=1;
		licenses[]={"truck","company_fuel"};
		fuel="Diesel";
		fuelCapacity=400;
		colors[]=
		{
			"Skyline_Scania_Streamline_Citerne_01_F",
			"Skyline_Scania_Streamline_Citerne_02_F",
			"Skyline_Scania_Streamline_Citerne_03_F",
			"Skyline_Scania_Streamline_Citerne_04_F",
			"Skyline_Scania_Streamline_Citerne_05_F",
			"Skyline_Scania_Streamline_Citerne_06_F",
			"Skyline_Scania_Streamline_Citerne_07_F",
			"Skyline_Scania_Streamline_Citerne_08_F",
			"Skyline_Scania_Streamline_Citerne_09_F",
			"Skyline_Scania_Streamline_Citerne_10_F",
			"Skyline_Scania_Streamline_Citerne_11_F",
			"Skyline_Scania_Streamline_Citerne_12_F",
			"Skyline_Scania_Streamline_Citerne_13_F"
		};
	};
	class Skyline_Scania_Streamline_Citerne_01_F: Skyline_Scania_Streamline_Citerne {};
	class Skyline_Scania_Streamline_Citerne_02_F: Skyline_Scania_Streamline_Citerne {};
	class Skyline_Scania_Streamline_Citerne_03_F: Skyline_Scania_Streamline_Citerne {};
	class Skyline_Scania_Streamline_Citerne_04_F: Skyline_Scania_Streamline_Citerne {};
	class Skyline_Scania_Streamline_Citerne_05_F: Skyline_Scania_Streamline_Citerne {};
	class Skyline_Scania_Streamline_Citerne_06_F: Skyline_Scania_Streamline_Citerne {};
	class Skyline_Scania_Streamline_Citerne_07_F: Skyline_Scania_Streamline_Citerne {};
	class Skyline_Scania_Streamline_Citerne_08_F: Skyline_Scania_Streamline_Citerne {};
	class Skyline_Scania_Streamline_Citerne_09_F: Skyline_Scania_Streamline_Citerne {};
	class Skyline_Scania_Streamline_Citerne_10_F: Skyline_Scania_Streamline_Citerne {};
	class Skyline_Scania_Streamline_Citerne_11_F: Skyline_Scania_Streamline_Citerne {};
	class Skyline_Scania_Streamline_Citerne_12_F: Skyline_Scania_Streamline_Citerne {};
	class Skyline_Scania_Streamline_Citerne_13_F: Skyline_Scania_Streamline_Citerne {};
	
	class Skyline_Scania_Streamline_Box
	{
		realname="Scania Streamline (Box)";
		buyPrice=373000;
		inventory=630;
		side="CIV";
		insurance=1;
		licenses[]={"truck","company_location_land"};
		fuel="Diesel";
		fuelCapacity=400;
		colors[]=
		{
			"Skyline_Scania_Streamline_Box_01_F",
			"Skyline_Scania_Streamline_Box_02_F",
			"Skyline_Scania_Streamline_Box_03_F",
			"Skyline_Scania_Streamline_Box_04_F",
			"Skyline_Scania_Streamline_Box_05_F",
			"Skyline_Scania_Streamline_Box_06_F",
			"Skyline_Scania_Streamline_Box_07_F",
			"Skyline_Scania_Streamline_Box_08_F",
			"Skyline_Scania_Streamline_Box_09_F",
			"Skyline_Scania_Streamline_Box_10_F",
			"Skyline_Scania_Streamline_Box_11_F",
			"Skyline_Scania_Streamline_Box_12_F",
			"Skyline_Scania_Streamline_Box_13_F"
		};
	};
	class Skyline_Scania_Streamline_Box_01_F: Skyline_Scania_Streamline_Box {};
	class Skyline_Scania_Streamline_Box_02_F: Skyline_Scania_Streamline_Box {};
	class Skyline_Scania_Streamline_Box_03_F: Skyline_Scania_Streamline_Box {};
	class Skyline_Scania_Streamline_Box_04_F: Skyline_Scania_Streamline_Box {};
	class Skyline_Scania_Streamline_Box_05_F: Skyline_Scania_Streamline_Box {};
	class Skyline_Scania_Streamline_Box_06_F: Skyline_Scania_Streamline_Box {};
	class Skyline_Scania_Streamline_Box_07_F: Skyline_Scania_Streamline_Box {};
	class Skyline_Scania_Streamline_Box_08_F: Skyline_Scania_Streamline_Box {};
	class Skyline_Scania_Streamline_Box_09_F: Skyline_Scania_Streamline_Box {};
	class Skyline_Scania_Streamline_Box_10_F: Skyline_Scania_Streamline_Box {};
	class Skyline_Scania_Streamline_Box_11_F: Skyline_Scania_Streamline_Box {};
	class Skyline_Scania_Streamline_Box_12_F: Skyline_Scania_Streamline_Box {};
	class Skyline_Scania_Streamline_Box_13_F: Skyline_Scania_Streamline_Box {};

	class Jonzie_Flat_Bed
	{
		realname="Man TGX Flat Bed Truck";
		buyPrice=350000;
		inventory=200;
		side="CIV";
		insurance=1;
		licenses[]={"truck"};
		fuel="Diesel";
		fuelCapacity=400;
		colors[]=
		{
			"Skyline_Vehicule_Jonzie_Flat_Bed_01_F",
			"Skyline_Vehicule_Jonzie_Flat_Bed_02_F",
			"Skyline_Vehicule_Jonzie_Flat_Bed_03_F",
			"Skyline_Vehicule_Jonzie_Flat_Bed_04_F",
			"Skyline_Vehicule_Jonzie_Flat_Bed_05_F",
			"Skyline_Vehicule_Jonzie_Flat_Bed_06_F",
			"Skyline_Vehicule_Jonzie_Flat_Bed_07_F",
			"Skyline_Vehicule_Jonzie_Flat_Bed_08_F",
			"Skyline_Vehicule_Jonzie_Flat_Bed_09_F",
			"Skyline_Vehicule_Jonzie_Flat_Bed_10_F",
			"Skyline_Vehicule_Jonzie_Flat_Bed_11_F",
			"Skyline_Vehicule_Jonzie_Flat_Bed_12_F",
			"Skyline_Vehicule_Jonzie_Flat_Bed_13_F"
		};
	};
	class Skyline_Vehicule_Jonzie_Flat_Bed_01_F: Jonzie_Flat_Bed {};
	class Skyline_Vehicule_Jonzie_Flat_Bed_02_F: Jonzie_Flat_Bed {};
	class Skyline_Vehicule_Jonzie_Flat_Bed_03_F: Jonzie_Flat_Bed {};
	class Skyline_Vehicule_Jonzie_Flat_Bed_04_F: Jonzie_Flat_Bed {};
	class Skyline_Vehicule_Jonzie_Flat_Bed_05_F: Jonzie_Flat_Bed {};
	class Skyline_Vehicule_Jonzie_Flat_Bed_06_F: Jonzie_Flat_Bed {};
	class Skyline_Vehicule_Jonzie_Flat_Bed_07_F: Jonzie_Flat_Bed {};
	class Skyline_Vehicule_Jonzie_Flat_Bed_08_F: Jonzie_Flat_Bed {};
	class Skyline_Vehicule_Jonzie_Flat_Bed_09_F: Jonzie_Flat_Bed {};
	class Skyline_Vehicule_Jonzie_Flat_Bed_10_F: Jonzie_Flat_Bed {};
	class Skyline_Vehicule_Jonzie_Flat_Bed_11_F: Jonzie_Flat_Bed {};
	class Skyline_Vehicule_Jonzie_Flat_Bed_12_F: Jonzie_Flat_Bed {};
	class Skyline_Vehicule_Jonzie_Flat_Bed_13_F: Jonzie_Flat_Bed {};
	
	class Jonzie_Log_Truck: Jonzie_Flat_Bed
	{
		realname="Man TGX Log Truck";
		colors[]=
		{
			"Skyline_Vehicule_Jonzie_Log_Truck_01_F",
			"Skyline_Vehicule_Jonzie_Log_Truck_02_F",
			"Skyline_Vehicule_Jonzie_Log_Truck_03_F",
			"Skyline_Vehicule_Jonzie_Log_Truck_04_F",
			"Skyline_Vehicule_Jonzie_Log_Truck_05_F",
			"Skyline_Vehicule_Jonzie_Log_Truck_06_F",
			"Skyline_Vehicule_Jonzie_Log_Truck_07_F",
			"Skyline_Vehicule_Jonzie_Log_Truck_08_F",
			"Skyline_Vehicule_Jonzie_Log_Truck_09_F",
			"Skyline_Vehicule_Jonzie_Log_Truck_10_F",
			"Skyline_Vehicule_Jonzie_Log_Truck_11_F",
			"Skyline_Vehicule_Jonzie_Log_Truck_12_F",
			"Skyline_Vehicule_Jonzie_Log_Truck_13_F"
		};
	};
	class Skyline_Vehicule_Jonzie_Log_Truck_01_F: Jonzie_Log_Truck {};
	class Skyline_Vehicule_Jonzie_Log_Truck_02_F: Jonzie_Log_Truck {};
	class Skyline_Vehicule_Jonzie_Log_Truck_03_F: Jonzie_Log_Truck {};
	class Skyline_Vehicule_Jonzie_Log_Truck_04_F: Jonzie_Log_Truck {};
	class Skyline_Vehicule_Jonzie_Log_Truck_05_F: Jonzie_Log_Truck {};
	class Skyline_Vehicule_Jonzie_Log_Truck_06_F: Jonzie_Log_Truck {};
	class Skyline_Vehicule_Jonzie_Log_Truck_07_F: Jonzie_Log_Truck {};
	class Skyline_Vehicule_Jonzie_Log_Truck_08_F: Jonzie_Log_Truck {};
	class Skyline_Vehicule_Jonzie_Log_Truck_09_F: Jonzie_Log_Truck {};
	class Skyline_Vehicule_Jonzie_Log_Truck_10_F: Jonzie_Log_Truck {};
	class Skyline_Vehicule_Jonzie_Log_Truck_11_F: Jonzie_Log_Truck {};
	class Skyline_Vehicule_Jonzie_Log_Truck_12_F: Jonzie_Log_Truck {};
	class Skyline_Vehicule_Jonzie_Log_Truck_13_F: Jonzie_Log_Truck {};
	
	class Jonzie_Tanker_Truck: Jonzie_Flat_Bed
	{
		realname="Man TGX Tanker Truck";
		buyPrice=455000;
		inventory=300;
		licenses[]={"truck","company_fuel"};
		colors[]=
		{
			"Skyline_Vehicule_Jonzie_Tanker_Truck_01_F",
			"Skyline_Vehicule_Jonzie_Tanker_Truck_02_F",
			"Skyline_Vehicule_Jonzie_Tanker_Truck_03_F",
			"Skyline_Vehicule_Jonzie_Tanker_Truck_04_F",
			"Skyline_Vehicule_Jonzie_Tanker_Truck_05_F",
			"Skyline_Vehicule_Jonzie_Tanker_Truck_06_F",
			"Skyline_Vehicule_Jonzie_Tanker_Truck_07_F",
			"Skyline_Vehicule_Jonzie_Tanker_Truck_08_F",
			"Skyline_Vehicule_Jonzie_Tanker_Truck_09_F",
			"Skyline_Vehicule_Jonzie_Tanker_Truck_10_F",
			"Skyline_Vehicule_Jonzie_Tanker_Truck_11_F",
			"Skyline_Vehicule_Jonzie_Tanker_Truck_12_F"
			
		};
	};
	class Skyline_Vehicule_Jonzie_Tanker_Truck_01_F: Jonzie_Tanker_Truck {};
	class Skyline_Vehicule_Jonzie_Tanker_Truck_02_F: Jonzie_Tanker_Truck {};
	class Skyline_Vehicule_Jonzie_Tanker_Truck_03_F: Jonzie_Tanker_Truck {};
	class Skyline_Vehicule_Jonzie_Tanker_Truck_04_F: Jonzie_Tanker_Truck {};
	class Skyline_Vehicule_Jonzie_Tanker_Truck_05_F: Jonzie_Tanker_Truck {};
	class Skyline_Vehicule_Jonzie_Tanker_Truck_06_F: Jonzie_Tanker_Truck {};
	class Skyline_Vehicule_Jonzie_Tanker_Truck_07_F: Jonzie_Tanker_Truck {};
	class Skyline_Vehicule_Jonzie_Tanker_Truck_08_F: Jonzie_Tanker_Truck {};
	class Skyline_Vehicule_Jonzie_Tanker_Truck_09_F: Jonzie_Tanker_Truck {};
	class Skyline_Vehicule_Jonzie_Tanker_Truck_10_F: Jonzie_Tanker_Truck {};
	class Skyline_Vehicule_Jonzie_Tanker_Truck_11_F: Jonzie_Tanker_Truck {};
	class Skyline_Vehicule_Jonzie_Tanker_Truck_12_F: Jonzie_Tanker_Truck {};

	class Jonzie_Box_Truck: Jonzie_Log_Truck
	{
		realname="Man TGX Box";
		colors[]=
		{
			"Skyline_Vehicule_Jonzie_Box_Truck_01_F",
			"Skyline_Vehicule_Jonzie_Box_Truck_02_F",
			"Skyline_Vehicule_Jonzie_Box_Truck_03_F",
			"Skyline_Vehicule_Jonzie_Box_Truck_04_F",
			"Skyline_Vehicule_Jonzie_Box_Truck_05_F",
			"Skyline_Vehicule_Jonzie_Box_Truck_06_F",
			"Skyline_Vehicule_Jonzie_Box_Truck_07_F",
			"Skyline_Vehicule_Jonzie_Box_Truck_08_F",
			"Skyline_Vehicule_Jonzie_Box_Truck_09_F",
			"Skyline_Vehicule_Jonzie_Box_Truck_10_F",
			"Skyline_Vehicule_Jonzie_Box_Truck_11_F",
			"Skyline_Vehicule_Jonzie_Box_Truck_12_F",
			"Skyline_Vehicule_Jonzie_Box_Truck_13_F"
		};
	};
	class Skyline_Vehicule_Jonzie_Box_Truck_01_F: Jonzie_Box_Truck {};
	class Skyline_Vehicule_Jonzie_Box_Truck_02_F: Jonzie_Box_Truck {};
	class Skyline_Vehicule_Jonzie_Box_Truck_03_F: Jonzie_Box_Truck {};
	class Skyline_Vehicule_Jonzie_Box_Truck_04_F: Jonzie_Box_Truck {};
	class Skyline_Vehicule_Jonzie_Box_Truck_05_F: Jonzie_Box_Truck {};
	class Skyline_Vehicule_Jonzie_Box_Truck_06_F: Jonzie_Box_Truck {};
	class Skyline_Vehicule_Jonzie_Box_Truck_07_F: Jonzie_Box_Truck {};
	class Skyline_Vehicule_Jonzie_Box_Truck_08_F: Jonzie_Box_Truck {};
	class Skyline_Vehicule_Jonzie_Box_Truck_09_F: Jonzie_Box_Truck {};
	class Skyline_Vehicule_Jonzie_Box_Truck_10_F: Jonzie_Box_Truck {};
	class Skyline_Vehicule_Jonzie_Box_Truck_11_F: Jonzie_Box_Truck {};
	class Skyline_Vehicule_Jonzie_Box_Truck_12_F: Jonzie_Box_Truck {};
	class Skyline_Vehicule_Jonzie_Box_Truck_13_F: Jonzie_Box_Truck {};

	/*
	*    ____    __    ____  _______      _______..___________.
	*    \   \  /  \  /   / |   ____|    /       ||           |
	*     \   \/    \/   /  |  |__      |   (----``---|  |----`
	*      \            /   |   __|      \   \        |  |     
	*       \    /\    /    |  |____ .----)   |       |  |     
	*        \__/  \__/     |_______||_______/        |__|     
	*                                                          
	*/
	class Alysia_WEST_base
	{
		side="WEST";
		insurance=1;
		licenses[]={"driver"};
		colors[]={};
		rank=1;
	};

	class RDS_Lada_Civ_05: Alysia_WEST_base
	{
		realname="Lada";
		buyPrice=2000;
		inventory=30;
		fuel="SP98";
		fuelCapacity=43;
	};	

	class Alysia_R71_West_Base: Alysia_WEST_base
	{
		realname="R71";
		buyPrice=13580;
		inventory=12;
		fuel="Diesel";
		fuelCapacity=50;
		colors[]=
		{
			"Alysia_R71_West_01"
		};
	};
	class Alysia_R71_West_01: Alysia_R71_West_Base {};

	class Alysia_GMC_West_Base: Alysia_WEST_base
	{
		realname="GMC";
		buyPrice=23500;
		inventory=70;
		fuel="SP98";
		fuelCapacity=83;
		rank=2;
		colors[]=
		{
			"Alysia_GMC_West_01",
			"Alysia_GMC_West_02"
		};
	};
	class Alysia_GMC_West_01: Alysia_GMC_West_Base {};
	class Alysia_GMC_West_02: Alysia_GMC_West_Base
	{
		realname="GMC propagande";
		speaker[]=
		{
			{"Annonce (Rêve tanocien)", "announce_dream"},
			{"Annonce (Bonjour)", "announce_hello"},
			{"Annonce (Rejoignez le PNT)", "announce_join"},
			{"Annonce (PNT)", "announce_pnt"},
			{"Annonce (Fumée verte)", "announce_smoke"},
			{"Annonce (Société idéale)", "announce_socity"},
			{"Annonce (Agrafeuses)", "announce_agra"},
			{"Annonce (Venez au PNT)", "announce_come"},
			{"Annonce (Armes)", "announce_gun"},
			{"Annonce (Rose)", "announce_pink"},
			{"Annonce (ANT protection)", "announce_protect"},
			{"Annonce (Lapin)", "announce_rabbit"},
			{"Annonce (Rochefort : division blindée)", "announce_tank"}
		};
	};

	class GeK_Cadillac_Fleetwood_Brougham_85_04: Alysia_WEST_base
	{
		realname="Cadillac Fleetwood Brougham";
		buyPrice=150009;
		inventory=45;
		fuel="SP98";
		fuelCapacity=68;
	};

	class Lemon_Beverly_Sedan_Garde: Alysia_WEST_base
	{
		realname="Beverly Sedan";
		buyPrice=190000;
		inventory=45;
		fuel="SP98";
		rank=6;
		fuelCapacity=68;
	};

	class Lemon_Citroen_2CV_Garde_Tanocienne: Alysia_WEST_base
	{
		realname="Citroen 2CV";
		buyPrice=20000;
		inventory=45;
		fuel="SP98";
		fuelCapacity=68;
	};

	class Alysia_HeliAttack_West: Alysia_WEST_base
	{
		realname="Blackfoot";
		buyPrice=43150000;
		inventory=25;
		fuelCapacity=250;
		rank=6;
		disableLockpick=1;
	};

	/*
	*     _______      ___           _______..___________.
	*    |   ____|    /   \         /       ||           |
	*    |  |__      /  ^  \       |   (----``---|  |----`
	*    |   __|    /  /_\  \       \   \        |  |     
	*    |  |____  /  _____  \  .----)   |       |  |     
	*    |_______|/__/     \__\ |_______/        |__|     
	*                                                     
	*/
	class Alysia_EAST_base
	{
		side="EAST";
		insurance=1;
		licenses[]={"driver"};
		colors[]={};
		rank=1;
	};

	class Lemon_Jeep_ANT: Alysia_EAST_base
	{
		realname="Jeep";
		buyPrice=35800;
		inventory=30;
		fuel="Diesel";
		fuelCapacity=30;
		rank=2;
	};

	class Lemon_Bronco_ANT: Alysia_EAST_base
	{
		realname="Ford Bronco";
		buyPrice=77000;
		inventory=55;
		fuel="SP95";
		fuelCapacity=50;
		rank=3;
	};

	class Alysia_APC_East: Alysia_EAST_base
	{
		realname="APC";
		buyPrice=22000000;
		inventory=60;
		fuel="Diesel";
		insurance=0;
		fuelCapacity=80;
		rank=9;
		licenses[]={"east_tank"};
		forceFirstPersonView=1;
		disableLockpick=1;
	};

	class Alysia_GMC_East_Base: Alysia_EAST_base
	{
		realname="GMC";
		buyPrice=23500;
		inventory=70;
		fuel="SP98";
		fuelCapacity=83;
		rank=4;
		colors[]=
		{
			"Alysia_GMC_East_01",
			"Alysia_GMC_East_02"
		};
	};
	class Alysia_GMC_East_01: Alysia_GMC_East_Base {};
	class Alysia_GMC_East_02: Alysia_GMC_East_Base
	{
		realname="GMC propagande";
		speaker[]=
		{
			{"Annonce (Rêve tanocien)", "announce_dream"},
			{"Annonce (Bonjour)", "announce_hello"},
			{"Annonce (Rejoignez le PNT)", "announce_join"},
			{"Annonce (PNT)", "announce_pnt"},
			{"Annonce (Fumée verte)", "announce_smoke"},
			{"Annonce (Société idéale)", "announce_socity"},
			{"Annonce (Agrafeuses)", "announce_agra"},
			{"Annonce (Venez au PNT)", "announce_come"},
			{"Annonce (Armes)", "announce_gun"},
			{"Annonce (Rose)", "announce_pink"},
			{"Annonce (ANT protection)", "announce_protect"},
			{"Annonce (Lapin)", "announce_rabbit"},
			{"Annonce (Rochefort : division blindée)", "announce_tank"}
		};
	};

	class Alysia_Opelblitz_East_Base: Alysia_EAST_base
	{
		realname="Opelblitz";
		buyPrice=46000;
		licenses[]={"truck"};
		inventory=70;
		rank=2;
		fuel="Diesel";
		fuelCapacity=115;
		colors[]=
		{
			"Alysia_Opelblitz_EAST_Covered",
			"Alysia_Opelblitz_EAST_Uncovered",
			"Alysia_Opelblitz_EAST_Box"
		};
	};
	class Alysia_Opelblitz_EAST_Covered: Alysia_Opelblitz_East_Base {};
	class Alysia_Opelblitz_EAST_Uncovered: Alysia_Opelblitz_East_Base {};
	class Alysia_Opelblitz_EAST_Box: Alysia_Opelblitz_East_Base {};

	class Alysia_R71_East_Base: Alysia_EAST_base
	{
		realname="R71";
		buyPrice=13580;
		inventory=12;
		rank=2;
		fuel="Diesel";
		fuelCapacity=50;
		colors[]=
		{
			"Alysia_R71_East_01"
		};
	};
	class Alysia_R71_East_01: Alysia_R71_East_Base {};

	class B_T_LSV_01_unarmed_F: Alysia_EAST_base
	{
		realname="Prowler";
		buyPrice=22500;
		inventory=75;
		rank=2;
		fuel="Diesel";
		fuelCapacity=84;
		colors[]=
		{
			"Skyline_Vehicule_APEX_Prowler_01_F",
			"Skyline_Vehicule_APEX_Prowler_02_F",
			"Skyline_Vehicule_APEX_Prowler_03_F",
			"Skyline_Vehicule_APEX_Prowler_04_F"
		};
	};
	class Skyline_Vehicule_APEX_Prowler_01_F: B_T_LSV_01_unarmed_F {};
	class Skyline_Vehicule_APEX_Prowler_02_F: B_T_LSV_01_unarmed_F {};
	class Skyline_Vehicule_APEX_Prowler_03_F: B_T_LSV_01_unarmed_F {};
	class Skyline_Vehicule_APEX_Prowler_04_F: B_T_LSV_01_unarmed_F {};

	class B_T_LSV_01_armed_F: B_T_LSV_01_unarmed_F
	{
		realname="Prowler armé";
		insurance=0;
		inventory=60;
		buyPrice=928250;
		rank=8;
		colors[]={};
	};

	class Gurkha_f5: Alysia_EAST_base
	{
		realname="Gurkha";
		buyPrice=5095000;
		inventory=50;
		rank=6;
		fuel="Diesel";
		fuelCapacity=95;
		disableLockpick=1;
	};
	class Gurkha_M60: Gurkha_f5
	{
		realname="Gurkha armé";
		buyPrice=6000000;
		rank=11;
		insurance=0;
	};

	class Alysia_Minicooper_East_Base: Alysia_EAST_base
	{
		realname="Minicooper";
		buyPrice=72000;
		inventory=30;
		fuelCapacity=60;
		fuel="SP95";
		rank=5;
		colors[]=
		{
			"Alysia_Minicooper_East_01",
			"Alysia_Minicooper_East_02"
		};
	};
	class Alysia_Minicooper_East_01: Alysia_Minicooper_East_Base {};
	class Alysia_Minicooper_East_02: Alysia_Minicooper_East_Base {};

	class B_Truck_01_ammo_F: Alysia_EAST_base
	{
		realname="Camion de transport d'équipement";
		buyPrice=190000;
		inventory=250;
		licenses[]={"truck"};
		fuel="Diesel";
		fuelCapacity=550;
		rank=8;
	};

	class B_Boat_Armed_01_minigun_F: Alysia_EAST_base
	{
		realname="Bateau à moteur armé";
		buyPrice=4900000;
		inventory=50;
		licenses[]={"boat"};
		fuel="Diesel";
		fuelCapacity=90;
		rank=10;
		insurance=0;
	};

	class Maels_boat_ant: Alysia_EAST_base
	{
		realname="Bateau à moteur";
		buyprice=72000;
		inventory=100;
		licenses[]={"boat"};
		fuel="diesel";
		fuelCapacity=112;
		rank=2;
	};

	class B_T_VTOL_01: Alysia_EAST_base
	{
		realname="Blackfish";
		buyPrice=45800000;
		inventory=75;
		insurance=0;
		licenses[]={"east_pilot","pilot"};
		fuel="Kerosene";
		fuelCapacity=730;
		rank=8;
		disableLockpick=1;
		colors[]={"B_T_VTOL_01_vehicle_F","B_T_VTOL_01_infantry_F"};
	};
	class B_T_VTOL_01_vehicle_F: B_T_VTOL_01 {};
	class B_T_VTOL_01_infantry_F: B_T_VTOL_01 {};

	class Alysia_heli_light_East_01: Alysia_EAST_base
	{
		realname="MH9";
		buyPrice=315000;
		inventory=25;
		insurance=0;
		licenses[]={"east_pilot","pilot"};
		fuel="Kerosene";
		fuelCapacity=230;
		rank=2;
	};	

	class MH9_BDR: Alysia_EAST_base
	{
		realname="MH9_BDR";
		buyPrice=315000;
		inventory=25;
		insurance=0;
		licenses[]={"east_pilot","pilot"};
		fuel="Kerosene";
		fuelCapacity=230;
		rank=2;
	};

	class MH9_EIT: Alysia_EAST_base
	{
		realname="MH9_EIT";
		buyPrice=775000;
		inventory=25;
		insurance=0;
		disableOwnerInfos=1;
		licenses[]={"pilot"};
		fuel="Kerosene";
		fuelCapacity=230;
	};


	class Alysia_EC635_East_01: Alysia_EAST_base
	{
		realname="EC635";
		buyPrice=455000;
		inventory=25;
		insurance=0;
		licenses[]={"east_pilot","pilot"};
		fuel="Kerosene";
		fuelCapacity=295;
		rank=5;
	};

	class ANT_RHIB: Alysia_EAST_base
    {
        realname="RHIB ANT Camo";
        buyprice=85000;
        inventory=100;
        licenses[]={"boat"};
        fuel="diesel";
        fuelCapacity=160;
        rank=2;
    };
      
    class Alysia_Hellcat_East_01: Alysia_EAST_base
    {
        realname="Hellcat ANT";
        buyprice=650000;
        inventory=55;
        licenses[]={"east_pilot","pilot"};
        fuel="Kerosene";
        fuelCapacity=295;
        rank=5;
    };

	/*
	*      _______  __    __   _______ .______      
	*     /  _____||  |  |  | |   ____||   _  \     
	*    |  |  __  |  |  |  | |  |__   |  |_)  |    
	*    |  | |_ | |  |  |  | |   __|  |      /     
	*    |  |__| | |  `--'  | |  |____ |  |\  \----.
	*     \______|  \______/  |_______|| _| `._____|
	*                                               
	*/
	class Alysia_GUER_base
	{
		side="GUER";
		insurance=1;
		licenses[]={"driver"};
		colors[]={};
		fuel="Diesel";
		rank=1;
	};
	
	class Skyline_Mercedes_Sprinter_Samu: Alysia_GUER_base
	{
		realname="Mercedes Sprinter";
		buyPrice=47500;
		inventory=110;
		fuelCapacity=100;
		colors[]=
		{
			"Skyline_Mercedes_Sprinter_Samu_01_F"
		};
	};
	class Skyline_Mercedes_Sprinter_Samu_01_F: Skyline_Mercedes_Sprinter_Samu {};

	class Maels_boat_samu: Alysia_GUER_base
	{
		realname="Bateau Samu";
		buyprice=45000;
		inventory=100;
		licenses[]={"boat"};
		fuelCapacity=112;
	};
	
	class Jonzie_Ambulance: Alysia_GUER_base
	{
		realname="Ambulance avec civière";
		buyPrice=45000;
		inventory=100;
		fuelCapacity=112;
	};

	class Skyline_VW_TouaregR50_Samu_01_F: Alysia_GUER_base
	{
		realname="VW Touareg R50";
		buyPrice=57500;
		inventory=90;
		fuelCapacity=84;
		rank=2;
	};
	class Skyline_VW_TouaregR50_Samu_02_F : Skyline_VW_TouaregR50_Samu_01_F
	{
		realname="VW Touareg R50 (Signalisation)";
		buyPrice=65500;
	};

	class zamak_SAMU: Alysia_GUER_base
	{
		realname="Zamak";
		buyPrice=96150;
		inventory=100;
		fuelCapacity=210;
		rank=3;
	};

	class Mrshounka_corbillard_base_p: Alysia_GUER_base
	{
		realname="Corbillard";
		buyPrice=65000;
		inventory=45;
		fuelCapacity=96;
		rank=6;
		colors[]=
		{
			"Mrshounka_corbillard_c_noir",
			"Mrshounka_corbillard_c_bleufonce",
			"Mrshounka_corbillard_c_rouge",
			"Mrshounka_corbillard_c_jaune",
			"Mrshounka_corbillard_c_rose",
			"Mrshounka_corbillard_c_grise",
			"Mrshounka_corbillard_c_violet",
			"Mrshounka_corbillard_c_orange"
		};
	};
	class Mrshounka_corbillard_c: Mrshounka_corbillard_base_p {};
	class Mrshounka_corbillard_c_noir: Mrshounka_corbillard_base_p {};
	class Mrshounka_corbillard_c_bleufonce: Mrshounka_corbillard_base_p {};
	class Mrshounka_corbillard_c_rouge: Mrshounka_corbillard_base_p {};
	class Mrshounka_corbillard_c_jaune: Mrshounka_corbillard_base_p {};
	class Mrshounka_corbillard_c_rose: Mrshounka_corbillard_base_p {};
	class Mrshounka_corbillard_c_grise: Mrshounka_corbillard_base_p {};
	class Mrshounka_corbillard_c_violet: Mrshounka_corbillard_base_p {};
	class Mrshounka_corbillard_c_orange: Mrshounka_corbillard_base_p {};

	class GeK_S60_Paramedic: Alysia_GUER_base
	{
		realname="Volvo S60";
		buyPrice=55000;
		inventory=90;
		fuelCapacity=120;
		rank=6;
	};

	class GeK_TLC100_Medic: Alysia_GUER_base
	{
		realname="Toyota TLC100";
		buyPrice=60000;
		inventory=90;
		fuelCapacity=120;
		rank=4;
	};

	class DAR_ExplorerMedic: Alysia_GUER_base
	{
		realname="Ford Explorer";
		buyPrice=62500;
		inventory=90;
		fuelCapacity=80;
		rank=3;
	};

	class EC635_ADAC: Alysia_GUER_base
	{
		realname="EC635";
		buyPrice=385000;
		inventory=70;
		licenses[]={"pilot"};
		fuel="Kerosene";
		fuelCapacity=867;
		rank=2;
	};
	class Skyline_Agusta_Bell_01_F: Alysia_GUER_base
	{
		realname="Agusta-Bell AB.212";
		buyPrice=355000;
		inventory=70;
		licenses[]={"pilot"};
		fuel="Kerosene";
		fuelCapacity=850;
		rank=2;
	};

	/*
	*      ______  __  ____    ____ 
	*     /      ||  | \   \  /   / 
	*    |  ,----'|  |  \   \/   /  
	*    |  |     |  |   \      /   
	*    |  `----.|  |    \    /    
	*     \______||__|     \__/     
	*                               
	*/
	class Mrshounka_ducati_p_base
	{
		realname="Moto Ducati";
		buyPrice=350000;
		inventory=5;
		side="CIV";
		insurance=1;
		licenses[]={"moto"};
		fuel="SP95";
		fuelCapacity=15;
		colors[]=
		{
			"Mrshounka_ducati_p",
			"Mrshounka_ducati_p_noir",
			"Mrshounka_ducati_p_bf",
			"Mrshounka_ducati_p_r",
			"Mrshounka_ducati_p_j",
			"Mrshounka_ducati_p_rose",
			"Mrshounka_ducati_p_g",
			"Mrshounka_ducati_p_v",
			"Mrshounka_ducati_p_o"
		};
	};
	class Mrshounka_ducati_p: Mrshounka_ducati_p_base {};
	class Mrshounka_ducati_p_noir: Mrshounka_ducati_p_base {};
	class Mrshounka_ducati_p_bf: Mrshounka_ducati_p_base {};
	class Mrshounka_ducati_p_r: Mrshounka_ducati_p_base {};
	class Mrshounka_ducati_p_j: Mrshounka_ducati_p_base {};
	class Mrshounka_ducati_p_rose: Mrshounka_ducati_p_base {};
	class Mrshounka_ducati_p_g: Mrshounka_ducati_p_base {};
	class Mrshounka_ducati_p_v: Mrshounka_ducati_p_base {};
	class Mrshounka_ducati_p_o: Mrshounka_ducati_p_base {};

	class Mrshounka_yamaha_p_base
	{
		realname="Moto Yamaha";
		buyPrice=275000;
		inventory=5;
		side="CIV";
		insurance=1;
		licenses[]={"moto"};
		fuel="SP95";
		fuelCapacity=14;
		colors[]=
		{
			"Mrshounka_yamaha_p",
			"Mrshounka_yamaha_p_noir",
			"Mrshounka_yamaha_p_bf",
			"Mrshounka_yamaha_p_r",
			"Mrshounka_yamaha_p_j",
			"Mrshounka_yamaha_p_rose",
			"Mrshounka_yamaha_p_g",
			"Mrshounka_yamaha_p_v",
			"Mrshounka_yamaha_p_o"
		};
	};
	class Mrshounka_yamaha_p: Mrshounka_yamaha_p_base {};
	class Mrshounka_yamaha_p_noir: Mrshounka_yamaha_p_base {};
	class Mrshounka_yamaha_p_bf: Mrshounka_yamaha_p_base {};
	class Mrshounka_yamaha_p_r: Mrshounka_yamaha_p_base {};
	class Mrshounka_yamaha_p_j: Mrshounka_yamaha_p_base {};
	class Mrshounka_yamaha_p_rose: Mrshounka_yamaha_p_base {};
	class Mrshounka_yamaha_p_g: Mrshounka_yamaha_p_base {};
	class Mrshounka_yamaha_p_v: Mrshounka_yamaha_p_base {};
	class Mrshounka_yamaha_p_o: Mrshounka_yamaha_p_base {};
	
	class shounka_harley_a3
	{
		realname="Harley-Davidson";
		buyPrice=45000;
		inventory=5;
		side="CIV";
		insurance=1;
		licenses[]={"moto"};
		fuel="SP95";
		fuelCapacity=9;
		colors[]=
		{
			"shounka_harley_a3_noir",
			"shounka_harley_a3_bleu",
			"shounka_harley_a3_rouge",
			"shounka_harley_a3_lolz"
		};
	};
	class shounka_harley_a3_noir: shounka_harley_a3 {};
	class shounka_harley_a3_bleu: shounka_harley_a3 {};
	class shounka_harley_a3_rouge: shounka_harley_a3 {};
	class shounka_harley_a3_lolz: shounka_harley_a3 {};

	class ADM_Ford_F100
	{
		realname="Ford F100";
		buyPrice=4500;
		inventory=65;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="GPL";
		fuelCapacity=46;
		colors[]=
		{
			"ADM_Ford_F100_red",
			"ADM_Ford_F100_yellow",
			"ADM_Ford_F100_green",
			"ADM_Ford_F100_blue",
			"ADM_Ford_F100_pink",
			"ADM_Ford_F100_dark",
			"ADM_Ford_F100_white"
		};
	};
	class ADM_Ford_F100_red: ADM_Ford_F100 {};
	class ADM_Ford_F100_yellow: ADM_Ford_F100 {};
	class ADM_Ford_F100_green: ADM_Ford_F100 {};
	class ADM_Ford_F100_blue: ADM_Ford_F100 {};
	class ADM_Ford_F100_pink: ADM_Ford_F100 {};
	class ADM_Ford_F100_dark: ADM_Ford_F100 {};
	class ADM_Ford_F100_white: ADM_Ford_F100 {};

	class Skyline_VW_Touareg
	{
		realname="VW Touareg";
		buyPrice=36500;
		inventory=85;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=84;
		colors[]=
		{
			"Skyline_VW_TouaregR50_01_F",
			"Skyline_VW_TouaregR50_02_F",
			"Skyline_VW_TouaregR50_03_F",
			"Skyline_VW_TouaregR50_04_F",
			"Skyline_VW_TouaregR50_05_F",
			"Skyline_VW_TouaregR50_06_F",
			"Skyline_VW_TouaregR50_07_F",
			"Skyline_VW_TouaregR50_08_F",
			"Skyline_VW_TouaregR50_09_F",
			"Skyline_VW_TouaregR50_10_F",
			"Skyline_VW_TouaregR50_11_F",
			"Skyline_VW_TouaregR50_12_F",
			"Skyline_VW_TouaregR50_13_F"
		};
	};
	class Skyline_VW_TouaregR50_01_F: Skyline_VW_Touareg {};
	class Skyline_VW_TouaregR50_02_F: Skyline_VW_Touareg {};
	class Skyline_VW_TouaregR50_03_F: Skyline_VW_Touareg {};
	class Skyline_VW_TouaregR50_04_F: Skyline_VW_Touareg {};
	class Skyline_VW_TouaregR50_05_F: Skyline_VW_Touareg {};
	class Skyline_VW_TouaregR50_06_F: Skyline_VW_Touareg {};
	class Skyline_VW_TouaregR50_07_F: Skyline_VW_Touareg {};
	class Skyline_VW_TouaregR50_08_F: Skyline_VW_Touareg {};
	class Skyline_VW_TouaregR50_09_F: Skyline_VW_Touareg {};
	class Skyline_VW_TouaregR50_10_F: Skyline_VW_Touareg {};
	class Skyline_VW_TouaregR50_11_F: Skyline_VW_Touareg {};
	class Skyline_VW_TouaregR50_12_F: Skyline_VW_Touareg {};
	class Skyline_VW_TouaregR50_13_F: Skyline_VW_Touareg {};

	class Skyline_Audi_RS4
	{
		realname="Audi RS4";
		buyPrice=123000;
		inventory=25;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=61;
		colors[]=
		{
			"Skyline_Audi_RS4_01_F",
			"Skyline_Audi_RS4_02_F",
			"Skyline_Audi_RS4_03_F",
			"Skyline_Audi_RS4_04_F",
			"Skyline_Audi_RS4_05_F",
			"Skyline_Audi_RS4_06_F",
			"Skyline_Audi_RS4_07_F",
			"Skyline_Audi_RS4_08_F",
			"Skyline_Audi_RS4_09_F",
			"Skyline_Audi_RS4_10_F",
			"Skyline_Audi_RS4_11_F",
			"Skyline_Audi_RS4_12_F",
			"Skyline_Audi_RS4_13_F"
		};
	};
	class Skyline_Audi_RS4_01_F: Skyline_Audi_RS4 {};
	class Skyline_Audi_RS4_02_F: Skyline_Audi_RS4 {};
	class Skyline_Audi_RS4_03_F: Skyline_Audi_RS4 {};
	class Skyline_Audi_RS4_04_F: Skyline_Audi_RS4 {};
	class Skyline_Audi_RS4_05_F: Skyline_Audi_RS4 {};
	class Skyline_Audi_RS4_06_F: Skyline_Audi_RS4 {};
	class Skyline_Audi_RS4_07_F: Skyline_Audi_RS4 {};
	class Skyline_Audi_RS4_08_F: Skyline_Audi_RS4 {};
	class Skyline_Audi_RS4_09_F: Skyline_Audi_RS4 {};
	class Skyline_Audi_RS4_10_F: Skyline_Audi_RS4 {};
	class Skyline_Audi_RS4_11_F: Skyline_Audi_RS4 {};
	class Skyline_Audi_RS4_12_F: Skyline_Audi_RS4 {};
	class Skyline_Audi_RS4_13_F: Skyline_Audi_RS4 {};

	class Skyline_Ford_Transit
	{
		realname="Ford Transit";
		buyPrice=34200;
		inventory=180;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=60;
		colors[]=
		{
			"Skyline_Ford_Transit_01_F",
			"Skyline_Ford_Transit_02_F",
			"Skyline_Ford_Transit_03_F",
			"Skyline_Ford_Transit_04_F",
			"Skyline_Ford_Transit_05_F",
			"Skyline_Ford_Transit_06_F",
			"Skyline_Ford_Transit_07_F",
			"Skyline_Ford_Transit_08_F",
			"Skyline_Ford_Transit_09_F",
			"Skyline_Ford_Transit_10_F",
			"Skyline_Ford_Transit_11_F",
			"Skyline_Ford_Transit_12_F",
			"Skyline_Ford_Transit_13_F"
		};
	};
	class Skyline_Ford_Transit_01_F: Skyline_Ford_Transit {};
	class Skyline_Ford_Transit_02_F: Skyline_Ford_Transit {};
	class Skyline_Ford_Transit_03_F: Skyline_Ford_Transit {};
	class Skyline_Ford_Transit_04_F: Skyline_Ford_Transit {};
	class Skyline_Ford_Transit_05_F: Skyline_Ford_Transit {};
	class Skyline_Ford_Transit_06_F: Skyline_Ford_Transit {};
	class Skyline_Ford_Transit_07_F: Skyline_Ford_Transit {};
	class Skyline_Ford_Transit_08_F: Skyline_Ford_Transit {};
	class Skyline_Ford_Transit_09_F: Skyline_Ford_Transit {};
	class Skyline_Ford_Transit_10_F: Skyline_Ford_Transit {};
	class Skyline_Ford_Transit_11_F: Skyline_Ford_Transit {};
	class Skyline_Ford_Transit_12_F: Skyline_Ford_Transit {};
	class Skyline_Ford_Transit_13_F: Skyline_Ford_Transit {};

	class Skyline_Peugeot_308
	{
		realname="Peugeot 308";
		buyPrice=25250;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=55;
		colors[]=
		{
			"Skyline_Peugeot_308_01_F",
			"Skyline_Peugeot_308_02_F",
			"Skyline_Peugeot_308_03_F",
			"Skyline_Peugeot_308_04_F",
			"Skyline_Peugeot_308_05_F",
			"Skyline_Peugeot_308_06_F",
			"Skyline_Peugeot_308_07_F",
			"Skyline_Peugeot_308_08_F",
			"Skyline_Peugeot_308_09_F",
			"Skyline_Peugeot_308_10_F",
			"Skyline_Peugeot_308_11_F",
			"Skyline_Peugeot_308_12_F",
			"Skyline_Peugeot_308_13_F"
		};
	};
	class Skyline_Peugeot_308_01_F: Skyline_Peugeot_308 {};
	class Skyline_Peugeot_308_02_F: Skyline_Peugeot_308 {};
	class Skyline_Peugeot_308_03_F: Skyline_Peugeot_308 {};
	class Skyline_Peugeot_308_04_F: Skyline_Peugeot_308 {};
	class Skyline_Peugeot_308_05_F: Skyline_Peugeot_308 {};
	class Skyline_Peugeot_308_06_F: Skyline_Peugeot_308 {};
	class Skyline_Peugeot_308_07_F: Skyline_Peugeot_308 {};
	class Skyline_Peugeot_308_08_F: Skyline_Peugeot_308 {};
	class Skyline_Peugeot_308_09_F: Skyline_Peugeot_308 {};
	class Skyline_Peugeot_308_10_F: Skyline_Peugeot_308 {};
	class Skyline_Peugeot_308_11_F: Skyline_Peugeot_308 {};
	class Skyline_Peugeot_308_12_F: Skyline_Peugeot_308 {};
	class Skyline_Peugeot_308_13_F: Skyline_Peugeot_308 {};

	class Skyline_Brinks_01_F
	{
		realname="Camion de transport de fond";
		buyPrice=485000;
		inventory=200;
		side="CIV";
		insurance=1;
		licenses[]={"truck","company_money_tranfer"};
		fuel="Diesel";
		fuelCapacity=85;
		class c4_bomb
		{
			attachTo[]={0,-3.5,0};
			VectorUp[]={0,-1,0};
		};
		class company_money_transfer
		{
			pos[]={0,-4.25,-1.6};
		};
	};

	class Skyline_Vehicule_Jonzie_Viper
	{
		realname="Dodge Viper";
		buyPrice=815000;
		inventory=25;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=70;
		colors[]=
		{
			"Skyline_Vehicule_Jonzie_Viper_01_F",
			"Skyline_Vehicule_Jonzie_Viper_02_F",
			"Skyline_Vehicule_Jonzie_Viper_03_F",
			"Skyline_Vehicule_Jonzie_Viper_04_F",
			"Skyline_Vehicule_Jonzie_Viper_05_F",
			"Skyline_Vehicule_Jonzie_Viper_06_F",
			"Skyline_Vehicule_Jonzie_Viper_07_F",
			"Skyline_Vehicule_Jonzie_Viper_08_F",
			"Skyline_Vehicule_Jonzie_Viper_09_F",
			"Skyline_Vehicule_Jonzie_Viper_10_F",
			"Skyline_Vehicule_Jonzie_Viper_11_F",
			"Skyline_Vehicule_Jonzie_Viper_12_F"
		};
	};
	class Skyline_Vehicule_Jonzie_Viper_01_F: Skyline_Vehicule_Jonzie_Viper {};
	class Skyline_Vehicule_Jonzie_Viper_02_F: Skyline_Vehicule_Jonzie_Viper {};
	class Skyline_Vehicule_Jonzie_Viper_03_F: Skyline_Vehicule_Jonzie_Viper {};
	class Skyline_Vehicule_Jonzie_Viper_04_F: Skyline_Vehicule_Jonzie_Viper {};
	class Skyline_Vehicule_Jonzie_Viper_05_F: Skyline_Vehicule_Jonzie_Viper {};
	class Skyline_Vehicule_Jonzie_Viper_06_F: Skyline_Vehicule_Jonzie_Viper {};
	class Skyline_Vehicule_Jonzie_Viper_07_F: Skyline_Vehicule_Jonzie_Viper {};
	class Skyline_Vehicule_Jonzie_Viper_08_F: Skyline_Vehicule_Jonzie_Viper {};
	class Skyline_Vehicule_Jonzie_Viper_09_F: Skyline_Vehicule_Jonzie_Viper {};
	class Skyline_Vehicule_Jonzie_Viper_10_F: Skyline_Vehicule_Jonzie_Viper {};
	class Skyline_Vehicule_Jonzie_Viper_11_F: Skyline_Vehicule_Jonzie_Viper {};
	class Skyline_Vehicule_Jonzie_Viper_12_F: Skyline_Vehicule_Jonzie_Viper {};

	class Skyline_Vehicule_Jonzie_Escalade
	{
		realname="Cadillac Escalade ESV";
		buyPrice=97500;
		inventory=85;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=117;
		colors[]=
		{
			"Skyline_Vehicule_Jonzie_Escalade_01_F",
			"Skyline_Vehicule_Jonzie_Escalade_02_F",
			"Skyline_Vehicule_Jonzie_Escalade_03_F",
			"Skyline_Vehicule_Jonzie_Escalade_04_F",
			"Skyline_Vehicule_Jonzie_Escalade_05_F",
			"Skyline_Vehicule_Jonzie_Escalade_06_F",
			"Skyline_Vehicule_Jonzie_Escalade_07_F",
			"Skyline_Vehicule_Jonzie_Escalade_08_F",
			"Skyline_Vehicule_Jonzie_Escalade_09_F",
			"Skyline_Vehicule_Jonzie_Escalade_10_F",
			"Skyline_Vehicule_Jonzie_Escalade_11_F",
			"Skyline_Vehicule_Jonzie_Escalade_12_F"
		};
	};
	class Skyline_Vehicule_Jonzie_Escalade_01_F: Skyline_Vehicule_Jonzie_Escalade {};
	class Skyline_Vehicule_Jonzie_Escalade_02_F: Skyline_Vehicule_Jonzie_Escalade {};
	class Skyline_Vehicule_Jonzie_Escalade_03_F: Skyline_Vehicule_Jonzie_Escalade {};
	class Skyline_Vehicule_Jonzie_Escalade_04_F: Skyline_Vehicule_Jonzie_Escalade {};
	class Skyline_Vehicule_Jonzie_Escalade_05_F: Skyline_Vehicule_Jonzie_Escalade {};
	class Skyline_Vehicule_Jonzie_Escalade_06_F: Skyline_Vehicule_Jonzie_Escalade {};
	class Skyline_Vehicule_Jonzie_Escalade_07_F: Skyline_Vehicule_Jonzie_Escalade {};
	class Skyline_Vehicule_Jonzie_Escalade_08_F: Skyline_Vehicule_Jonzie_Escalade {};
	class Skyline_Vehicule_Jonzie_Escalade_09_F: Skyline_Vehicule_Jonzie_Escalade {};
	class Skyline_Vehicule_Jonzie_Escalade_10_F: Skyline_Vehicule_Jonzie_Escalade {};
	class Skyline_Vehicule_Jonzie_Escalade_11_F: Skyline_Vehicule_Jonzie_Escalade {};
	class Skyline_Vehicule_Jonzie_Escalade_12_F: Skyline_Vehicule_Jonzie_Escalade {};

  	class Skyline_Vehicule_Jonzie_Galant
	{
		realname="Mitsubishi Galant";
		buyPrice=10000;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=60;
		colors[]=
		{
			"Skyline_Vehicule_Jonzie_Galant_01_F",
			"Skyline_Vehicule_Jonzie_Galant_02_F",
			"Skyline_Vehicule_Jonzie_Galant_03_F",
			"Skyline_Vehicule_Jonzie_Galant_04_F",
			"Skyline_Vehicule_Jonzie_Galant_05_F",
			"Skyline_Vehicule_Jonzie_Galant_06_F",
			"Skyline_Vehicule_Jonzie_Galant_07_F",
			"Skyline_Vehicule_Jonzie_Galant_08_F",
			"Skyline_Vehicule_Jonzie_Galant_09_F",
			"Skyline_Vehicule_Jonzie_Galant_10_F",
			"Skyline_Vehicule_Jonzie_Galant_11_F",
			"Skyline_Vehicule_Jonzie_Galant_12_F"
		};
	};
	class Skyline_Vehicule_Jonzie_Galant_01_F: Skyline_Vehicule_Jonzie_Galant {};
	class Skyline_Vehicule_Jonzie_Galant_02_F: Skyline_Vehicule_Jonzie_Galant {};
	class Skyline_Vehicule_Jonzie_Galant_03_F: Skyline_Vehicule_Jonzie_Galant {};
	class Skyline_Vehicule_Jonzie_Galant_04_F: Skyline_Vehicule_Jonzie_Galant {};
	class Skyline_Vehicule_Jonzie_Galant_05_F: Skyline_Vehicule_Jonzie_Galant {};
	class Skyline_Vehicule_Jonzie_Galant_06_F: Skyline_Vehicule_Jonzie_Galant {};
	class Skyline_Vehicule_Jonzie_Galant_07_F: Skyline_Vehicule_Jonzie_Galant {};
	class Skyline_Vehicule_Jonzie_Galant_08_F: Skyline_Vehicule_Jonzie_Galant {};
	class Skyline_Vehicule_Jonzie_Galant_09_F: Skyline_Vehicule_Jonzie_Galant {};
	class Skyline_Vehicule_Jonzie_Galant_10_F: Skyline_Vehicule_Jonzie_Galant {};
	class Skyline_Vehicule_Jonzie_Galant_11_F: Skyline_Vehicule_Jonzie_Galant {};
	class Skyline_Vehicule_Jonzie_Galant_12_F: Skyline_Vehicule_Jonzie_Galant {};

  	class Skyline_Vehicule_Jonzie_Mini_Cooper
	{
		realname="Mini Cooper";
		buyPrice=7500;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=50;
		colors[]=
		{
			"Skyline_Vehicule_Jonzie_Mini_Cooper_01_F",
			"Skyline_Vehicule_Jonzie_Mini_Cooper_02_F",
			"Skyline_Vehicule_Jonzie_Mini_Cooper_03_F",
			"Skyline_Vehicule_Jonzie_Mini_Cooper_04_F",
			"Skyline_Vehicule_Jonzie_Mini_Cooper_05_F",
			"Skyline_Vehicule_Jonzie_Mini_Cooper_06_F",
			"Skyline_Vehicule_Jonzie_Mini_Cooper_07_F",
			"Skyline_Vehicule_Jonzie_Mini_Cooper_08_F",
			"Skyline_Vehicule_Jonzie_Mini_Cooper_09_F",
			"Skyline_Vehicule_Jonzie_Mini_Cooper_10_F",
			"Skyline_Vehicule_Jonzie_Mini_Cooper_11_F",
			"Skyline_Vehicule_Jonzie_Mini_Cooper_12_F"
		};
	};
	class Skyline_Vehicule_Jonzie_Mini_Cooper_01_F: Skyline_Vehicule_Jonzie_Mini_Cooper {};
	class Skyline_Vehicule_Jonzie_Mini_Cooper_02_F: Skyline_Vehicule_Jonzie_Mini_Cooper {};
	class Skyline_Vehicule_Jonzie_Mini_Cooper_03_F: Skyline_Vehicule_Jonzie_Mini_Cooper {};
	class Skyline_Vehicule_Jonzie_Mini_Cooper_04_F: Skyline_Vehicule_Jonzie_Mini_Cooper {};
	class Skyline_Vehicule_Jonzie_Mini_Cooper_05_F: Skyline_Vehicule_Jonzie_Mini_Cooper {};
	class Skyline_Vehicule_Jonzie_Mini_Cooper_06_F: Skyline_Vehicule_Jonzie_Mini_Cooper {};
	class Skyline_Vehicule_Jonzie_Mini_Cooper_07_F: Skyline_Vehicule_Jonzie_Mini_Cooper {};
	class Skyline_Vehicule_Jonzie_Mini_Cooper_08_F: Skyline_Vehicule_Jonzie_Mini_Cooper {};
	class Skyline_Vehicule_Jonzie_Mini_Cooper_09_F: Skyline_Vehicule_Jonzie_Mini_Cooper {};
	class Skyline_Vehicule_Jonzie_Mini_Cooper_10_F: Skyline_Vehicule_Jonzie_Mini_Cooper {};
	class Skyline_Vehicule_Jonzie_Mini_Cooper_11_F: Skyline_Vehicule_Jonzie_Mini_Cooper {};
	class Skyline_Vehicule_Jonzie_Mini_Cooper_12_F: Skyline_Vehicule_Jonzie_Mini_Cooper {};

  	class Skyline_Vehicule_Jonzie_Quattroporte
	{
		realname="Maserati quatreporte";
		buyPrice=325000;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=120;
		colors[]=
		{
			"Skyline_Vehicule_Jonzie_Quattroporte_01_F",
			"Skyline_Vehicule_Jonzie_Quattroporte_02_F",
			"Skyline_Vehicule_Jonzie_Quattroporte_03_F",
			"Skyline_Vehicule_Jonzie_Quattroporte_04_F",
			"Skyline_Vehicule_Jonzie_Quattroporte_05_F",
			"Skyline_Vehicule_Jonzie_Quattroporte_06_F",
			"Skyline_Vehicule_Jonzie_Quattroporte_07_F",
			"Skyline_Vehicule_Jonzie_Quattroporte_08_F",
			"Skyline_Vehicule_Jonzie_Quattroporte_09_F",
			"Skyline_Vehicule_Jonzie_Quattroporte_10_F",
			"Skyline_Vehicule_Jonzie_Quattroporte_11_F",
			"Skyline_Vehicule_Jonzie_Quattroporte_12_F"
		};
	};
	class Skyline_Vehicule_Jonzie_Quattroporte_01_F: Skyline_Vehicule_Jonzie_Quattroporte {};
	class Skyline_Vehicule_Jonzie_Quattroporte_02_F: Skyline_Vehicule_Jonzie_Quattroporte {};
	class Skyline_Vehicule_Jonzie_Quattroporte_03_F: Skyline_Vehicule_Jonzie_Quattroporte {};
	class Skyline_Vehicule_Jonzie_Quattroporte_04_F: Skyline_Vehicule_Jonzie_Quattroporte {};
	class Skyline_Vehicule_Jonzie_Quattroporte_05_F: Skyline_Vehicule_Jonzie_Quattroporte {};
	class Skyline_Vehicule_Jonzie_Quattroporte_06_F: Skyline_Vehicule_Jonzie_Quattroporte {};
	class Skyline_Vehicule_Jonzie_Quattroporte_07_F: Skyline_Vehicule_Jonzie_Quattroporte {};
	class Skyline_Vehicule_Jonzie_Quattroporte_08_F: Skyline_Vehicule_Jonzie_Quattroporte {};
	class Skyline_Vehicule_Jonzie_Quattroporte_09_F: Skyline_Vehicule_Jonzie_Quattroporte {};
	class Skyline_Vehicule_Jonzie_Quattroporte_10_F: Skyline_Vehicule_Jonzie_Quattroporte {};
	class Skyline_Vehicule_Jonzie_Quattroporte_11_F: Skyline_Vehicule_Jonzie_Quattroporte {};
	class Skyline_Vehicule_Jonzie_Quattroporte_12_F: Skyline_Vehicule_Jonzie_Quattroporte {};

  	class Skyline_Vehicule_Jonzie_Datsun_510
	{
		realname="Datsun 510";
		buyPrice=7500;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=650;
		colors[]=
		{
			"Skyline_Vehicule_Jonzie_Datsun_510_01_F",
			"Skyline_Vehicule_Jonzie_Datsun_510_02_F",
			"Skyline_Vehicule_Jonzie_Datsun_510_03_F",
			"Skyline_Vehicule_Jonzie_Datsun_510_04_F",
			"Skyline_Vehicule_Jonzie_Datsun_510_05_F",
			"Skyline_Vehicule_Jonzie_Datsun_510_06_F",
			"Skyline_Vehicule_Jonzie_Datsun_510_07_F",
			"Skyline_Vehicule_Jonzie_Datsun_510_08_F",
			"Skyline_Vehicule_Jonzie_Datsun_510_09_F",
			"Skyline_Vehicule_Jonzie_Datsun_510_10_F",
			"Skyline_Vehicule_Jonzie_Datsun_510_11_F",
			"Skyline_Vehicule_Jonzie_Datsun_510_12_F"
		};
	};
	class Skyline_Vehicule_Jonzie_Datsun_510_01_F: Skyline_Vehicule_Jonzie_Datsun_510 {};
	class Skyline_Vehicule_Jonzie_Datsun_510_02_F: Skyline_Vehicule_Jonzie_Datsun_510 {};
	class Skyline_Vehicule_Jonzie_Datsun_510_03_F: Skyline_Vehicule_Jonzie_Datsun_510 {};
	class Skyline_Vehicule_Jonzie_Datsun_510_04_F: Skyline_Vehicule_Jonzie_Datsun_510 {};
	class Skyline_Vehicule_Jonzie_Datsun_510_05_F: Skyline_Vehicule_Jonzie_Datsun_510 {};
	class Skyline_Vehicule_Jonzie_Datsun_510_06_F: Skyline_Vehicule_Jonzie_Datsun_510 {};
	class Skyline_Vehicule_Jonzie_Datsun_510_07_F: Skyline_Vehicule_Jonzie_Datsun_510 {};
	class Skyline_Vehicule_Jonzie_Datsun_510_08_F: Skyline_Vehicule_Jonzie_Datsun_510 {};
	class Skyline_Vehicule_Jonzie_Datsun_510_09_F: Skyline_Vehicule_Jonzie_Datsun_510 {};
	class Skyline_Vehicule_Jonzie_Datsun_510_10_F: Skyline_Vehicule_Jonzie_Datsun_510 {};
	class Skyline_Vehicule_Jonzie_Datsun_510_11_F: Skyline_Vehicule_Jonzie_Datsun_510 {};
	class Skyline_Vehicule_Jonzie_Datsun_510_12_F: Skyline_Vehicule_Jonzie_Datsun_510 {};

  	class Skyline_Vehicule_Jonzie_Corolla
	{
		realname="Toyota Corolla";
		buyPrice=6000;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=55;
		colors[]=
		{
			"Skyline_Vehicule_Jonzie_Corolla_01_F",
			"Skyline_Vehicule_Jonzie_Corolla_02_F",
			"Skyline_Vehicule_Jonzie_Corolla_03_F",
			"Skyline_Vehicule_Jonzie_Corolla_04_F",
			"Skyline_Vehicule_Jonzie_Corolla_05_F",
			"Skyline_Vehicule_Jonzie_Corolla_06_F",
			"Skyline_Vehicule_Jonzie_Corolla_07_F",
			"Skyline_Vehicule_Jonzie_Corolla_08_F",
			"Skyline_Vehicule_Jonzie_Corolla_09_F",
			"Skyline_Vehicule_Jonzie_Corolla_10_F",
			"Skyline_Vehicule_Jonzie_Corolla_11_F",
			"Skyline_Vehicule_Jonzie_Corolla_12_F"
		};
	};
	class Skyline_Vehicule_Jonzie_Corolla_01_F: Skyline_Vehicule_Jonzie_Corolla {};
	class Skyline_Vehicule_Jonzie_Corolla_02_F: Skyline_Vehicule_Jonzie_Corolla {};
	class Skyline_Vehicule_Jonzie_Corolla_03_F: Skyline_Vehicule_Jonzie_Corolla {};
	class Skyline_Vehicule_Jonzie_Corolla_04_F: Skyline_Vehicule_Jonzie_Corolla {};
	class Skyline_Vehicule_Jonzie_Corolla_05_F: Skyline_Vehicule_Jonzie_Corolla {};
	class Skyline_Vehicule_Jonzie_Corolla_06_F: Skyline_Vehicule_Jonzie_Corolla {};
	class Skyline_Vehicule_Jonzie_Corolla_07_F: Skyline_Vehicule_Jonzie_Corolla {};
	class Skyline_Vehicule_Jonzie_Corolla_08_F: Skyline_Vehicule_Jonzie_Corolla {};
	class Skyline_Vehicule_Jonzie_Corolla_09_F: Skyline_Vehicule_Jonzie_Corolla {};
	class Skyline_Vehicule_Jonzie_Corolla_10_F: Skyline_Vehicule_Jonzie_Corolla {};
	class Skyline_Vehicule_Jonzie_Corolla_11_F: Skyline_Vehicule_Jonzie_Corolla {};
	class Skyline_Vehicule_Jonzie_Corolla_12_F: Skyline_Vehicule_Jonzie_Corolla {};

  	class Skyline_Vehicule_Jonzie_Datsun_Z432
	{
		realname="Datsun Z432";
		buyPrice=22000;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=60;
		colors[]=
		{
			"Skyline_Vehicule_Jonzie_Datsun_Z432_01_F",
			"Skyline_Vehicule_Jonzie_Datsun_Z432_02_F",
			"Skyline_Vehicule_Jonzie_Datsun_Z432_03_F",
			"Skyline_Vehicule_Jonzie_Datsun_Z432_04_F",
			"Skyline_Vehicule_Jonzie_Datsun_Z432_05_F",
			"Skyline_Vehicule_Jonzie_Datsun_Z432_06_F",
			"Skyline_Vehicule_Jonzie_Datsun_Z432_07_F",
			"Skyline_Vehicule_Jonzie_Datsun_Z432_08_F",
			"Skyline_Vehicule_Jonzie_Datsun_Z432_09_F",
			"Skyline_Vehicule_Jonzie_Datsun_Z432_10_F",
			"Skyline_Vehicule_Jonzie_Datsun_Z432_11_F",
			"Skyline_Vehicule_Jonzie_Datsun_Z432_12_F"
		};
	};
	class Skyline_Vehicule_Jonzie_Datsun_Z432_01_F: Skyline_Vehicule_Jonzie_Datsun_Z432 {};
	class Skyline_Vehicule_Jonzie_Datsun_Z432_02_F: Skyline_Vehicule_Jonzie_Datsun_Z432 {};
	class Skyline_Vehicule_Jonzie_Datsun_Z432_03_F: Skyline_Vehicule_Jonzie_Datsun_Z432 {};
	class Skyline_Vehicule_Jonzie_Datsun_Z432_04_F: Skyline_Vehicule_Jonzie_Datsun_Z432 {};
	class Skyline_Vehicule_Jonzie_Datsun_Z432_05_F: Skyline_Vehicule_Jonzie_Datsun_Z432 {};
	class Skyline_Vehicule_Jonzie_Datsun_Z432_06_F: Skyline_Vehicule_Jonzie_Datsun_Z432 {};
	class Skyline_Vehicule_Jonzie_Datsun_Z432_07_F: Skyline_Vehicule_Jonzie_Datsun_Z432 {};
	class Skyline_Vehicule_Jonzie_Datsun_Z432_08_F: Skyline_Vehicule_Jonzie_Datsun_Z432 {};
	class Skyline_Vehicule_Jonzie_Datsun_Z432_09_F: Skyline_Vehicule_Jonzie_Datsun_Z432 {};
	class Skyline_Vehicule_Jonzie_Datsun_Z432_10_F: Skyline_Vehicule_Jonzie_Datsun_Z432 {};
	class Skyline_Vehicule_Jonzie_Datsun_Z432_11_F: Skyline_Vehicule_Jonzie_Datsun_Z432 {};
	class Skyline_Vehicule_Jonzie_Datsun_Z432_12_F: Skyline_Vehicule_Jonzie_Datsun_Z432 {};

  	class Skyline_Vehicule_Jonzie_Raptor
	{
		realname="Ford Raptor";
		buyPrice=63500;
		inventory=90;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=98;
		colors[]=
		{
			"Skyline_Vehicule_Jonzie_Raptor_01_F",
			"Skyline_Vehicule_Jonzie_Raptor_02_F",
			"Skyline_Vehicule_Jonzie_Raptor_03_F",
			"Skyline_Vehicule_Jonzie_Raptor_04_F",
			"Skyline_Vehicule_Jonzie_Raptor_05_F",
			"Skyline_Vehicule_Jonzie_Raptor_06_F",
			"Skyline_Vehicule_Jonzie_Raptor_07_F",
			"Skyline_Vehicule_Jonzie_Raptor_08_F",
			"Skyline_Vehicule_Jonzie_Raptor_09_F",
			"Skyline_Vehicule_Jonzie_Raptor_10_F",
			"Skyline_Vehicule_Jonzie_Raptor_11_F",
			"Skyline_Vehicule_Jonzie_Raptor_12_F"
		};
	};
	class Skyline_Vehicule_Jonzie_Raptor_01_F: Skyline_Vehicule_Jonzie_Raptor {};
	class Skyline_Vehicule_Jonzie_Raptor_02_F: Skyline_Vehicule_Jonzie_Raptor {};
	class Skyline_Vehicule_Jonzie_Raptor_03_F: Skyline_Vehicule_Jonzie_Raptor {};
	class Skyline_Vehicule_Jonzie_Raptor_04_F: Skyline_Vehicule_Jonzie_Raptor {};
	class Skyline_Vehicule_Jonzie_Raptor_05_F: Skyline_Vehicule_Jonzie_Raptor {};
	class Skyline_Vehicule_Jonzie_Raptor_06_F: Skyline_Vehicule_Jonzie_Raptor {};
	class Skyline_Vehicule_Jonzie_Raptor_07_F: Skyline_Vehicule_Jonzie_Raptor {};
	class Skyline_Vehicule_Jonzie_Raptor_08_F: Skyline_Vehicule_Jonzie_Raptor {};
	class Skyline_Vehicule_Jonzie_Raptor_09_F: Skyline_Vehicule_Jonzie_Raptor {};
	class Skyline_Vehicule_Jonzie_Raptor_10_F: Skyline_Vehicule_Jonzie_Raptor {};
	class Skyline_Vehicule_Jonzie_Raptor_11_F: Skyline_Vehicule_Jonzie_Raptor {};
	class Skyline_Vehicule_Jonzie_Raptor_12_F: Skyline_Vehicule_Jonzie_Raptor {};

  	class Skyline_Vehicule_Jonzie_Ceed
	{
		realname="Kia cee'd";
		buyPrice=12500;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=53;
		colors[]=
		{
		  "Skyline_Vehicule_Jonzie_Ceed_01_F",
		  "Skyline_Vehicule_Jonzie_Ceed_02_F",
		  "Skyline_Vehicule_Jonzie_Ceed_03_F",
		  "Skyline_Vehicule_Jonzie_Ceed_04_F",
		  "Skyline_Vehicule_Jonzie_Ceed_05_F",
		  "Skyline_Vehicule_Jonzie_Ceed_06_F",
		  "Skyline_Vehicule_Jonzie_Ceed_07_F",
		  "Skyline_Vehicule_Jonzie_Ceed_08_F",
		  "Skyline_Vehicule_Jonzie_Ceed_09_F",
		  "Skyline_Vehicule_Jonzie_Ceed_10_F",
		  "Skyline_Vehicule_Jonzie_Ceed_11_F",
		  "Skyline_Vehicule_Jonzie_Ceed_12_F"
		};
	};
	class Skyline_Vehicule_Jonzie_Ceed_01_F: Skyline_Vehicule_Jonzie_Ceed {};
	class Skyline_Vehicule_Jonzie_Ceed_02_F: Skyline_Vehicule_Jonzie_Ceed {};
	class Skyline_Vehicule_Jonzie_Ceed_03_F: Skyline_Vehicule_Jonzie_Ceed {};
	class Skyline_Vehicule_Jonzie_Ceed_04_F: Skyline_Vehicule_Jonzie_Ceed {};
	class Skyline_Vehicule_Jonzie_Ceed_05_F: Skyline_Vehicule_Jonzie_Ceed {};
	class Skyline_Vehicule_Jonzie_Ceed_06_F: Skyline_Vehicule_Jonzie_Ceed {};
	class Skyline_Vehicule_Jonzie_Ceed_07_F: Skyline_Vehicule_Jonzie_Ceed {};
	class Skyline_Vehicule_Jonzie_Ceed_08_F: Skyline_Vehicule_Jonzie_Ceed {};
	class Skyline_Vehicule_Jonzie_Ceed_09_F: Skyline_Vehicule_Jonzie_Ceed {};
	class Skyline_Vehicule_Jonzie_Ceed_10_F: Skyline_Vehicule_Jonzie_Ceed {};
	class Skyline_Vehicule_Jonzie_Ceed_11_F: Skyline_Vehicule_Jonzie_Ceed {};
	class Skyline_Vehicule_Jonzie_Ceed_12_F: Skyline_Vehicule_Jonzie_Ceed {};

  	class Skyline_Vehicule_Jonzie_30CSL
	{
		realname="BMW 3.0 CSL";
		buyPrice=22500;
		inventory=38;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=60;
		colors[]=
		{
			"Skyline_Vehicule_Jonzie_30CSL_01_F",
			"Skyline_Vehicule_Jonzie_30CSL_02_F",
			"Skyline_Vehicule_Jonzie_30CSL_03_F",
			"Skyline_Vehicule_Jonzie_30CSL_04_F",
			"Skyline_Vehicule_Jonzie_30CSL_05_F",
			"Skyline_Vehicule_Jonzie_30CSL_06_F",
			"Skyline_Vehicule_Jonzie_30CSL_07_F",
			"Skyline_Vehicule_Jonzie_30CSL_08_F",
			"Skyline_Vehicule_Jonzie_30CSL_09_F",
			"Skyline_Vehicule_Jonzie_30CSL_10_F",
			"Skyline_Vehicule_Jonzie_30CSL_11_F",
			"Skyline_Vehicule_Jonzie_30CSL_12_F"
		};
	};
	class Skyline_Vehicule_Jonzie_30CSL_01_F: Skyline_Vehicule_Jonzie_30CSL {};
	class Skyline_Vehicule_Jonzie_30CSL_02_F: Skyline_Vehicule_Jonzie_30CSL {};
	class Skyline_Vehicule_Jonzie_30CSL_03_F: Skyline_Vehicule_Jonzie_30CSL {};
	class Skyline_Vehicule_Jonzie_30CSL_04_F: Skyline_Vehicule_Jonzie_30CSL {};
	class Skyline_Vehicule_Jonzie_30CSL_05_F: Skyline_Vehicule_Jonzie_30CSL {};
	class Skyline_Vehicule_Jonzie_30CSL_06_F: Skyline_Vehicule_Jonzie_30CSL {};
	class Skyline_Vehicule_Jonzie_30CSL_07_F: Skyline_Vehicule_Jonzie_30CSL {};
	class Skyline_Vehicule_Jonzie_30CSL_08_F: Skyline_Vehicule_Jonzie_30CSL {};
	class Skyline_Vehicule_Jonzie_30CSL_09_F: Skyline_Vehicule_Jonzie_30CSL {};
	class Skyline_Vehicule_Jonzie_30CSL_10_F: Skyline_Vehicule_Jonzie_30CSL {};
	class Skyline_Vehicule_Jonzie_30CSL_11_F: Skyline_Vehicule_Jonzie_30CSL {};
	class Skyline_Vehicule_Jonzie_30CSL_12_F: Skyline_Vehicule_Jonzie_30CSL {};

  	class Skyline_Vehicule_Jonzie_XB
	{
		realname="Ford Falcon XB";
		buyPrice=59250;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=79;
		colors[]=
		{
			"Skyline_Vehicule_Jonzie_XB_01_F",
			"Skyline_Vehicule_Jonzie_XB_02_F",
			"Skyline_Vehicule_Jonzie_XB_03_F",
			"Skyline_Vehicule_Jonzie_XB_04_F",
			"Skyline_Vehicule_Jonzie_XB_05_F",
			"Skyline_Vehicule_Jonzie_XB_06_F",
			"Skyline_Vehicule_Jonzie_XB_07_F",
			"Skyline_Vehicule_Jonzie_XB_08_F",
			"Skyline_Vehicule_Jonzie_XB_09_F",
			"Skyline_Vehicule_Jonzie_XB_10_F",
			"Skyline_Vehicule_Jonzie_XB_11_F",
			"Skyline_Vehicule_Jonzie_XB_12_F"
		};
	};
	class Skyline_Vehicule_Jonzie_XB_01_F: Skyline_Vehicule_Jonzie_XB {};
	class Skyline_Vehicule_Jonzie_XB_02_F: Skyline_Vehicule_Jonzie_XB {};
	class Skyline_Vehicule_Jonzie_XB_03_F: Skyline_Vehicule_Jonzie_XB {};
	class Skyline_Vehicule_Jonzie_XB_04_F: Skyline_Vehicule_Jonzie_XB {};
	class Skyline_Vehicule_Jonzie_XB_05_F: Skyline_Vehicule_Jonzie_XB {};
	class Skyline_Vehicule_Jonzie_XB_06_F: Skyline_Vehicule_Jonzie_XB {};
	class Skyline_Vehicule_Jonzie_XB_07_F: Skyline_Vehicule_Jonzie_XB {};
	class Skyline_Vehicule_Jonzie_XB_08_F: Skyline_Vehicule_Jonzie_XB {};
	class Skyline_Vehicule_Jonzie_XB_09_F: Skyline_Vehicule_Jonzie_XB {};
	class Skyline_Vehicule_Jonzie_XB_10_F: Skyline_Vehicule_Jonzie_XB {};
	class Skyline_Vehicule_Jonzie_XB_11_F: Skyline_Vehicule_Jonzie_XB {};
	class Skyline_Vehicule_Jonzie_XB_12_F: Skyline_Vehicule_Jonzie_XB {};

	class Skyline_Jeep_Wrangler_Rubicon_Depannage
	{
		realname="Jeep Wrangler Depannage";
		buyPrice=63299;
		inventory=30;
		side="CIV";
		insurance=1;
		licenses[]={"driver","company_garagist"};
		fuel="Diesel";
		fuelCapacity=67;
		colors[]=
		{
			"Skyline_Jeep_Wrangler_Rubicon_Depannage_01_F",
			"Skyline_Jeep_Wrangler_Rubicon_Depannage_02_F",
			"Maels_rubicon_fastrepair"
		};
	};
	class Skyline_Jeep_Wrangler_Rubicon_Depannage_01_F: Skyline_Jeep_Wrangler_Rubicon_Depannage {};
	class Skyline_Jeep_Wrangler_Rubicon_Depannage_02_F: Skyline_Jeep_Wrangler_Rubicon_Depannage {};
	class Maels_rubicon_fastrepair: Skyline_Jeep_Wrangler_Rubicon_Depannage {};


	class Skyline_Jeep_Wrangler_Rubicon
	{
		realname="Jeep Wrangler Rubicon";
		buyPrice=53299;
		inventory=80;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=67;
		colors[]=
		{
			"Skyline_Jeep_Wrangler_Rubicon_01_F",
			"Skyline_Jeep_Wrangler_Rubicon_02_F",
			"Skyline_Jeep_Wrangler_Rubicon_03_F",
			"Skyline_Jeep_Wrangler_Rubicon_04_F",
			"Skyline_Jeep_Wrangler_Rubicon_05_F",
			"Skyline_Jeep_Wrangler_Rubicon_06_F",
			"Skyline_Jeep_Wrangler_Rubicon_07_F",
			"Skyline_Jeep_Wrangler_Rubicon_08_F",
			"Skyline_Jeep_Wrangler_Rubicon_09_F",
			"Skyline_Jeep_Wrangler_Rubicon_10_F",
			"Skyline_Jeep_Wrangler_Rubicon_11_F",
			"Skyline_Jeep_Wrangler_Rubicon_12_F",
			"Skyline_Jeep_Wrangler_Rubicon_13_F"
		};
	};
	class Skyline_Jeep_Wrangler_Rubicon_01_F: Skyline_Jeep_Wrangler_Rubicon {};
	class Skyline_Jeep_Wrangler_Rubicon_02_F: Skyline_Jeep_Wrangler_Rubicon {};
	class Skyline_Jeep_Wrangler_Rubicon_03_F: Skyline_Jeep_Wrangler_Rubicon {};
	class Skyline_Jeep_Wrangler_Rubicon_04_F: Skyline_Jeep_Wrangler_Rubicon {};
	class Skyline_Jeep_Wrangler_Rubicon_05_F: Skyline_Jeep_Wrangler_Rubicon {};
	class Skyline_Jeep_Wrangler_Rubicon_06_F: Skyline_Jeep_Wrangler_Rubicon {};
	class Skyline_Jeep_Wrangler_Rubicon_07_F: Skyline_Jeep_Wrangler_Rubicon {};
	class Skyline_Jeep_Wrangler_Rubicon_08_F: Skyline_Jeep_Wrangler_Rubicon {};
	class Skyline_Jeep_Wrangler_Rubicon_09_F: Skyline_Jeep_Wrangler_Rubicon {};
	class Skyline_Jeep_Wrangler_Rubicon_10_F: Skyline_Jeep_Wrangler_Rubicon {};
	class Skyline_Jeep_Wrangler_Rubicon_11_F: Skyline_Jeep_Wrangler_Rubicon {};
	class Skyline_Jeep_Wrangler_Rubicon_12_F: Skyline_Jeep_Wrangler_Rubicon {};
	class Skyline_Jeep_Wrangler_Rubicon_13_F: Skyline_Jeep_Wrangler_Rubicon {};

    class Skyline_Jeep_Wrangler
    {
		realname="Jeep Wrangler";
		buyPrice=120000;
		inventory=80;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=67;
		colors[]=
		{
			"Skyline_jeep_wrangler_01_F",
			"Skyline_jeep_wrangler_02_F",
			"Skyline_jeep_wrangler_03_F",
			"Skyline_jeep_wrangler_04_F",
			"Skyline_jeep_wrangler_05_F",
			"Skyline_jeep_wrangler_06_F",
			"Skyline_jeep_wrangler_07_F",
			"Skyline_jeep_wrangler_08_F",
			"Skyline_jeep_wrangler_09_F"
		};
	};
	class Skyline_jeep_wrangler_01_F: Skyline_Jeep_Wrangler {};
	class Skyline_jeep_wrangler_02_F: Skyline_Jeep_Wrangler {};
	class Skyline_jeep_wrangler_03_F: Skyline_Jeep_Wrangler {};
	class Skyline_jeep_wrangler_04_F: Skyline_Jeep_Wrangler {};
	class Skyline_jeep_wrangler_05_F: Skyline_Jeep_Wrangler {};
	class Skyline_jeep_wrangler_06_F: Skyline_Jeep_Wrangler {};
	class Skyline_jeep_wrangler_07_F: Skyline_Jeep_Wrangler {};
	class Skyline_jeep_wrangler_08_F: Skyline_Jeep_Wrangler {};
	class Skyline_jeep_wrangler_09_F: Skyline_Jeep_Wrangler {};
	
	class Skyline_Lotus_Esprit
	{
		realname="Lotus Esprit";
		buyPrice=275000;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=70;
		colors[]=
		{
			"Skyline_Lotus_Esprit_01_F",
			"Skyline_Lotus_Esprit_02_F",
			"Skyline_Lotus_Esprit_03_F",
			"Skyline_Lotus_Esprit_04_F",
			"Skyline_Lotus_Esprit_05_F",
			"Skyline_Lotus_Esprit_06_F",
			"Skyline_Lotus_Esprit_07_F",
			"Skyline_Lotus_Esprit_08_F",
			"Skyline_Lotus_Esprit_09_F",
			"Skyline_Lotus_Esprit_10_F",
			"Skyline_Lotus_Esprit_11_F",
			"Skyline_Lotus_Esprit_12_F",
			"Skyline_Lotus_Esprit_13_F"
		};
	};
	class Skyline_Lotus_Esprit_01_F: Skyline_Lotus_Esprit {};
	class Skyline_Lotus_Esprit_02_F: Skyline_Lotus_Esprit {};
	class Skyline_Lotus_Esprit_03_F: Skyline_Lotus_Esprit {};
	class Skyline_Lotus_Esprit_04_F: Skyline_Lotus_Esprit {};
	class Skyline_Lotus_Esprit_05_F: Skyline_Lotus_Esprit {};
	class Skyline_Lotus_Esprit_06_F: Skyline_Lotus_Esprit {};
	class Skyline_Lotus_Esprit_07_F: Skyline_Lotus_Esprit {};
	class Skyline_Lotus_Esprit_08_F: Skyline_Lotus_Esprit {};
	class Skyline_Lotus_Esprit_09_F: Skyline_Lotus_Esprit {};
	class Skyline_Lotus_Esprit_10_F: Skyline_Lotus_Esprit {};
	class Skyline_Lotus_Esprit_11_F: Skyline_Lotus_Esprit {};
	class Skyline_Lotus_Esprit_12_F: Skyline_Lotus_Esprit {};
	class Skyline_Lotus_Esprit_13_F: Skyline_Lotus_Esprit {};

	class Skyline_Renault_Alpine
	{
		realname="Renault Alpine A110";
		buyPrice=120000;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=38;
		colors[]=
		{
			"Skyline_Renault_Alpine_01_F",
			"Skyline_Renault_Alpine_02_F",
			"Skyline_Renault_Alpine_03_F",
			"Skyline_Renault_Alpine_04_F",
			"Skyline_Renault_Alpine_05_F",
			"Skyline_Renault_Alpine_06_F",
			"Skyline_Renault_Alpine_07_F",
			"Skyline_Renault_Alpine_08_F",
			"Skyline_Renault_Alpine_09_F",
			"Skyline_Renault_Alpine_10_F",
			"Skyline_Renault_Alpine_11_F",
			"Skyline_Renault_Alpine_12_F"
		};
	};
	class Skyline_Renault_Alpine_01_F: Skyline_Renault_Alpine {};
	class Skyline_Renault_Alpine_02_F: Skyline_Renault_Alpine {};
	class Skyline_Renault_Alpine_03_F: Skyline_Renault_Alpine {};
	class Skyline_Renault_Alpine_04_F: Skyline_Renault_Alpine {};
	class Skyline_Renault_Alpine_05_F: Skyline_Renault_Alpine {};
	class Skyline_Renault_Alpine_06_F: Skyline_Renault_Alpine {};
	class Skyline_Renault_Alpine_07_F: Skyline_Renault_Alpine {};
	class Skyline_Renault_Alpine_08_F: Skyline_Renault_Alpine {};
	class Skyline_Renault_Alpine_09_F: Skyline_Renault_Alpine {};
	class Skyline_Renault_Alpine_10_F: Skyline_Renault_Alpine {};
	class Skyline_Renault_Alpine_11_F: Skyline_Renault_Alpine {};
	class Skyline_Renault_Alpine_12_F: Skyline_Renault_Alpine {};

	class Skyline_Vehicule_APEX_Qilin
	{
		realname="Quilin";
		buyPrice=395000;
		inventory=75;
		side="CIV";
		insurance=0;
		licenses[]={"rebelle_1"};
		fuel="Diesel";
		fuelCapacity=100;
		disableOwnerInfos=1;
		colors[]=
		{
			"Skyline_Vehicule_APEX_Qilin_01_F",
			"Skyline_Vehicule_APEX_Qilin_02_F",
			"Skyline_Vehicule_APEX_Qilin_03_F"
		};
	};
	class Skyline_Vehicule_APEX_Qilin_01_F: Skyline_Vehicule_APEX_Qilin {};
	class Skyline_Vehicule_APEX_Qilin_02_F: Skyline_Vehicule_APEX_Qilin {};
	class Skyline_Vehicule_APEX_Qilin_03_F: Skyline_Vehicule_APEX_Qilin {};

	class Skyline_Vehicule_APEX_MB_4WD
	{
		realname="MB 4WD";
		buyPrice=12250;
		inventory=75;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=100;
		colors[]=
		{
			"Skyline_Vehicule_APEX_MB_4WD_01_F",
			"Skyline_Vehicule_APEX_MB_4WD_02_F",
			"Skyline_Vehicule_APEX_MB_4WD_03_F",
			"Skyline_Vehicule_APEX_MB_4WD_04_F",
			"Skyline_Vehicule_APEX_MB_4WD_05_F",
			"Skyline_Vehicule_APEX_MB_4WD_06_F",
			"Skyline_Vehicule_APEX_MB_4WD_07_F",
			"Skyline_Vehicule_APEX_MB_4WD_08_F"
		};
	};
	class Skyline_Vehicule_APEX_MB_4WD_01_F: Skyline_Vehicule_APEX_MB_4WD {};
	class Skyline_Vehicule_APEX_MB_4WD_02_F: Skyline_Vehicule_APEX_MB_4WD {};
	class Skyline_Vehicule_APEX_MB_4WD_03_F: Skyline_Vehicule_APEX_MB_4WD {};
	class Skyline_Vehicule_APEX_MB_4WD_04_F: Skyline_Vehicule_APEX_MB_4WD {};
	class Skyline_Vehicule_APEX_MB_4WD_05_F: Skyline_Vehicule_APEX_MB_4WD {};
	class Skyline_Vehicule_APEX_MB_4WD_06_F: Skyline_Vehicule_APEX_MB_4WD {};
	class Skyline_Vehicule_APEX_MB_4WD_07_F: Skyline_Vehicule_APEX_MB_4WD {};
	class Skyline_Vehicule_APEX_MB_4WD_08_F: Skyline_Vehicule_APEX_MB_4WD {};

	class Skyline_Vehicule_APEX_Caesar_BTT_F
	{
		realname="Caezar";
		buyPrice=200000;
		inventory=80;
		side="CIV";
		insurance=1;
		licenses[]={"pilot"};
		fuel="Kerosene";
		fuelCapacity=202;
		colors[]=
		{
			"Skyline_Vehicule_APEX_Caesar_BTT_01_F",
			"Skyline_Vehicule_APEX_Caesar_BTT_02_F",
			"Skyline_Vehicule_APEX_Caesar_BTT_03_F",
			"Skyline_Vehicule_APEX_Caesar_BTT_04_F",
			"Skyline_Vehicule_APEX_Caesar_BTT_05_F",
			"Skyline_Vehicule_APEX_Caesar_BTT_06_F",
			"Skyline_Vehicule_APEX_Caesar_BTT_07_F",
			"Skyline_Vehicule_APEX_Caesar_BTT_08_F"
		};
	};
	class Skyline_Vehicule_APEX_Caesar_BTT_01_F: Skyline_Vehicule_APEX_Caesar_BTT_F {};
	class Skyline_Vehicule_APEX_Caesar_BTT_02_F: Skyline_Vehicule_APEX_Caesar_BTT_F {};
	class Skyline_Vehicule_APEX_Caesar_BTT_03_F: Skyline_Vehicule_APEX_Caesar_BTT_F {};
	class Skyline_Vehicule_APEX_Caesar_BTT_04_F: Skyline_Vehicule_APEX_Caesar_BTT_F {};
	class Skyline_Vehicule_APEX_Caesar_BTT_05_F: Skyline_Vehicule_APEX_Caesar_BTT_F {};
	class Skyline_Vehicule_APEX_Caesar_BTT_06_F: Skyline_Vehicule_APEX_Caesar_BTT_F {};
	class Skyline_Vehicule_APEX_Caesar_BTT_07_F: Skyline_Vehicule_APEX_Caesar_BTT_F {};
	class Skyline_Vehicule_APEX_Caesar_BTT_08_F: Skyline_Vehicule_APEX_Caesar_BTT_F {};
	
	//Tout terrain CIV
	class Skyline_Vehicule_A3_Offroad
	{
		realname="Tout-Terrain";
		buyPrice=17250;
		inventory=55;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=100;
		colors[]=
		{
			"Skyline_Vehicule_A3_Offroad_01_F",
			"Skyline_Vehicule_A3_Offroad_02_F",
			"Skyline_Vehicule_A3_Offroad_03_F",
			"Skyline_Vehicule_A3_Offroad_04_F",
			"Skyline_Vehicule_A3_Offroad_05_F",
			"Skyline_Vehicule_A3_Offroad_06_F"
		};
	};
	class Skyline_Vehicule_A3_Offroad_01_F: Skyline_Vehicule_A3_Offroad {};
	class Skyline_Vehicule_A3_Offroad_02_F: Skyline_Vehicule_A3_Offroad {};
	class Skyline_Vehicule_A3_Offroad_03_F: Skyline_Vehicule_A3_Offroad {};
	class Skyline_Vehicule_A3_Offroad_04_F: Skyline_Vehicule_A3_Offroad {};
	class Skyline_Vehicule_A3_Offroad_05_F: Skyline_Vehicule_A3_Offroad {};
	class Skyline_Vehicule_A3_Offroad_06_F: Skyline_Vehicule_A3_Offroad {};
	
	//Tout terrain Reb non armé
	class Skyline_Vehicule_A3_Offroad_Rebelle
	{
		realname="Tout-Terrain (Rebelle)";
		buyPrice=36000;
		inventory=55;
		side="CIV";
		insurance=0;
  		rank=0;
  		licenses[]={"rebelle_1"};
		fuel="Diesel";
		fuelCapacity=100;
		disableOwnerInfos=1;
		colors[]=
		{
			"Skyline_Vehicule_A3_Offroad_08_F",
			"Skyline_Vehicule_A3_Offroad_09_F",
			"Skyline_Vehicule_A3_Offroad_10_F",
			"Skyline_Vehicule_A3_Offroad_11_F",
			"Skyline_Vehicule_A3_Offroad_12_F",
			"Skyline_Vehicule_A3_Offroad_13_F",
			"Skyline_Vehicule_A3_Offroad_14_F",
			"Skyline_Vehicule_A3_Offroad_15_F",
			"Skyline_Vehicule_A3_Offroad_16_F",
			"Skyline_Vehicule_A3_Offroad_17_F",
			"Skyline_Vehicule_A3_Offroad_18_F",
			"Skyline_Vehicule_A3_Offroad_19_F",
			"Skyline_Vehicule_A3_Offroad_20_F"
		};
	};
	class Skyline_Vehicule_A3_Offroad_08_F: Skyline_Vehicule_A3_Offroad_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_09_F: Skyline_Vehicule_A3_Offroad_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_10_F: Skyline_Vehicule_A3_Offroad_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_11_F: Skyline_Vehicule_A3_Offroad_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_12_F: Skyline_Vehicule_A3_Offroad_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_13_F: Skyline_Vehicule_A3_Offroad_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_14_F: Skyline_Vehicule_A3_Offroad_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_15_F: Skyline_Vehicule_A3_Offroad_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_16_F: Skyline_Vehicule_A3_Offroad_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_17_F: Skyline_Vehicule_A3_Offroad_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_18_F: Skyline_Vehicule_A3_Offroad_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_19_F: Skyline_Vehicule_A3_Offroad_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_20_F: Skyline_Vehicule_A3_Offroad_Rebelle {};
	
	//Tout terrain Reb armé
	class Skyline_Vehicule_A3_Offroad_Armed_Rebelle
	{
		realname="Tout-Terrain (Armé)(Rebelle)";
		buyPrice=6200000;
		inventory=55;
		side="CIV";
		insurance=0;
		licenses[]={"rebelle_1"};
		forceFirstPersonView=1;
		fuel="Diesel";
		fuelCapacity=100;
		disableOwnerInfos=1;
		colors[]=
		{
			"Skyline_Vehicule_A3_Offroad_Armed_01_F",
			"Skyline_Vehicule_A3_Offroad_Armed_02_F",
			"Skyline_Vehicule_A3_Offroad_Armed_03_F",
			"Skyline_Vehicule_A3_Offroad_Armed_04_F",
			"Skyline_Vehicule_A3_Offroad_Armed_05_F",
			"Skyline_Vehicule_A3_Offroad_Armed_06_F",
			"Skyline_Vehicule_A3_Offroad_Armed_08_F",
			"Skyline_Vehicule_A3_Offroad_Armed_09_F",
			"Skyline_Vehicule_A3_Offroad_Armed_10_F",
			"Skyline_Vehicule_A3_Offroad_Armed_11_F",
			"Skyline_Vehicule_A3_Offroad_Armed_12_F",
			"Skyline_Vehicule_A3_Offroad_Armed_13_F",
			"Skyline_Vehicule_A3_Offroad_Armed_14_F",
			"Skyline_Vehicule_A3_Offroad_Armed_15_F",
			"Skyline_Vehicule_A3_Offroad_Armed_16_F",
			"Skyline_Vehicule_A3_Offroad_Armed_17_F",
			"Skyline_Vehicule_A3_Offroad_Armed_18_F",
			"Skyline_Vehicule_A3_Offroad_Armed_19_F",
			"Skyline_Vehicule_A3_Offroad_Armed_20_F"
		};
	};
	class Skyline_Vehicule_A3_Offroad_Armed_01_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_02_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_03_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_04_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_05_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_06_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_07_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_08_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_09_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_10_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_11_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_12_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_13_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_14_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_15_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_16_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_17_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_18_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_19_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};
	class Skyline_Vehicule_A3_Offroad_Armed_20_F: Skyline_Vehicule_A3_Offroad_Armed_Rebelle {};

	class Skyline_Vehicule_APEX_RHIB_01_F
	{
		realname="Bateau transport";
		buyPrice=50000;
		inventory=150;
		side="CIV";
		insurance=1;
		licenses[]={"boat"};
		fuel="Diesel";
		fuelCapacity=160;
		colors[]={};
	};
	
	class Skyline_Vehicule_APEX_RHIB_02_F
	{
		realname="Bateau transport rebelle";
		buyPrice=150000;
		inventory=150;
		side="CIV";
		insurance=0;
		disableOwnerInfos=1;
		licenses[]={"rebelle_1"};
		fuel="Diesel";
		fuelCapacity=190;
	};

 	class C_Scooter_Transport_01_F
	{
		realname="Jet Ski";
		buyPrice=6000;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"boat"};
		fuel="SP98";
		fuelCapacity=74;
		colors[]=
		{
			"Skyline_Vehicule_APEX_Jetski_01_F",
			"Skyline_Vehicule_APEX_Jetski_02_F",
			"Skyline_Vehicule_APEX_Jetski_03_F",
			"Skyline_Vehicule_APEX_Jetski_04_F",
			"Skyline_Vehicule_APEX_Jetski_05_F",
			"Skyline_Vehicule_APEX_Jetski_06_F",
			"Skyline_Vehicule_APEX_Jetski_07_F"
		};
	};
	class Skyline_Vehicule_APEX_Jetski_01_F: C_Scooter_Transport_01_F {};
	class Skyline_Vehicule_APEX_Jetski_02_F: C_Scooter_Transport_01_F {};
	class Skyline_Vehicule_APEX_Jetski_03_F: C_Scooter_Transport_01_F {};
	class Skyline_Vehicule_APEX_Jetski_04_F: C_Scooter_Transport_01_F {};
	class Skyline_Vehicule_APEX_Jetski_05_F: C_Scooter_Transport_01_F {};
	class Skyline_Vehicule_APEX_Jetski_06_F: C_Scooter_Transport_01_F {};
	class Skyline_Vehicule_APEX_Jetski_07_F: C_Scooter_Transport_01_F {};
	class Skyline_Vehicule_APEX_Jetski_08_F: C_Scooter_Transport_01_F {};

	// Boat Tanoa
	class Burnes_mk10
	{
		realname="MK10";
		buyPrice=450000;
		Inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"boat","company_location_sea"};
		fuel="Diesel";
		fuelCapacity=600;
		colors[]=
		{
			"Burnes_mk10_1"
		};
	};
	class Burnes_mk10_1: Burnes_mk10 {};

  	class B_Boat_Transport_01_F: Burnes_mk10
	{
		realname="Zodiac";
		buyPrice=3000;
		inventory=70;
		fuel="SP98";
		fuelCapacity=83;
		licenses[]={"boat"};
		colors[]=
		{
			"B_Boat_Transport_01_F",
			"O_Boat_Transport_01_F",
			"O_Lifeboat",
			"C_Rubberboat",
			"I_Boat_Transport_01_F"
		};
	};
  	class O_Boat_Transport_01_F: B_Boat_Transport_01_F {};
  	class O_Lifeboat: B_Boat_Transport_01_F {};
  	class C_Rubberboat: B_Boat_Transport_01_F {};
  	class I_Boat_Transport_01_F: B_Boat_Transport_01_F {};

  	class C_Boat_Civil_01_F: B_Boat_Transport_01_F
	{
		realname="Bateau à moteur";
		buyPrice=8000;
		inventory=120;
		fuelCapacity=160;
		colors[]={};
	};

	class DAR_4X4
	{
		realname="MTVR 4X4";
		buyPrice=120900;
		inventory=350;
		fuelCapacity=630;
		side="CIV";
		insurance=0;
		disableOwnerInfos=1;
  		licenses[]={"rebelle_1"};
		fuel="Diesel";
	};
	class DAR_MK23: DAR_4X4
	{
		realname="MTVR cargo";
		buyPrice=255050;
		inventory=415;
		fuelCapacity=710;
  		licenses[]={"rebelle_1"};
	};
	class DAR_MK27T: DAR_4X4
	{
		realname="MTVR cargo couvert";
		buyPrice=415270;
		inventory=500;
		fuelCapacity=1000;
  		licenses[]={"rebelle_1"};
	};
	class DAR_MK27: DAR_MK27T
	{
		realname="MTVR Extension non couvert";
		buyPrice=595900;
		inventory=590;
  		licenses[]={"rebelle_1"};
	};
	class DAR_LHS_16: DAR_4X4
	{
		realname="MTVR LHS";
		buyPrice=757200;
		inventory=670;
		fuelCapacity=1250;
  		rank=2;
  		licenses[]={"rebelle_1"};
	};
	class Skyline_MTVR_4X4
	{
		realname="MTVR 4X4";
		buyPrice=120900;
		inventory=350;
		fuelCapacity=630;
		side="CIV";
		insurance=0;
		disableOwnerInfos=1;
  		rank=0;
  		licenses[]={"rebelle_1"};
		fuel="Diesel";
	};
	class Skyline_MTVR_MK23: Skyline_MTVR_4X4
	{
		realname="MTVR cargo";
		buyPrice=255050;
		inventory=415;
		fuelCapacity=710;
  		rank=0;
  		licenses[]={"rebelle_1"};
	};
	class Skyline_MTVR_MK27T: Skyline_MTVR_4X4
	{
		realname="MTVR cargo couvert";
		buyPrice=475270;
		inventory=500;
		fuelCapacity=1000;
  		rank=0;
  		licenses[]={"rebelle_1"};
	};
	class Skyline_MTVR_MK27: Skyline_MTVR_MK27T
	{
		realname="MTVR Extension non couvert";
		buyPrice=695900;
		inventory=590;
  		licenses[]={"rebelle_1"};
	};
	class Skyline_MTVR_LHS_16: Skyline_MTVR_4X4
	{
		realname="MTVR LHS";
		buyPrice=857200;
		inventory=670;
		fuelCapacity=1250;
  		licenses[]={"rebelle_1"};
	};
	class GeK_Raptor: DAR_4X4
	{
		realname="Ford -F-150 SVT Raptor";
		buyPrice=800000;
		inventory=45;
		insurance=0;
		fuelCapacity=45;
		licenses[]={"rebelle_1"};
		disableOwnerInfos=1;
	};

	class Alysia_GMC_PNT_01
	{
		realname="GMC PNT";
		buyPrice=26615;
		inventory=35;
		fuelCapacity=90;
		side="CIV";
		insurance=1;
		licenses[]={"politique_pnt_militant","driver"};
		fuel="Diesel";
		colors[]={};
		speaker[]=
		{
			{"Annonce (Rêve tanocien)", "announce_dream"},
			{"Annonce (Bonjour)", "announce_hello"},
			{"Annonce (Rejoignez le PNT)", "announce_join"},
			{"Annonce (PNT)", "announce_pnt"},
			{"Annonce (Fumée verte)", "announce_smoke"},
			{"Annonce (Société idéale)", "announce_socity"},
			{"Annonce (Agrafeuses)", "announce_agra"},
			{"Annonce (Venez au PNT)", "announce_come"},
			{"Annonce (Armes)", "announce_gun"},
			{"Annonce (Rose)", "announce_pink"},
			{"Annonce (ANT protection)", "announce_protect"},
			{"Annonce (Lapin)", "announce_rabbit"},
			{"Annonce (Rochefort : division blindée)", "announce_tank"}
		};
	};
	class Alysia_Willys_PNT
	{
		realname="Jeep Willys PNT";
		buyPrice=21615;
		inventory=35;
		fuelCapacity=80;
		side="CIV";
		insurance=1;
		licenses[]={"politique_pnt_member","driver"};
		fuel="SP95";
		colors[]={};
	};
	class Alysia_Willys_philidor: Alysia_Willys_PNT
	{
		realname="Jeep Willys (Vendelin Philidor)";
		side="EAST";
		licenses[]={"driver"};
		buyPrice=15800;
		rank=11;
	};
	class Alysia_Willys_philidor_armed: Alysia_Willys_philidor
	{
		realname="Jeep Willys armé (Vendelin Philidor)";
		insurance=0;
		buyPrice=39800;
	};
	class Alysia_Willys_rochefort: Alysia_Willys_philidor
	{
		realname="Jeep Willys (Eugène de Rochefort)";
		buyPrice=15801;
		rank=10;
	};
	class Alysia_Willys_rochefort_armed: Alysia_Willys_rochefort
	{
		realname="Jeep Willys armé (Eugène de Rochefort)";
		insurance=0;
		buyPrice=39800;
	};
	class Alysia_Willys_droolens: Alysia_Willys_philidor
	{
		realname="Jeep Willys (Kévin Droolens)";
		rank=8;
	};
	class Alysia_Willys_droolens_armed: Alysia_Willys_droolens
	{
		realname="Jeep Willys armé (Kévin Droolens)";
		insurance=0;
		buyPrice=39800;
	};
	class Alysia_Willys_gomez: Alysia_Willys_philidor
	{
		realname="Jeep Willys (Hector Gomez)";
		rank=8;
	};
	class Alysia_Willys_gomez_armed: Alysia_Willys_gomez
	{
		realname="Jeep Willys armé (Hector Gomez)";
		insurance=0;
		buyPrice=39800;
	};
	class Alysia_Willys_matariki: Alysia_Willys_philidor
	{
		realname="Jeep Willys (Onati Matariki)";
		rank=9;
	};
	class Alysia_Willys_matariki_armed: Alysia_Willys_matariki
	{
		realname="Jeep Willys armé (Onati Matariki)";
		insurance=0;
		buyPrice=39800;
	};
	class iD_Jeep_Willys_Cmd: Alysia_Willys_philidor
	{
		realname="Jeep Willys (Commandement)";
		rank=8;
	};

	// GeK Vehicles
	class GeK_Camaro
	{
		realname="Chevrolet Camaro";
		buyPrice=450000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=72;
		colors[]={};
	};

	class geK_ElCamino
	{
		realname="Chevrolet eL Camino";
		buyPrice=175000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=78;
		colors[]=
		{
			"GeK_ElCamino_01",
			"GeK_ElCamino_02",
			"GeK_ElCamino_03",
			"GeK_ElCamino_04",
			"GeK_ElCamino_05",
			"GeK_ElCamino_06",
			"GeK_ElCamino_07",
			"GeK_ElCamino_08",
			"GeK_ElCamino_09",
			"GeK_ElCamino_10",
			"GeK_ElCamino_11"
		};
	};
	class GeK_ElCamino_01: geK_ElCamino {};
	class GeK_ElCamino_02: geK_ElCamino {};
	class GeK_ElCamino_03: geK_ElCamino {};
	class GeK_ElCamino_04: geK_ElCamino {};
	class GeK_ElCamino_05: geK_ElCamino {};
	class GeK_ElCamino_06: geK_ElCamino {};
	class GeK_ElCamino_07: geK_ElCamino {};
	class GeK_ElCamino_08: geK_ElCamino {};
	class GeK_ElCamino_09: geK_ElCamino {};
	class GeK_ElCamino_10: geK_ElCamino {};
	class GeK_ElCamino_11: geK_ElCamino {};

	class geK_Avalanche
	{
		realname="Chevrolet Avalanche";
		buyPrice=70000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=117;
		colors[]={};
	};

	class GeK_Cadillac_Fleetwood_Brougham_85
	{
		realname="Cadillac Fleetwood_Brougham";
		buyPrice=150009;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=68;
		colors[]=
		{
			"GeK_Cadillac_Fleetwood_Brougham_85_01",
			"GeK_Cadillac_Fleetwood_Brougham_85_02",
			"GeK_Cadillac_Fleetwood_Brougham_85_03",
			"GeK_Cadillac_Fleetwood_Brougham_85_05",
			"GeK_Cadillac_Fleetwood_Brougham_85_06",
			"GeK_Cadillac_Fleetwood_Brougham_85_07",
			"GeK_Cadillac_Fleetwood_Brougham_85_08",
			"GeK_Cadillac_Fleetwood_Brougham_85_09",
			"GeK_Cadillac_Fleetwood_Brougham_85_10",
			"GeK_Cadillac_Fleetwood_Brougham_85_11"
		};
	};
	class GeK_Cadillac_Fleetwood_Brougham_85_01: GeK_Cadillac_Fleetwood_Brougham_85 {};
	class GeK_Cadillac_Fleetwood_Brougham_85_02: GeK_Cadillac_Fleetwood_Brougham_85 {};
	class GeK_Cadillac_Fleetwood_Brougham_85_03: GeK_Cadillac_Fleetwood_Brougham_85 {};
	class GeK_Cadillac_Fleetwood_Brougham_85_05: GeK_Cadillac_Fleetwood_Brougham_85 {};
	class GeK_Cadillac_Fleetwood_Brougham_85_06: GeK_Cadillac_Fleetwood_Brougham_85 {};
	class GeK_Cadillac_Fleetwood_Brougham_85_07: GeK_Cadillac_Fleetwood_Brougham_85 {};
	class GeK_Cadillac_Fleetwood_Brougham_85_08: GeK_Cadillac_Fleetwood_Brougham_85 {};
	class GeK_Cadillac_Fleetwood_Brougham_85_09: GeK_Cadillac_Fleetwood_Brougham_85 {};
	class GeK_Cadillac_Fleetwood_Brougham_85_10: GeK_Cadillac_Fleetwood_Brougham_85 {};
	class GeK_Cadillac_Fleetwood_Brougham_85_11: GeK_Cadillac_Fleetwood_Brougham_85 {};

	class GeK_CTSV
	{
		realname="Cadillac CTSV";
		buyPrice=63001;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=68;
		colors[]=
		{
			"GeK_CTSV_01",
			"GeK_CTSV_02",
			"GeK_CTSV_03",
			"GeK_CTSV_04",
			"GeK_CTSV_05",
			"GeK_CTSV_06",
			"GeK_CTSV_07",
			"GeK_CTSV_08",
			"GeK_CTSV_09",
			"GeK_CTSV_10",
			"GeK_CTSV_11"
		};
	};
	class GeK_CTSV_01: GeK_CTSV {};
	class GeK_CTSV_02: GeK_CTSV {};
	class GeK_CTSV_03: GeK_CTSV {};
	class GeK_CTSV_04: GeK_CTSV {};
	class GeK_CTSV_05: GeK_CTSV {};
	class GeK_CTSV_06: GeK_CTSV {};
	class GeK_CTSV_07: GeK_CTSV {};
	class GeK_CTSV_08: GeK_CTSV {};
	class GeK_CTSV_09: GeK_CTSV {};
	class GeK_CTSV_10: GeK_CTSV {};
	class GeK_CTSV_11: GeK_CTSV {};


	class GeK_audi_a4_avant
	{
		realname="Audi A4";
		buyPrice=34987;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=54;
		colors[]=
		{
			"GeK_audi_a4_avant_01",
			"GeK_audi_a4_avant_02",
			"GeK_audi_a4_avant_03",
			"GeK_audi_a4_avant_04",
			"GeK_audi_a4_avant_05",
			"GeK_audi_a4_avant_06",
			"GeK_audi_a4_avant_07",
			"GeK_audi_a4_avant_08",
			"GeK_audi_a4_avant_09",
			"GeK_audi_a4_avant_10",
			"GeK_audi_a4_avant_11"
		};
	};
	class GeK_audi_a4_avant_01: GeK_audi_a4_avant {};
	class GeK_audi_a4_avant_02: GeK_audi_a4_avant {};
	class GeK_audi_a4_avant_03: GeK_audi_a4_avant {};
	class GeK_audi_a4_avant_04: GeK_audi_a4_avant {};
	class GeK_audi_a4_avant_05: GeK_audi_a4_avant {};
	class GeK_audi_a4_avant_06: GeK_audi_a4_avant {};
	class GeK_audi_a4_avant_07: GeK_audi_a4_avant {};
	class GeK_audi_a4_avant_08: GeK_audi_a4_avant {};
	class GeK_audi_a4_avant_09: GeK_audi_a4_avant {};
	class GeK_audi_a4_avant_10: GeK_audi_a4_avant {};
	class GeK_audi_a4_avant_11: GeK_audi_a4_avant {};

	class GeK_M6
	{
		realname="BMW 6";
		buyPrice=31999;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=70;
		colors[]=
		{
			"GeK_M6_01",
			"GeK_M6_02",
			"GeK_M6_03",
			"GeK_M6_04",
			"GeK_M6_05",
			"GeK_M6_06",
			"GeK_M6_07",
			"GeK_M6_08",
			"GeK_M6_09",
			"GeK_M6_10",
			"GeK_M6_11"
		};
	};
	class GeK_M6_01: GeK_M6 {};
	class GeK_M6_02: GeK_M6 {};
	class GeK_M6_03: GeK_M6 {};
	class GeK_M6_04: GeK_M6 {};
	class GeK_M6_05: GeK_M6 {};
	class GeK_M6_06: GeK_M6 {};
	class GeK_M6_07: GeK_M6 {};
	class GeK_M6_08: GeK_M6 {};
	class GeK_M6_09: GeK_M6 {};
	class GeK_M6_10: GeK_M6 {};
	class GeK_M6_11: GeK_M6 {};

	class GeK_DS3
	{
		realname="Citroen DS3";
		buyPrice=17650;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=50;
		colors[]=
		{
			"GeK_DS3_01",
			"GeK_DS3_02",
			"GeK_DS3_03",
			"GeK_DS3_04",
			"GeK_DS3_05",
			"GeK_DS3_06",
			"GeK_DS3_07",
			"GeK_DS3_08",
			"GeK_DS3_09",
			"GeK_DS3_10",
			"GeK_DS3_11"
		};
	};
	class GeK_DS3_01: GeK_DS3 {};
	class GeK_DS3_02: GeK_DS3 {};
	class GeK_DS3_03: GeK_DS3 {};
	class GeK_DS3_04: GeK_DS3 {};
	class GeK_DS3_05: GeK_DS3 {};
	class GeK_DS3_06: GeK_DS3 {};
	class GeK_DS3_07: GeK_DS3 {};
	class GeK_DS3_08: GeK_DS3 {};
	class GeK_DS3_09: GeK_DS3 {};
	class GeK_DS3_10: GeK_DS3 {};
	class GeK_DS3_11: GeK_DS3 {};

	class GeK_250GT
	{
		realname="Ferrari 250GT Berlinetta Lusso";
		buyPrice=1880910;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=91;
		colors[]=
		{
			"GeK_250GT_01",
			"GeK_250GT_02",
			"GeK_250GT_03",
			"GeK_250GT_04",
			"GeK_250GT_05",
			"GeK_250GT_06",
			"GeK_250GT_07",
			"GeK_250GT_08",
			"GeK_250GT_09",
			"GeK_250GT_10",
			"GeK_250GT_11"
		};
	};
	class GeK_250GT_01: GeK_250GT {};
	class GeK_250GT_02: GeK_250GT {};
	class GeK_250GT_03: GeK_250GT {};
	class GeK_250GT_04: GeK_250GT {};
	class GeK_250GT_05: GeK_250GT {};
	class GeK_250GT_06: GeK_250GT {};
	class GeK_250GT_07: GeK_250GT {};
	class GeK_250GT_08: GeK_250GT {};
	class GeK_250GT_09: GeK_250GT {};
	class GeK_250GT_10: GeK_250GT {};
	class GeK_250GT_11: GeK_250GT {};

	class GeK_Fiorino
	{
		realname="Fiat Fiorino";
		buyPrice=8000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=45;
		colors[]=
		{
			"GeK_Fiorino_01",
			"GeK_Fiorino_02",
			"GeK_Fiorino_03",
			"GeK_Fiorino_04",
			"GeK_Fiorino_05",
			"GeK_Fiorino_06",
			"GeK_Fiorino_07",
			"GeK_Fiorino_08",
			"GeK_Fiorino_09",
			"GeK_Fiorino_10",
			"GeK_Fiorino_11"
		};
	};
	class GeK_Fiorino_01: GeK_Fiorino {};
	class GeK_Fiorino_02: GeK_Fiorino {};
	class GeK_Fiorino_03: GeK_Fiorino {};
	class GeK_Fiorino_04: GeK_Fiorino {};
	class GeK_Fiorino_05: GeK_Fiorino {};
	class GeK_Fiorino_06: GeK_Fiorino {};
	class GeK_Fiorino_07: GeK_Fiorino {};
	class GeK_Fiorino_08: GeK_Fiorino {};
	class GeK_Fiorino_09: GeK_Fiorino {};
	class GeK_Fiorino_10: GeK_Fiorino {};
	class GeK_Fiorino_11: GeK_Fiorino {};

	class GeK_Mustang
	{
		realname="Ford MUSTANG";
		buyPrice=274080;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=59;
	};

	class GeK_Iveco_Stralis
	{
		realname="Iveco Stralis";
		buyPrice=500000;
		inventory=650;
		side="CIV";
		insurance=1;
		licenses[]={"truck","company_location_land"};
		fuel="Diesel";
		fuelCapacity=1515;
		colors[]=
		{
			"GeK_Iveco_Stralis_01",
			"GeK_Iveco_Stralis_02",
			"GeK_Iveco_Stralis_03",
			"GeK_Iveco_Stralis_04",
			"GeK_Iveco_Stralis_05",
			"GeK_Iveco_Stralis_06",
			"GeK_Iveco_Stralis_07",
			"GeK_Iveco_Stralis_08",
			"GeK_Iveco_Stralis_09",
			"GeK_Iveco_Stralis_10",
			"GeK_Iveco_Stralis_11"
		};
	};
	class GeK_Iveco_Stralis_01: GeK_Iveco_Stralis {};
	class GeK_Iveco_Stralis_02: GeK_Iveco_Stralis {};
	class GeK_Iveco_Stralis_03: GeK_Iveco_Stralis {};
	class GeK_Iveco_Stralis_04: GeK_Iveco_Stralis {};
	class GeK_Iveco_Stralis_05: GeK_Iveco_Stralis {};
	class GeK_Iveco_Stralis_06: GeK_Iveco_Stralis {};
	class GeK_Iveco_Stralis_07: GeK_Iveco_Stralis {};
	class GeK_Iveco_Stralis_08: GeK_Iveco_Stralis {};
	class GeK_Iveco_Stralis_09: GeK_Iveco_Stralis {};
	class GeK_Iveco_Stralis_10: GeK_Iveco_Stralis {};
	class GeK_Iveco_Stralis_11: GeK_Iveco_Stralis {};

	class GeK_Agera
	{
		realname="Koenigsegg Agera R";
		buyPrice=2500000;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=120;
		colors[]=
		{
			"GeK_Agera_01",
			"GeK_Agera_02",
			"GeK_Agera_03",
			"GeK_Agera_04",
			"GeK_Agera_05",
			"GeK_Agera_06",
			"GeK_Agera_07",
			"GeK_Agera_08",
			"GeK_Agera_09",
			"GeK_Agera_10",
			"GeK_Agera_11"
		};
	};
	class GeK_Agera_01: GeK_Agera {};
	class GeK_Agera_02: GeK_Agera {};
	class GeK_Agera_03: GeK_Agera {};
	class GeK_Agera_04: GeK_Agera {};
	class GeK_Agera_05: GeK_Agera {};
	class GeK_Agera_06: GeK_Agera {};
	class GeK_Agera_07: GeK_Agera {};
	class GeK_Agera_08: GeK_Agera {};
	class GeK_Agera_09: GeK_Agera {};
	class GeK_Agera_10: GeK_Agera {};
	class GeK_Agera_11: GeK_Agera {};

	class GeK_IS
	{
		realname="Lexus IS";
		buyPrice=55000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="GPL";
		fuelCapacity=66;
		colors[]=
		{
			"GeK_IS_01",
			"GeK_IS_02",
			"GeK_IS_03",
			"GeK_IS_04",
			"GeK_IS_05",
			"GeK_IS_06",
			"GeK_IS_07",
			"GeK_IS_08",
			"GeK_IS_09",
			"GeK_IS_10",
			"GeK_IS_11"
		};
	};
	class GeK_IS_01: GeK_IS {};
	class GeK_IS_02: GeK_IS {};
	class GeK_IS_03: GeK_IS {};
	class GeK_IS_04: GeK_IS {};
	class GeK_IS_05: GeK_IS {};
	class GeK_IS_06: GeK_IS {};
	class GeK_IS_07: GeK_IS {};
	class GeK_IS_08: GeK_IS {};
	class GeK_IS_09: GeK_IS {};
	class GeK_IS_10: GeK_IS {};
	class GeK_IS_11: GeK_IS {};

	class GeK_A45
	{
		realname="Mercedes-A45 AMG";
		buyPrice=57002;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=75;
		colors[]=
		{
			"GeK_A45_01",
			"GeK_A45_02",
			"GeK_A45_03",
			"GeK_A45_04",
			"GeK_A45_05",
			"GeK_A45_06",
			"GeK_A45_07",
			"GeK_A45_08",
			"GeK_A45_09",
			"GeK_A45_10",
			"GeK_A45_11"
		};
	};
	class GeK_A45_01: GeK_A45 {};
	class GeK_A45_02: GeK_A45 {};
	class GeK_A45_03: GeK_A45 {};
	class GeK_A45_04: GeK_A45 {};
	class GeK_A45_05: GeK_A45 {};
	class GeK_A45_06: GeK_A45 {};
	class GeK_A45_07: GeK_A45 {};
	class GeK_A45_08: GeK_A45 {};
	class GeK_A45_09: GeK_A45 {};
	class GeK_A45_10: GeK_A45 {};
	class GeK_A45_11: GeK_A45 {};

	class GeK_C63_AMG
	{
		realname="Mercedes-C63 AMG";
		buyPrice=95000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=75;
		colors[]=
		{
			"GeK_C63_AMG_01",
			"GeK_C63_AMG_02",
			"GeK_C63_AMG_03",
			"GeK_C63_AMG_04",
			"GeK_C63_AMG_05",
			"GeK_C63_AMG_06",
			"GeK_C63_AMG_07",
			"GeK_C63_AMG_08",
			"GeK_C63_AMG_09",
			"GeK_C63_AMG_10",
			"GeK_C63_AMG_11"
		};
	};
	class GeK_C63_AMG_01: GeK_C63_AMG {};
	class GeK_C63_AMG_02: GeK_C63_AMG {};
	class GeK_C63_AMG_03: GeK_C63_AMG {};
	class GeK_C63_AMG_04: GeK_C63_AMG {};
	class GeK_C63_AMG_05: GeK_C63_AMG {};
	class GeK_C63_AMG_06: GeK_C63_AMG {};
	class GeK_C63_AMG_07: GeK_C63_AMG {};
	class GeK_C63_AMG_08: GeK_C63_AMG {};
	class GeK_C63_AMG_09: GeK_C63_AMG {};
	class GeK_C63_AMG_10: GeK_C63_AMG {};
	class GeK_C63_AMG_11: GeK_C63_AMG {};

	class GeK_G65
	{
		realname="Mercedes-G65 4X4";
		buyPrice=230000;
		inventory=30;
		side="CIV";
		insurance=0;
		licenses[]={"rebelle_1"};
		fuel="SP98";
		fuelCapacity=75;
		colors[]={};
		disableOwnerInfos=1;
	};

	class GeK_Mercedes_ML63
	{
		realname="Mercedes-ML63";
		buyPrice=230040;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=75;
		colors[]=
		{
			"GeK_Mercedes_ML63_01",
			"GeK_Mercedes_ML63_02",
			"GeK_Mercedes_ML63_03",
			"GeK_Mercedes_ML63_04",
			"GeK_Mercedes_ML63_05",
			"GeK_Mercedes_ML63_06",
			"GeK_Mercedes_ML63_07",
			"GeK_Mercedes_ML63_08",
			"GeK_Mercedes_ML63_09",
			"GeK_Mercedes_ML63_10",
			"GeK_Mercedes_ML63_11"
		};
	};
	class GeK_Mercedes_ML63_01: GeK_Mercedes_ML63 {};
	class GeK_Mercedes_ML63_02: GeK_Mercedes_ML63 {};
	class GeK_Mercedes_ML63_03: GeK_Mercedes_ML63 {};
	class GeK_Mercedes_ML63_04: GeK_Mercedes_ML63 {};
	class GeK_Mercedes_ML63_05: GeK_Mercedes_ML63 {};
	class GeK_Mercedes_ML63_06: GeK_Mercedes_ML63 {};
	class GeK_Mercedes_ML63_07: GeK_Mercedes_ML63 {};
	class GeK_Mercedes_ML63_08: GeK_Mercedes_ML63 {};
	class GeK_Mercedes_ML63_09: GeK_Mercedes_ML63 {};
	class GeK_Mercedes_ML63_10: GeK_Mercedes_ML63 {};
	class GeK_Mercedes_ML63_11: GeK_Mercedes_ML63 {};

	class GeK_Insignia
	{
		realname="Opel Insignia";
		buyPrice=42000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=70;
		colors[]=
		{
			"GeK_Insignia_01",
			"GeK_Insignia_02",
			"GeK_Insignia_03",
			"GeK_Insignia_04",
			"GeK_Insignia_05",
			"GeK_Insignia_06",
			"GeK_Insignia_07",
			"GeK_Insignia_08",
			"GeK_Insignia_09",
			"GeK_Insignia_10",
			"GeK_Insignia_11"
		};
	};
	class GeK_Insignia_01: GeK_Insignia {};
	class GeK_Insignia_02: GeK_Insignia {};
	class GeK_Insignia_03: GeK_Insignia {};
	class GeK_Insignia_04: GeK_Insignia {};
	class GeK_Insignia_05: GeK_Insignia {};
	class GeK_Insignia_06: GeK_Insignia {};
	class GeK_Insignia_07: GeK_Insignia {};
	class GeK_Insignia_08: GeK_Insignia {};
	class GeK_Insignia_09: GeK_Insignia {};
	class GeK_Insignia_10: GeK_Insignia {};
	class GeK_Insignia_11: GeK_Insignia {};

	class GeK_GTR
	{
		realname="Nissan GTR";
		buyPrice=1005000;
		inventory=74;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=70;
		colors[]=
		{
			"GeK_GTR_01",
			"GeK_GTR_02",
			"GeK_GTR_03",
			"GeK_GTR_04",
			"GeK_GTR_05",
			"GeK_GTR_06",
			"GeK_GTR_07",
			"GeK_GTR_08",
			"GeK_GTR_09",
			"GeK_GTR_10",
			"GeK_GTR_11"
		};
	};
	class GeK_GTR_01: GeK_GTR {};
	class GeK_GTR_02: GeK_GTR {};
	class GeK_GTR_03: GeK_GTR {};
	class GeK_GTR_04: GeK_GTR {};
	class GeK_GTR_05: GeK_GTR {};
	class GeK_GTR_06: GeK_GTR {};
	class GeK_GTR_07: GeK_GTR {};
	class GeK_GTR_08: GeK_GTR {};
	class GeK_GTR_09: GeK_GTR {};
	class GeK_GTR_10: GeK_GTR {};
	class GeK_GTR_11: GeK_GTR {};

	class GeK_Apollo
	{
		realname="Gumpert Appolo S";
		buyPrice=2500000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=120;
		colors[]=
		{
			"GeK_Apollo_01",
			"GeK_Apollo_02",
			"GeK_Apollo_03",
			"GeK_Apollo_04",
			"GeK_Apollo_05",
			"GeK_Apollo_06",
			"GeK_Apollo_07",
			"GeK_Apollo_08",
			"GeK_Apollo_09",
			"GeK_Apollo_10",
			"GeK_Apollo_11"
		};
	};
	class GeK_Apollo_01: GeK_Apollo {};
	class GeK_Apollo_02: GeK_Apollo {};
	class GeK_Apollo_03: GeK_Apollo {};
	class GeK_Apollo_04: GeK_Apollo {};
	class GeK_Apollo_05: GeK_Apollo {};
	class GeK_Apollo_06: GeK_Apollo {};
	class GeK_Apollo_07: GeK_Apollo {};
	class GeK_Apollo_08: GeK_Apollo {};
	class GeK_Apollo_09: GeK_Apollo {};
	class GeK_Apollo_10: GeK_Apollo {};
	class GeK_Apollo_11: GeK_Apollo {};

	class GeK_107
	{
		realname="Peugeot-107";
		buyPrice=10000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=35;
		colors[]=
		{
			"GeK_107_01",
			"GeK_107_02",
			"GeK_107_03",
			"GeK_107_04",
			"GeK_107_05",
			"GeK_107_06",
			"GeK_107_07",
			"GeK_107_08",
			"GeK_107_09",
			"GeK_107_10",
			"GeK_107_11"
		};
	};
	class GeK_107_01: GeK_107 {};
	class GeK_107_02: GeK_107 {};
	class GeK_107_03: GeK_107 {};
	class GeK_107_04: GeK_107 {};
	class GeK_107_05: GeK_107 {};
	class GeK_107_06: GeK_107 {};
	class GeK_107_07: GeK_107 {};
	class GeK_107_08: GeK_107 {};
	class GeK_107_09: GeK_107 {};
	class GeK_107_10: GeK_107 {};
	class GeK_107_11: GeK_107 {};

	class GeK_911_1972
	{
		realname="Porsche 911 Carrera 1972";
		buyPrice=1000330;
		inventory=30;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=80;
		colors[]=
		{
			"GeK_911_1972_01",
			"GeK_911_1972_02",
			"GeK_911_1972_03",
			"GeK_911_1972_04",
			"GeK_911_1972_05",
			"GeK_911_1972_06",
			"GeK_911_1972_07",
			"GeK_911_1972_08",
			"GeK_911_1972_09",
			"GeK_911_1972_10",
			"GeK_911_1972_11"
		};
	};
	class GeK_911_1972_01: GeK_911_1972 {};
	class GeK_911_1972_02: GeK_911_1972 {};
	class GeK_911_1972_03: GeK_911_1972 {};
	class GeK_911_1972_04: GeK_911_1972 {};
	class GeK_911_1972_05: GeK_911_1972 {};
	class GeK_911_1972_06: GeK_911_1972 {};
	class GeK_911_1972_07: GeK_911_1972 {};
	class GeK_911_1972_08: GeK_911_1972 {};
	class GeK_911_1972_09: GeK_911_1972 {};
	class GeK_911_1972_10: GeK_911_1972 {};
	class GeK_911_1972_11: GeK_911_1972 {};

	class GeK_clio
	{
		realname="Renault Clio";
		buyPrice=12000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=35;
		colors[]=
		{
			"GeK_clio_01",
			"GeK_clio_02",
			"GeK_clio_03",
			"GeK_clio_04",
			"GeK_clio_05",
			"GeK_clio_06",
			"GeK_clio_07",
			"GeK_clio_08",
			"GeK_clio_09",
			"GeK_clio_10",
			"GeK_clio_11"
		};
	};
	class GeK_clio_01: GeK_clio {};
	class GeK_clio_02: GeK_clio {};
	class GeK_clio_03: GeK_clio {};
	class GeK_clio_04: GeK_clio {};
	class GeK_clio_05: GeK_clio {};
	class GeK_clio_06: GeK_clio {};
	class GeK_clio_07: GeK_clio {};
	class GeK_clio_08: GeK_clio {};
	class GeK_clio_09: GeK_clio {};
	class GeK_clio_10: GeK_clio {};
	class GeK_clio_11: GeK_clio {};

	class GeK_Renault_magnum
	{
		realname="Renault Magnum";
		buyPrice=415750;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"truck","company_location_land"};
		fuel="Diesel";
		fuelCapacity=1455;
		colors[]=
		{
			"GeK_Renault_magnum_01",
			"GeK_Renault_magnum_02",
			"GeK_Renault_magnum_03",
			"GeK_Renault_magnum_04",
			"GeK_Renault_magnum_05",
			"GeK_Renault_magnum_06",
			"GeK_Renault_magnum_07",
			"GeK_Renault_magnum_08",
			"GeK_Renault_magnum_09",
			"GeK_Renault_magnum_10",
			"GeK_Renault_magnum_11"
		};
	};
	class GeK_Renault_magnum_01: GeK_Renault_magnum {};
	class GeK_Renault_magnum_02: GeK_Renault_magnum {};
	class GeK_Renault_magnum_03: GeK_Renault_magnum {};
	class GeK_Renault_magnum_04: GeK_Renault_magnum {};
	class GeK_Renault_magnum_05: GeK_Renault_magnum {};
	class GeK_Renault_magnum_06: GeK_Renault_magnum {};
	class GeK_Renault_magnum_07: GeK_Renault_magnum {};
	class GeK_Renault_magnum_08: GeK_Renault_magnum {};
	class GeK_Renault_magnum_09: GeK_Renault_magnum {};
	class GeK_Renault_magnum_10: GeK_Renault_magnum {};
	class GeK_Renault_magnum_11: GeK_Renault_magnum {};

	class GeK_Impreza
	{
		realname="Subaru Impreza";
		buyPrice=50000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=60;
		colors[]=
		{
			"GeK_Impreza_01",
			"GeK_Impreza_02",
			"GeK_Impreza_03",
			"GeK_Impreza_04",
			"GeK_Impreza_05",
			"GeK_Impreza_06",
			"GeK_Impreza_07",
			"GeK_Impreza_08",
			"GeK_Impreza_09",
			"GeK_Impreza_10",
			"GeK_Impreza_11"
		};
	};
	class GeK_Impreza_01: GeK_Impreza {};
	class GeK_Impreza_02: GeK_Impreza {};
	class GeK_Impreza_03: GeK_Impreza {};
	class GeK_Impreza_04: GeK_Impreza {};
	class GeK_Impreza_05: GeK_Impreza {};
	class GeK_Impreza_06: GeK_Impreza {};
	class GeK_Impreza_07: GeK_Impreza {};
	class GeK_Impreza_08: GeK_Impreza {};
	class GeK_Impreza_09: GeK_Impreza {};
	class GeK_Impreza_10: GeK_Impreza {};
	class GeK_Impreza_11: GeK_Impreza {};

	class GeK_gt86
	{
		realname="Toyota G86 Rocket bunny";
		buyPrice=330000;
		inventory=35;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=80;
		colors[]=
		{
			"GeK_gt86_01",
			"GeK_gt86_02",
			"GeK_gt86_03",
			"GeK_gt86_04",
			"GeK_gt86_05",
			"GeK_gt86_06",
			"GeK_gt86_07",
			"GeK_gt86_08",
			"GeK_gt86_09",
			"GeK_gt86_10",
			"GeK_gt86_11"
		};
	};
	class GeK_gt86_01: GeK_gt86 {};
	class GeK_gt86_02: GeK_gt86 {};
	class GeK_gt86_03: GeK_gt86 {};
	class GeK_gt86_04: GeK_gt86 {};
	class GeK_gt86_05: GeK_gt86 {};
	class GeK_gt86_06: GeK_gt86 {};
	class GeK_gt86_07: GeK_gt86 {};
	class GeK_gt86_08: GeK_gt86 {};
	class GeK_gt86_09: GeK_gt86 {};
	class GeK_gt86_10: GeK_gt86 {};
	class GeK_gt86_11: GeK_gt86 {};

	class GeK_Supra
	{
		realname="Toyota Supra";
		buyPrice=60000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=80;
		colors[]=
		{
			"GeK_Supra_01",
			"GeK_Supra_02",
			"GeK_Supra_03",
			"GeK_Supra_04",
			"GeK_Supra_05",
			"GeK_Supra_06",
			"GeK_Supra_07",
			"GeK_Supra_08",
			"GeK_Supra_09",
			"GeK_Supra_10",
			"GeK_Supra_11"
		};
	};
	class GeK_Supra_01: GeK_Supra {};
	class GeK_Supra_02: GeK_Supra {};
	class GeK_Supra_03: GeK_Supra {};
	class GeK_Supra_04: GeK_Supra {};
	class GeK_Supra_05: GeK_Supra {};
	class GeK_Supra_06: GeK_Supra {};
	class GeK_Supra_07: GeK_Supra {};
	class GeK_Supra_08: GeK_Supra {};
	class GeK_Supra_09: GeK_Supra {};
	class GeK_Supra_10: GeK_Supra {};
	class GeK_Supra_11: GeK_Supra {};

	class GeK_TLC100
	{
		realname="Toyota TLC100";
		buyPrice=180000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=87;
		colors[]=
		{
			"GeK_TLC100_01",
			"GeK_TLC100_02",
			"GeK_TLC100_03",
			"GeK_TLC100_04",
			"GeK_TLC100_05",
			"GeK_TLC100_06",
			"GeK_TLC100_07",
			"GeK_TLC100_08",
			"GeK_TLC100_09",
			"GeK_TLC100_10",
			"GeK_TLC100_11"
		};
	};
	class GeK_TLC100_01: GeK_TLC100 {};
	class GeK_TLC100_02: GeK_TLC100 {};
	class GeK_TLC100_03: GeK_TLC100 {};
	class GeK_TLC100_04: GeK_TLC100 {};
	class GeK_TLC100_05: GeK_TLC100 {};
	class GeK_TLC100_06: GeK_TLC100 {};
	class GeK_TLC100_07: GeK_TLC100 {};
	class GeK_TLC100_08: GeK_TLC100 {};
	class GeK_TLC100_09: GeK_TLC100 {};
	class GeK_TLC100_10: GeK_TLC100 {};
	class GeK_TLC100_11: GeK_TLC100 {};

	class GeK_Golf
	{
		realname="Volkswagen Golf";
		buyPrice=34500;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=50;
		colors[]=
		{
			"GeK_Golf_01",
			"GeK_Golf_02",
			"GeK_Golf_03",
			"GeK_Golf_04",
			"GeK_Golf_05",
			"GeK_Golf_06",
			"GeK_Golf_07",
			"GeK_Golf_08",
			"GeK_Golf_09",
			"GeK_Golf_10",
			"GeK_Golf_11"
		};
	};
	class GeK_Golf_01: GeK_Golf {};
	class GeK_Golf_02: GeK_Golf {};
	class GeK_Golf_03: GeK_Golf {};
	class GeK_Golf_04: GeK_Golf {};
	class GeK_Golf_05: GeK_Golf {};
	class GeK_Golf_06: GeK_Golf {};
	class GeK_Golf_07: GeK_Golf {};
	class GeK_Golf_08: GeK_Golf {};
	class GeK_Golf_09: GeK_Golf {};
	class GeK_Golf_10: GeK_Golf {};
	class GeK_Golf_11: GeK_Golf {};

	class GeK_C30
	{
		realname="Volvo C30";
		buyPrice=32500;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=55;
		colors[]=
		{
			"GeK_C30_01",
			"GeK_C30_02",
			"GeK_C30_03",
			"GeK_C30_04",
			"GeK_C30_05",
			"GeK_C30_06",
			"GeK_C30_07",
			"GeK_C30_08",
			"GeK_C30_09",
			"GeK_C30_10",
			"GeK_C30_11"
		};
	};
	class GeK_C30_01: GeK_C30 {};
	class GeK_C30_02: GeK_C30 {};
	class GeK_C30_03: GeK_C30 {};
	class GeK_C30_04: GeK_C30 {};
	class GeK_C30_05: GeK_C30 {};
	class GeK_C30_06: GeK_C30 {};
	class GeK_C30_07: GeK_C30 {};
	class GeK_C30_08: GeK_C30 {};
	class GeK_C30_09: GeK_C30 {};
	class GeK_C30_10: GeK_C30 {};
	class GeK_C30_11: GeK_C30 {};

	class GeK_S60
	{
		realname="Volvo C30";
		buyPrice=36500;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=70;
		colors[]=
		{
			"GeK_S60_01",
			"GeK_S60_02",
			"GeK_S60_03",
			"GeK_S60_04",
			"GeK_S60_05",
			"GeK_S60_06",
			"GeK_S60_07",
			"GeK_S60_08",
			"GeK_S60_09",
			"GeK_S60_10",
			"GeK_S60_11"
		};
	};
	class GeK_S60_01: GeK_S60 {};
	class GeK_S60_02: GeK_S60 {};
	class GeK_S60_03: GeK_S60 {};
	class GeK_S60_04: GeK_S60 {};
	class GeK_S60_05: GeK_S60 {};
	class GeK_S60_06: GeK_S60 {};
	class GeK_S60_07: GeK_S60 {};
	class GeK_S60_08: GeK_S60 {};
	class GeK_S60_09: GeK_S60 {};
	class GeK_S60_10: GeK_S60 {};
	class GeK_S60_11: GeK_S60 {};

	class Maels_Ikarus
	{
		realname="Bus Ikarus";
		buyPrice=150000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"company_transport_people","driver"};
		fuel="Diesel";
		fuelCapacity=120;
		colors[]=
		{
			"Maels_Ikarus_01_F",
			"Maels_Ikarus_02_F",
			"Maels_Ikarus_03_F",
			"Maels_Ikarus_04_F",
			"Maels_Ikarus_TanoaLine",
			"Maels_Ikarus_propagande",
			"Maels_Ikarus_propagande3",
			"Maels_Ikarus_propagande4",
			"Maels_Ikarus_fete"
		};
	};
	class Maels_Ikarus_01_F: Maels_Ikarus {};
	class Maels_Ikarus_02_F: Maels_Ikarus {};
	class Maels_Ikarus_03_F: Maels_Ikarus {};
	class Maels_Ikarus_04_F: Maels_Ikarus {};
	class Maels_Ikarus_propagande: Maels_Ikarus {};
	class Maels_Ikarus_propagande3: Maels_Ikarus {};
	class Maels_Ikarus_propagande4: Maels_Ikarus {};
	class Maels_Ikarus_TanoaLine: Maels_Ikarus {};
	class Maels_Ikarus_fete: Maels_Ikarus {};

	class GeK_Yukon
	{
		realname="GMC yukon";
		buyPrice=100500;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver","company_security"};
		fuel="Diesel";
		fuelCapacity=70;
		colors[]={};
	};

	/*
	**				AUTOECOLE VEHICULES
	*/
	class Maels_Ikarus_AET
	{
		realname="Bus Ikarus AET";
		buyPrice=150000;
		inventory=10;
		side="CIV";
		insurance=1;
		licenses[]={"company_driving_school","driver"};
		fuel="Diesel";
		fuelCapacity=120;
		colors[]={};
	};	

	class Maels_Lexus_is_AET
	{
		realname="Lexus IS AET";
		buyPrice=55000;
		inventory=10;
		side="CIV";
		insurance=1;
		licenses[]={"company_driving_school","driver"};
		fuel="GPL";
		fuelCapacity=66;
		colors[]={};
	};
	class Maels_boat_aet
	{
		realname="Bateau AET";
		buyPrice=50000;
		inventory=10;
		side="CIV";
		insurance=1;
		licenses[]={"boat","company_driving_school"};
		fuel="Diesel";
		fuelCapacity=160;
		colors[]={};
	};
	class Maels_ducati_AET
	{
		realname="Moto Ducati AET";
		buyPrice=150000;
		inventory=5;
		side="CIV";
		insurance=1;
		licenses[]={"moto","company_driving_school"};
		fuel="SP95";
		fuelCapacity=30;
		colors[]={};
	};
	class Touareg_AET	
	{
		realname="VW Touareg AET";
		buyPrice=36500;
		inventory=10;
		side="CIV";
		insurance=1;
		licenses[]={"driver","company_driving_school"};
		fuel="SP98";
		fuelCapacity=84;
		colors[]={};
	};
	class Maels_magnum_AET
	{
		realname="Magnum AET";
		buyPrice=200000;
		inventory=10;
		side="CIV";
		insurance=1;
		licenses[]={"truck","company_driving_school"};
		fuel="Diesel";
		fuelCapacity=1455;
		colors[]={};
	};
	class Maels_Taxi
	{
		realname="Cadillac Taxi";
		buyPrice=80000;
		inventory=15;
		side="CIV";
		insurance=1;
		licenses[]={"driver","company_transport_people"};
		fuel="SP95";
		fuelCapacity=68;
		colors[]=
		{
			"Gek_CTSV_Taxi",
			"GeK_CTSV_Taxi_EasyMove"
		};
	};
	class GeK_CTSV_Taxi: Maels_Taxi {};
	class GeK_CTSV_Taxi_EasyMove: Maels_Taxi {};

	class R_HotairBalloon
	{
		realname="Montgolfière";
		buyPrice=180000;
		inventory=8;
		side="CIV";
		insurance=1;
		licenses[]={"pilot","company_tourism"};
		fuel="Bio";
		fuelCapacity=170;
		colors[]={};
	};
	class Maels_Vandura_GMC_special
	{
		realname="GMC Musical";
		buyPrice=26615;
		inventory=35;
		fuelCapacity=90;
		side="CIV";
		insurance=1;
		licenses[]={"company_music_label"};
		fuel="Diesel";
		colors[]={};
		speaker[]=
		{
			{"Musique (José Lafouine Feat. Horace Tabor - A.N.T)", "fouine_ANT_1"},
			{"Musique (Sonate Pour L'ANT En FA Mineur)", "fouine_ANT_2"}
		};
	};
	class Lemon_Chrysler_300C_Limousine
	{
		realname="Chrysler 300C limousine";
		buyPrice=180000;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver","company_transport_people"};
		fuel="Diesel";
		fuelCapacity=150;
		colors[]=
		{
			"Lemon_Chrysler_300C_Limousine_noire",
			"Lemon_Chrysler_300C_Limousine_blanche",
			"Lemon_Chrysler_300C_Limousine_rose"
		};
	};
	class Lemon_Chrysler_300C_Limousine_noire: Lemon_Chrysler_300C_Limousine {};
	class Lemon_Chrysler_300C_Limousine_blanche: Lemon_Chrysler_300C_Limousine {};
	class Lemon_Chrysler_300C_Limousine_rose: Lemon_Chrysler_300C_Limousine {};

	class Lemon_Volkswagen_Karmann_Ghia
	{
		realname="Volkswagen Karmann Ghia";
		buyPrice=120000;
		inventory=20;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=40;
		colors[]=
		{
			"Lemon_Volkswagen_Karmann_Ghia_noire",
			"Lemon_Volkswagen_Karmann_Ghia_blanche",
			"Lemon_Volkswagen_Karmann_Ghia_rouge",
			"Lemon_Volkswagen_Karmann_Ghia_grise",
			"Lemon_Volkswagen_Karmann_Ghia_vert"
		};
	};
	class Lemon_Volkswagen_Karmann_Ghia_noire: Lemon_Volkswagen_Karmann_Ghia {};
	class Lemon_Volkswagen_Karmann_Ghia_blanche: Lemon_Volkswagen_Karmann_Ghia {};
	class Lemon_Volkswagen_Karmann_Ghia_rouge: Lemon_Volkswagen_Karmann_Ghia {};
	class Lemon_Volkswagen_Karmann_Ghia_grise: Lemon_Volkswagen_Karmann_Ghia {};
	class Lemon_Volkswagen_Karmann_Ghia_vert: Lemon_Volkswagen_Karmann_Ghia {};

	class Lemon_Peugeot_205_Turbo_16
	{
		realname="Peugeot 205 Turbo 16";
		buyPrice=165000;
		inventory=42;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=35;
		colors[]=
		{
			"Lemon_Peugeot_205_Turbo_16_noire",
			"Lemon_Peugeot_205_Turbo_16_blanche",
			"Lemon_Peugeot_205_Turbo_16_rouge",
			"Lemon_Peugeot_205_Turbo_16_grise",
			"Lemon_Peugeot_205_Turbo_16_vert"
		};
	};
	class Lemon_Peugeot_205_Turbo_16_noire: Lemon_Peugeot_205_Turbo_16 {};
	class Lemon_Peugeot_205_Turbo_16_blanche: Lemon_Peugeot_205_Turbo_16 {};
	class Lemon_Peugeot_205_Turbo_16_rouge: Lemon_Peugeot_205_Turbo_16 {};
	class Lemon_Peugeot_205_Turbo_16_grise: Lemon_Peugeot_205_Turbo_16 {};
	class Lemon_Peugeot_205_Turbo_16_vert: Lemon_Peugeot_205_Turbo_16 {};
	class Lemon_Peugeot_205_Turbo_16_Occasion
	{
		realname="Peugeot 205 Turbo 16 Occasion";
		buyPrice=5000;
		inventory=32;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=35;
		colors[]={};
	};

	class Lemon_Citroen_2CV
	{
		realname="Citroen 2CV";
		buyPrice=50000;
		inventory=45;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=35;
		colors[]=
		{
			"Lemon_Citroen_2CV_noire",
			"Lemon_Citroen_2CV_blanche",
			"Lemon_Citroen_2CV_rouge",
			"Lemon_Citroen_2CV_grise",
			"Lemon_Citroen_2CV_vert"
		};
	};
	class Lemon_Citroen_2CV_noire: Lemon_Citroen_2CV {};
	class Lemon_Citroen_2CV_blanche: Lemon_Citroen_2CV {};
	class Lemon_Citroen_2CV_rouge: Lemon_Citroen_2CV {};
	class Lemon_Citroen_2CV_grise: Lemon_Citroen_2CV {};
	class Lemon_Citroen_2CV_vert: Lemon_Citroen_2CV {};
	class Lemon_Citroen_2CV_Occasion
	{
		realname="Citroen 2CV";
		buyPrice=5000;
		inventory=32;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=35;
		colors[]={};
	};
	class Lemon_F350_Farm_1970
	{
		realname="Lemon F350";
		buyPrice=41050;
		inventory=120;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=135;
		colors[]=
		{
			"Lemon_F350_Farm_1970_noire",
			"Lemon_F350_Farm_1970_blanche",
			"Lemon_F350_Farm_1970_rouge",
			"Lemon_F350_Farm_1970_bleu",
			"Lemon_F350_Farm_1970_orange",
			"Lemon_F350_Farm_1970_vert"
		};
	};
	class Lemon_F350_Farm_1970_noire: Lemon_F350_Farm_1970 {};
	class Lemon_F350_Farm_1970_blanche: Lemon_F350_Farm_1970 {};
	class Lemon_F350_Farm_1970_rouge: Lemon_F350_Farm_1970 {};
	class Lemon_F350_Farm_1970_bleu: Lemon_F350_Farm_1970 {};
	class Lemon_F350_Farm_1970_orange: Lemon_F350_Farm_1970 {};
	class Lemon_F350_Farm_1970_vert: Lemon_F350_Farm_1970 {};

	class chevrolet_Apache_chris20215
	{
		realname="Chevrolet Apache ";
		buyPrice=39010;
		inventory=110;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=50;
		colors[]=
		{
			"chevrolet_Apache_chris20215_noire",
			"chevrolet_Apache_chris20215_blanche",
			"chevrolet_Apache_chris20215_rouge",
			"chevrolet_Apache_chris20215_grise",
			"chevrolet_Apache_chris20215_vert"
		};
	};
	class chevrolet_Apache_chris20215_noire: chevrolet_Apache_chris20215 {};
	class chevrolet_Apache_chris20215_blanche: chevrolet_Apache_chris20215 {};
	class chevrolet_Apache_chris20215_rouge: chevrolet_Apache_chris20215 {};
	class chevrolet_Apache_chris20215_grise: chevrolet_Apache_chris20215 {};
	class chevrolet_Apache_chris20215_vert: chevrolet_Apache_chris20215 {};

	class Lemon_Mercedes_300SL_1955
	{
		realname="Mercedes 300SL ";
		buyPrice=3700000;
		inventory=110;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=50;
		colors[]=
		{
			"Lemon_Mercedes_300SL_1955_noire",
			"Lemon_Mercedes_300SL_1955_blanche",
			"Lemon_Mercedes_300SL_1955_bordeaux",
			"Lemon_Mercedes_300SL_1955_grise",
			"Lemon_Mercedes_300SL_1955_vert"
		};
	};
	class Lemon_Mercedes_300SL_1955_noire: Lemon_Mercedes_300SL_1955 {};
	class Lemon_Mercedes_300SL_1955_blanche: Lemon_Mercedes_300SL_1955 {};
	class Lemon_Mercedes_300SL_1955_bordeaux: Lemon_Mercedes_300SL_1955 {};
	class Lemon_Mercedes_300SL_1955_grise: Lemon_Mercedes_300SL_1955 {};
	class Lemon_Mercedes_300SL_1955_vert: Lemon_Mercedes_300SL_1955 {};

	class Polaris_RZR_Turbo_chris20215
	{
		realname="Polaris RZR";
		buyPrice=75000;
		inventory=30;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=45;
		colors[]=
		{
			"Polaris_RZR_Turbo_chris20215_noire",
			"Polaris_RZR_Turbo_chris20215_blanche",
			"Polaris_RZR_Turbo_chris20215_rouge",
			"Polaris_RZR_Turbo_chris20215_gris",
			"Polaris_RZR_Turbo_chris20215_vert",
			"Polaris_RZR_Turbo_chris20215_orange"
		};
	};
	class Polaris_RZR_Turbo_chris20215_noire: Polaris_RZR_Turbo_chris20215 {};
	class Polaris_RZR_Turbo_chris20215_blanche: Polaris_RZR_Turbo_chris20215 {};
	class Polaris_RZR_Turbo_chris20215_rouge: Polaris_RZR_Turbo_chris20215 {};
	class Polaris_RZR_Turbo_chris20215_gris: Polaris_RZR_Turbo_chris20215 {};
	class Polaris_RZR_Turbo_chris20215_vert: Polaris_RZR_Turbo_chris20215 {};
	class Polaris_RZR_Turbo_chris20215_orange: Polaris_RZR_Turbo_chris20215 {};

	class Lemon_Jeep
	{
		realname="Jeep";
		buyPrice=35000;
		inventory=110;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=25;
		colors[]=
		{
			"Lemon_Jeep_noire",
			"Lemon_Jeep_blanche",
			"Lemon_Jeep_grise",
			"Lemon_Jeep_vert",
			"Lemon_Jeep_kaki"
		};
	};
	class Lemon_Jeep_noire: Lemon_Jeep {};
	class Lemon_Jeep_blanche: Lemon_Jeep {};
	class Lemon_Jeep_grise: Lemon_Jeep {};
	class Lemon_Jeep_vert: Lemon_Jeep {};
	class Lemon_Jeep_kaki: Lemon_Jeep {};

	class Lemon_QUAD_HONDA_TRX450
	{
		realname="Quad Honda TRX450";
		buyPrice=1200;
		inventory=30;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=15;
		colors[]=
		{
			"Lemon_QUAD_HONDA_TRX450_noire",
			"Lemon_QUAD_HONDA_TRX450_blanche",
			"Lemon_QUAD_HONDA_TRX450_grise"
		};
	};
	class Lemon_QUAD_HONDA_TRX450_noire: Lemon_QUAD_HONDA_TRX450 {};
	class Lemon_QUAD_HONDA_TRX450_blanche: Lemon_QUAD_HONDA_TRX450 {};
	class Lemon_QUAD_HONDA_TRX450_grise: Lemon_QUAD_HONDA_TRX450 {};

	class Golf2_16D
	{
		realname="Golf 2";
		buyPrice=25000;
		inventory=30;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=45;
		colors[]=
		{
			"Golf2_16D_noire",
			"Golf2_16D_blanche",
			"Golf2_16D_rouge",
			"Golf2_16D_grise",
			"Golf2_16D_vert"
		};
	};
	class Golf2_16D_noire: Golf2_16D {};
	class Golf2_16D_blanche: Golf2_16D {};
	class Golf2_16D_rouge: Golf2_16D {};
	class Golf2_16D_grise: Golf2_16D {};
	class Golf2_16D_vert: Golf2_16D {};

	class Lemon_Bronco
	{
		realname="Ford Bronco";
		buyPrice=77000;
		inventory=55;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=50;
		colors[]=
		{
			"Lemon_Bronco_noire",
			"Lemon_Bronco_blanche",
			"Lemon_Bronco_bordeaux",
			"Lemon_Bronco_grise",
			"Lemon_Bronco_vert"
		};
	};
	class Lemon_Bronco_noire: Lemon_Bronco {};
	class Lemon_Bronco_blanche: Lemon_Bronco {};
	class Lemon_Bronco_bordeaux: Lemon_Bronco {};
	class Lemon_Bronco_grise: Lemon_Bronco {};
	class Lemon_Bronco_vert : Lemon_Bronco {};

	class Lemon_BMW_750i
	{
		realname="BMW 750i";
		buyPrice=62000;
		inventory=35;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=55;
		colors[]=
		{
			"Lemon_BMW_750i_noire",
			"Lemon_BMW_750i_blanche",
			"Lemon_BMW_750i_bordeaux",
			"Lemon_BMW_750i_grise",
			"Lemon_BMW_750i_vert"
		};
	};
	class Lemon_BMW_750i_noire: Lemon_BMW_750i {};
	class Lemon_BMW_750i_blanche: Lemon_BMW_750i {};
	class Lemon_BMW_750i_bordeaux: Lemon_BMW_750i {};
	class Lemon_BMW_750i_grise: Lemon_BMW_750i {};
	class Lemon_BMW_750i_vert: Lemon_BMW_750i {};

	class Lemon_Mercedes_ML_63
	{
		realname="Mercedes ML63";
		buyPrice=350000;
		inventory=50;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=65;
		colors[]=
		{
			"Lemon_Mercedes_ML_63_noire",
			"Lemon_Mercedes_ML_63_blanche",
			"Lemon_Mercedes_ML_63_bordeaux",
			"Lemon_Mercedes_ML_63_grise",
			"Lemon_Mercedes_ML_63_verte"
		};
	};
	class Lemon_Mercedes_ML_63_noire: Lemon_Mercedes_ML_63 {};
	class Lemon_Mercedes_ML_63_blanche: Lemon_Mercedes_ML_63 {};
	class Lemon_Mercedes_ML_63_bordeaux: Lemon_Mercedes_ML_63 {};
	class Lemon_Mercedes_ML_63_grise: Lemon_Mercedes_ML_63 {};
	class Lemon_Mercedes_ML_63_verte: Lemon_Mercedes_ML_63 {};
	class Lemon_Mercedes_ML_63_Rebelle: Lemon_Mercedes_ML_63
	{
		insurance=0;
		buyPrice=975000;
		licenses[]={"rebelle_1"};
		colors[]={};
		disableOwnerInfos=1;
	};
	class Lemon_Mercedes_ML_63_Rebelle_Kaki: Lemon_Mercedes_ML_63_Rebelle {};

	class Nissan_PatrolGR_chris20215
	{
		realname="Nissan Patrol GR";
		buyPrice=20000;
		inventory=35;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=55;
		colors[]=
		{
			"Nissan_PatrolGR_chris20215_noire",
			"Nissan_PatrolGR_chris20215_blanche",
			"Nissan_PatrolGR_chris20215_bordeaux",
			"Nissan_PatrolGR_chris20215_grise",
			"Nissan_PatrolGR_chris20215_vert"
		};
	};
	class Nissan_PatrolGR_chris20215_noire: Nissan_PatrolGR_chris20215 {};
	class Nissan_PatrolGR_chris20215_blanche: Nissan_PatrolGR_chris20215 {};
	class Nissan_PatrolGR_chris20215_bordeaux: Nissan_PatrolGR_chris20215 {};
	class Nissan_PatrolGR_chris20215_grise: Nissan_PatrolGR_chris20215 {};
	class Nissan_PatrolGR_chris20215_vert: Nissan_PatrolGR_chris20215 {};

	class Lemon_Ford_A
	{
		realname="Ford A";
		buyPrice=9500;
		inventory=60;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=35;
		colors[]=
		{
			"Lemon_Ford_A_noire",
			"Lemon_Ford_A_blanche",
			"Lemon_Ford_A_bordeaux",
			"Lemon_Ford_A_grise",
			"Lemon_Ford_A_vert"
		};
	};
	class Lemon_Ford_A_noire: Lemon_Ford_A {};
	class Lemon_Ford_A_blanche: Lemon_Ford_A {};
	class Lemon_Ford_A_bordeaux: Lemon_Ford_A {};
	class Lemon_Ford_A_grise: Lemon_Ford_A {};
	class Lemon_Ford_A_vert: Lemon_Ford_A {};

	class Lemon_Dac_Farm
	{
		realname="Dac";
		buyPrice=110000;
		inventory=200;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=135;
		colors[]=
		{
			"Lemon_Dac_Farm_rose",
			"Lemon_Dac_Farm_bleu",
			"Lemon_Dac_Farm_bordeaux",
			"Lemon_Dac_Farm_gris",
			"Lemon_Dac_Farm_camo"
		};
	};
	class Lemon_Dac_Farm_rose: Lemon_Dac_Farm {};
	class Lemon_Dac_Farm_bleu: Lemon_Dac_Farm {};
	class Lemon_Dac_Farm_bordeaux: Lemon_Dac_Farm {};
	class Lemon_Dac_Farm_gris: Lemon_Dac_Farm {};
	
	class Lemon_Dac_Farm_Occasion
	{
		realname="Dac occasion";
		buyPrice=52000;
		inventory=140;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="Diesel";
		fuelCapacity=65;
	};

	class Lemon_Ural_Farm
	{
		realname="Ural";
		buyPrice=100000;
		inventory=200;
		side="CIV";
		insurance=1;
		licenses[]={"truck"};
		fuel="Diesel";
		fuelCapacity=175;
	};

	class AM_M939A2_chris20215_m939
	{
		realname="AM général";
		buyPrice=135000;
		inventory=200;
		side="CIV";
		insurance=1;
		licenses[]={"truck"};
		fuel="Diesel";
		fuelCapacity=150;
		colors[]=
		{
			"AM_M939A2_chris20215_m939_body",
			"AM_M939A2_chris20215_gris",
			"AM_M939A2_chris20215_kaki_1",
			"AM_M939A2_chris20215_bleu_aly",
			"AM_M939A2_chris20215_vert",
			"AM_M939A2_chris20215_black"
		};
	};
	class AM_M939A2_chris20215_m939_body: AM_M939A2_chris20215_m939 {};
	class AM_M939A2_chris20215_gris: AM_M939A2_chris20215_m939 {};
	class AM_M939A2_chris20215_kaki_1: AM_M939A2_chris20215_m939 {};
	class AM_M939A2_chris20215_bleu_aly: AM_M939A2_chris20215_m939 {};
	class AM_M939A2_chris20215_vert: AM_M939A2_chris20215_m939 {};
	class AM_M939A2_chris20215_black: AM_M939A2_chris20215_m939 {};	

	class Lemon_Citroen_SM
	{
		realname="Citroen SM";
		buyPrice=19500;
		inventory=60;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP95";
		fuelCapacity=40;
		colors[]=
		{
			"Lemon_Citroen_SM_noire",
			"Lemon_Citroen_SM_blanche",
			"Lemon_Citroen_SM_bordeaux",
			"Lemon_Citroen_SM_grise",
			"Lemon_Citroen_SM_vert"
		};
	};
	class Lemon_Citroen_SM_noire: Lemon_Citroen_SM {};
	class Lemon_Citroen_SM_blanche: Lemon_Citroen_SM {};
	class Lemon_Citroen_SM_bordeaux: Lemon_Citroen_SM {};
	class Lemon_Citroen_SM_grise: Lemon_Citroen_SM {};
	class Lemon_Citroen_SM_vert: Lemon_Citroen_SM {};

	class Lemon_Ducati_Diavel
	{
		realname="Ducati Diavel";
		buyPrice=350000;
		inventory=5;
		side="CIV";
		insurance=1;
		licenses[]={"moto"};
		fuel="SP95";
		fuelCapacity=15;
		colors[]=
		{
			"Lemon_Ducati_Diavel_noire",
			"Lemon_Ducati_Diavel_blanche",
			"Lemon_Ducati_Diavel_rouge",
			"Lemon_Ducati_Diavel_gris",
			"Lemon_Ducati_Diavel_verte"
		};
	};
	class Lemon_Ducati_Diavel_noire: Lemon_Ducati_Diavel {};
	class Lemon_Ducati_Diavel_blanche: Lemon_Ducati_Diavel {};
	class Lemon_Ducati_Diavel_rouge: Lemon_Ducati_Diavel {};
	class Lemon_Ducati_Diavel_gris: Lemon_Ducati_Diavel {};
	class Lemon_Ducati_Diavel_vert: Lemon_Ducati_Diavel {};

	class Lemon_Peterbilt_1999
	{
		realname="Peterbilt 1999";
		buyPrice=109000;
		inventory=40;
		side="CIV";
		insurance=1;
		licenses[]={"truck","company_car_shop"};
		fuel="Diesel";
		fuelCapacity=500;
	};

	class Lemon_Navistar
	{
		realname="Navistar";
		buyPrice=121000;
		inventory=40;
		side="CIV";
		insurance=1;
		licenses[]={"truck","company_car_shop"};
		fuel="Diesel";
		fuelCapacity=350;
	};

	class GeK_UAZ_3303
	{
		realname="UAZ";
		buyPrice=101000;
		inventory=200;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=65;
		colors[]=
		{
			"GeK_UAZ_3303_noir",
			"GeK_UAZ_3303_grissombre",
			"GeK_UAZ_3303_gris",
			"GeK_UAZ_3303_grisclair",
			"GeK_UAZ_3303_blanc",
			"GeK_UAZ_3303_sable",
			"GeK_UAZ_3303_bordeau",
			"GeK_UAZ_3303_bleu",
			"GeK_UAZ_3303_bleunuit",
			"GeK_UAZ_3303_mauvenuit",
			"GeK_UAZ_3303_vert",
			"GeK_UAZ_3303_jaune",
			"GeK_UAZ_3303_rouge",
			"GeK_UAZ_3303_orange"
		};
	};
	class GeK_UAZ_3303_noir: GeK_UAZ_3303 {};
	class GeK_UAZ_3303_grissombre: GeK_UAZ_3303 {};
	class GeK_UAZ_3303_gris: GeK_UAZ_3303 {};
	class GeK_UAZ_3303_grisclair: GeK_UAZ_3303 {};
	class GeK_UAZ_3303_blanc: GeK_UAZ_3303 {};
	class GeK_UAZ_3303_sable: GeK_UAZ_3303 {};
	class GeK_UAZ_3303_bordeau: GeK_UAZ_3303 {};
	class GeK_UAZ_3303_bleu: GeK_UAZ_3303 {};
	class GeK_UAZ_3303_bleunuit: GeK_UAZ_3303 {};
	class GeK_UAZ_3303_mauvenuit: GeK_UAZ_3303 {};
	class GeK_UAZ_3303_vert: GeK_UAZ_3303 {};
	class GeK_UAZ_3303_jaune: GeK_UAZ_3303 {};
	class GeK_UAZ_3303_rouge: GeK_UAZ_3303 {};
	class GeK_UAZ_3303_orange: GeK_UAZ_3303 {};

	class GeK_Zil
	{
		realname="Zil";
		buyPrice=115000;
		inventory=200;
		side="CIV";
		insurance=1;
		licenses[]={"truck"};
		fuel="SP98";
		fuelCapacity=55;
		colors[]=
		{
			"GeK_Zil_grissombre",
			"GeK_Zil_noir",
			"GeK_Zil_gris",
			"GeK_Zil_grisclair",
			"GeK_Zil_blanc",
			"GeK_Zil_sable",
			"GeK_Zil_bordeau",
			"GeK_Zil_bleu",
			"GeK_Zil_bleunuit",
			"GeK_Zil_mauvenuit",
			"GeK_Zil_vert",
			"GeK_Zil_rouge",
			"GeK_Zil_jaune",
			"GeK_Zil_orange"
		};
	};
	class GeK_Zil_noir: GeK_Zil {};
	class GeK_Zil_grissombre: GeK_Zil {};
	class GeK_Zil_gris: GeK_Zil {};
	class GeK_Zil_grisclair: GeK_Zil {};
	class GeK_Zil_blanc: GeK_Zil {};
	class GeK_Zil_sable: GeK_Zil {};
	class GeK_Zil_bordeau: GeK_Zil {};
	class GeK_Zil_bleu: GeK_Zil {};
	class GeK_Zil_bleunuit: GeK_Zil {};
	class GeK_Zil_mauvenuit: GeK_Zil {};
	class GeK_Zil_vert: GeK_Zil {};
	class GeK_Zil_jaune: GeK_Zil {};
	class GeK_Zil_rouge: GeK_Zil {};
	class GeK_Zil_orange: GeK_Zil {};

	class GeK_Audi_Quattro
	{
		realname="Audi Quattro";
		buyPrice=124000;
		inventory=30;
		side="CIV";
		insurance=1;
		licenses[]={"driver"};
		fuel="SP98";
		fuelCapacity=45;
		colors[]=
		{
			"GeK_Audi_Quattro_noir",
			"GeK_Audi_Quattro_grissombre",
			"GeK_Audi_Quattro_gris",
			"GeK_Audi_Quattro_grisclair",
			"GeK_Audi_Quattro_blanc",
			"GeK_Audi_Quattro_sable",
			"GeK_Audi_Quattro_bordeau",
			"GeK_Audi_Quattro_bleu",
			"GeK_Audi_Quattro_bleunuit",
			"GeK_Audi_Quattro_mauvenuit",
			"GeK_Audi_Quattro_vert",
			"GeK_Audi_Quattro_rouge",
			"GeK_Audi_Quattro_jaune",
			"GeK_Audi_Quattro_orange"
		};
	};
	class GeK_Audi_Quattro_noir: GeK_Audi_Quattro {};
	class GeK_Audi_Quattro_grissombre: GeK_Audi_Quattro {};
	class GeK_Audi_Quattro_gris: GeK_Audi_Quattro {};
	class GeK_Audi_Quattro_grisclair: GeK_Audi_Quattro {};
	class GeK_Audi_Quattro_blanc: GeK_Audi_Quattro {};
	class GeK_Audi_Quattro_sable: GeK_Audi_Quattro {};
	class GeK_Audi_Quattro_bordeau: GeK_Audi_Quattro {};
	class GeK_Audi_Quattro_bleu: GeK_Audi_Quattro {};
	class GeK_Audi_Quattro_bleunuit: GeK_Audi_Quattro {};
	class GeK_Audi_Quattro_mauvenuit: GeK_Audi_Quattro {};
	class GeK_Audi_Quattro_vert: GeK_Audi_Quattro {};
	class GeK_Audi_Quattro_rouge: GeK_Audi_Quattro {};
	class GeK_Audi_Quattro_jaune: GeK_Audi_Quattro {};
	class GeK_Audi_Quattro_orange: GeK_Audi_Quattro {};
};
