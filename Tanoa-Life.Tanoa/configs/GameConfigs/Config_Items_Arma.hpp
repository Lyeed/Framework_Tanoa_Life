class ALYSIA_ITEMS_ARMA
{
	/*==================
	**      HOW TO
	**==================*/
	class item_className
	{
		name="Tazer";//(optional) ingame item display name incase displayname if CfgArma is not correct
		buy_price=2000;//item buy price
		buy_condition_CIV=0;//(optional) rank needed to buy <only for civilian>
		buy_condition_GUER=0;//(optional) rank needed to buy <only for independent>
		buy_condition_EAST=0;//(optional) rank needed to buy <only for opfort>
		buy_condition_WEST=0;//(optional) rank needed to buy <only for bluefor>
		buy_license_CIV[]={};//(optional) license needed to buy <only for civilian>
		buy_license_GUER[]={};//(optional) license needed to buy <only for independent>
		buy_license_EAST[]={};//(optional) license needed to buy <only for opfort>
		buy_license_WEST[]={};//(optional) license needed to buy <only for bluefor>
	};
	/*==================*/
	////////////////////////////////////////////  NOT USED ATM   ///////////////////////////////////////////////////
	class Skyline_Uniforme_Prisonnier_01_F {};
	class Skyline_Uniforme_Prisonnier_02_F {};
	class Bank_Drill {};
	class Bank_Hacker {};
	class Mask_M40
	{
		protect_contamination_air=1;
	};
	class Mask_M40_OD
	{
		protect_contamination_air=1;
	};
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////  CIVIL   //////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////// PARACHUTE //////////////////////////////////////////
	class B_Parachute
	{
		buy_license_CIV[]={"skydive"};
		buy_license_EAST[]={"skydive"};
		buy_license_GUER[]={"skydive"};
		buy_price=950;
	};
	///////////////////////////////// ARMURERIE //////////////////////////////////////////
	class RH_gsh18
	{
		buy_license_CIV[]={"gun","politique_pnt_member"};
	};

	class hgun_Pistol_01_F
	{
		buy_license_CIV[]={"gun","politique_pnt_member"};
	};

	class RH_p226
	{
		buy_license_CIV[]={"gun","politique_pnt_member"};
	};
	class RH_p226s: RH_p226 {};

 	class RH_vp70
 	{
		buy_license_CIV[]={"gun","politique_pnt_member"};
 	};

	class RH_cz75
	{
		buy_license_CIV[]={"gun","politique_pnt_member"};
	};

	class Fett_SDAR
	{
		buy_license_CIV[]={"gun","politique_pnt_member"};
		buy_condition_WEST=1;
		buy_condition_EAST=2;
	};

	///////////////////////////////// UNIFORME //////////////////////////////////////////
	class rds_uniform_Worker1
	{
		buy_price=50;
	};
	class rds_uniform_Worker2: rds_uniform_Worker1 {};
	class rds_uniform_Worker3: rds_uniform_Worker1 {};
	class rds_uniform_Worker4: rds_uniform_Worker1 {};
	class Skyline_Uniforme_Alysia_01_F: rds_uniform_Worker1 {};

	class U_C_man_sport_3_F
	{
		buy_price=60;
	};
	class U_C_man_sport_2_F: U_C_man_sport_3_F {};
	class U_C_man_sport_1_F: U_C_man_sport_3_F {};
	class U_C_Poloshirt_blue: U_C_man_sport_3_F {};
	class U_C_Poloshirt_burgundy: U_C_man_sport_3_F {};
	class U_C_Poloshirt_redwhite: U_C_man_sport_3_F {};
	class U_C_Poloshirt_salmon: U_C_man_sport_3_F {};
	class U_C_Poloshirt_stripped: U_C_man_sport_3_F {};
	class U_C_Poloshirt_tricolour: U_C_man_sport_3_F {};
	class U_C_Poor_1: U_C_man_sport_3_F {};

	class TRYK_shirts_DENIM_WHB_Sleeve
	{
		buy_price=70;
	};
	class rds_uniform_Villager1: TRYK_shirts_DENIM_WHB_Sleeve {};
	class rds_uniform_Villager2: TRYK_shirts_DENIM_WHB_Sleeve {};
	class rds_uniform_Villager3: TRYK_shirts_DENIM_WHB_Sleeve {};
	class rds_uniform_Villager4: TRYK_shirts_DENIM_WHB_Sleeve {};
	class rds_uniform_Woodlander1: TRYK_shirts_DENIM_WHB_Sleeve {};
	class rds_uniform_Woodlander2: TRYK_shirts_DENIM_WHB_Sleeve {};
	class rds_uniform_Woodlander3: TRYK_shirts_DENIM_WHB_Sleeve {};
	class rds_uniform_schoolteacher: TRYK_shirts_DENIM_WHB_Sleeve {};
	class rds_uniform_Woodlander4: TRYK_shirts_DENIM_WHB_Sleeve {};

	class rds_uniform_citizen1
	{
		buy_price=80;
	};
	class rds_uniform_citizen2: rds_uniform_citizen1 {};
	class rds_uniform_citizen3: rds_uniform_citizen1 {};
	class rds_uniform_citizen4: rds_uniform_citizen1 {};
	class U_C_Man_casual_1_F: rds_uniform_citizen1 {};
	class U_C_Man_casual_2_F: rds_uniform_citizen1 {};
	class U_C_Man_casual_3_F: rds_uniform_citizen1 {};

	class U_BG_Guerilla2_1
	{
		buy_price=95;
	};
	class U_BG_Guerilla2_2: U_BG_Guerilla2_1 {};
	class U_BG_Guerilla2_3: U_BG_Guerilla2_1 {};
	class U_BG_Guerilla3_1: U_BG_Guerilla2_1 {};
	class Skyline_Uniforme_DolceGabbana_01_F: U_BG_Guerilla2_1 {};
	class Skyline_Uniforme_Hello_Kitty_01_F: U_BG_Guerilla2_1 {};
	class Skyline_Uniforme_Bob_01_F: U_BG_Guerilla2_1 {};
	class Skyline_Uniforme_Patrick_01_F: U_BG_Guerilla2_1 {};

	class U_C_HunterBody_grn: U_BG_Guerilla2_1 {};
	class U_C_Journalist: U_BG_Guerilla2_1 {};

	class TRYK_T_OD_PAD
	{
		buy_price=120;
	};
	class TRYK_U_denim_hood_nc: TRYK_T_OD_PAD {};
	class TRYK_U_B_BLK_OD: TRYK_T_OD_PAD {};
	class TRYK_U_B_BLK_OD_Tshirt: TRYK_T_OD_PAD {};
	class TRYK_U_B_BLK_TAN_2: TRYK_T_OD_PAD {};
	class TRYK_U_B_PCUGs_OD: TRYK_T_OD_PAD {};
	class TRYK_shirts_TAN_PAD_BK: TRYK_T_OD_PAD {};
	class TRYK_shirts_BLK_PAD_BL: TRYK_T_OD_PAD {};
	class TRYK_shirts_OD_PAD_BL: TRYK_T_OD_PAD {};
	class TRYK_shirts_TAN_PAD_BL: TRYK_T_OD_PAD {};
	class TRYK_shirts_BLK_PAD_BLW: TRYK_T_OD_PAD {};
	class TRYK_shirts_OD_PAD_BLW: TRYK_T_OD_PAD {};
	class TRYK_shirts_TAN_PAD_BLW: TRYK_T_OD_PAD {};
	class TRYK_shirts_BLK_PAD_BLU3: TRYK_T_OD_PAD {};
	class TRYK_shirts_OD_PAD_BLU3: TRYK_T_OD_PAD {};
	class TRYK_shirts_TAN_PAD_BLU3: TRYK_T_OD_PAD {};
	class TRYK_shirts_BLK_PAD: TRYK_T_OD_PAD {};
	class TRYK_shirts_OD_PAD: TRYK_T_OD_PAD {};
	class TRYK_shirts_TAN_PAD: TRYK_T_OD_PAD {};
	class TRYK_shirts_BLK_PAD_RED2: TRYK_T_OD_PAD {};
	class TRYK_shirts_OD_PAD_RED2: TRYK_T_OD_PAD {};
	class TRYK_shirts_TAN_PAD_RED2: TRYK_T_OD_PAD {};
	class TRYK_shirts_BLK_PAD_YEL: TRYK_T_OD_PAD {};
	class TRYK_shirts_OD_PAD_YEL: TRYK_T_OD_PAD {};
	class TRYK_shirts_TAN_PAD_YEL: TRYK_T_OD_PAD {};

	class rds_uniform_priest
	{
		buy_price=138;
	};

	class U_I_C_Soldier_Bandit_4_F
	{
		buy_price=140;
	};
	class U_I_C_Soldier_Bandit_5_F: U_I_C_Soldier_Bandit_4_F {};
	class U_I_C_Soldier_Bandit_1_F: U_I_C_Soldier_Bandit_4_F {};
	class U_I_C_Soldier_Bandit_2_F: U_I_C_Soldier_Bandit_4_F {};
	class U_I_C_Soldier_Bandit_3_F: U_I_C_Soldier_Bandit_4_F {};
	class U_C_Man_casual_4_F: U_I_C_Soldier_Bandit_4_F {};
	class U_C_Man_casual_5_F: U_I_C_Soldier_Bandit_4_F {};
	class U_C_Man_casual_6_F: U_I_C_Soldier_Bandit_4_F {};

	class rds_uniform_Profiteer1
	{
		buy_price=195;
	};
	class rds_uniform_Profiteer2: rds_uniform_Profiteer1 {};
	class rds_uniform_Profiteer3: rds_uniform_Profiteer1 {};
	class rds_uniform_Profiteer4: rds_uniform_Profiteer1 {};

	class TRYK_U_pad_hood_Blod
	{
		buy_price=200;
	};
	class TRYK_U_pad_hood_Blk: TRYK_U_pad_hood_Blod {};
	class TRYK_U_pad_hood_Cl_blk: TRYK_U_pad_hood_Blod {};
	class TRYK_U_pad_hood_Cl: TRYK_U_pad_hood_Blod {};
	class U_OrestesBody: TRYK_U_pad_hood_Blod {};
	class TRYK_U_denim_hood_blk: TRYK_U_pad_hood_Blod {};
	class TRYK_U_denim_jersey_blk: TRYK_U_pad_hood_Blod {};
	class TRYK_U_denim_jersey_blu: TRYK_U_pad_hood_Blod {};
	class TRYK_U_B_wh_blk_Rollup_CombatUniform: TRYK_U_pad_hood_Blod {};
	class TRYK_U_B_wh_OD_Rollup_CombatUniform: TRYK_U_pad_hood_Blod {};
	class TRYK_U_B_wh_tan_Rollup_CombatUniform: TRYK_U_pad_hood_Blod {};
	class TRYK_U_B_RED_T_BG_BR: TRYK_U_pad_hood_Blod {};
	class TRYK_U_B_RED_T_BR: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_BLK_PAD_BK: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_BK: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_BK_Sleeve: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_BL: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_BL_Sleeve: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_BWH: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_BWH_Sleeve: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_od: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_od_Sleeve: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_R: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_R_Sleeve: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_RED2: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_RED2_Sleeve: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_WH: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_WH_Sleeve: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_WHB: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_ylb: TRYK_U_pad_hood_Blod {};
	class TRYK_shirts_DENIM_ylb_Sleeve: TRYK_U_pad_hood_Blod {};

	class TRYK_U_B_PCUGs_BLK_R
	{
		buy_price=500;
	};
	class TRYK_U_B_PCUGs_gry: TRYK_U_B_PCUGs_BLK_R {};
	class TRYK_U_B_PCUGs_gry_R: TRYK_U_B_PCUGs_BLK_R {};
	class TRYK_U_B_PCUGs_OD_R: TRYK_U_B_PCUGs_BLK_R {};
	class TRYK_shirts_OD_PAD_BK: TRYK_U_B_PCUGs_BLK_R {};
	class TRYK_U_B_PCUGs_BLK: TRYK_U_B_PCUGs_BLK_R {};
	class TRYK_T_TAN_PAD: TRYK_U_B_PCUGs_BLK_R {};
	class TRYK_U_B_Denim_T_BG_BK: TRYK_U_B_PCUGs_BLK_R {};
	class TRYK_U_B_Denim_T_BG_WH: TRYK_U_B_PCUGs_BLK_R {};
	class TRYK_U_B_Denim_T_BK: TRYK_U_B_PCUGs_BLK_R {};
	class TRYK_U_B_Denim_T_WH: TRYK_U_B_PCUGs_BLK_R {};

	class TRYK_T_BLK_PAD
	{
		buy_price=750;
	};
	class TRYK_U_B_BLK_T_BG_WH: TRYK_T_BLK_PAD {};
	class TRYK_U_B_BLK_T_BK: TRYK_T_BLK_PAD {};
	class TRYK_U_B_BLK_T_WH: TRYK_T_BLK_PAD {};
	class TRYK_U_B_ODTAN: TRYK_T_BLK_PAD {};
	class TRYK_U_B_ODTAN_Tshirt: TRYK_T_BLK_PAD {};

	class TRYK_U_B_BLK_OD_Rollup_CombatUniform
	{
		buy_price=850;
	};
	class TRYK_U_B_BLK_tan_Rollup_CombatUniform: TRYK_U_B_BLK_OD_Rollup_CombatUniform {};
	class TRYK_U_B_BLOD_T: TRYK_U_B_BLK_OD_Rollup_CombatUniform {};
	class TRYK_U_B_BLTAN_T: TRYK_U_B_BLK_OD_Rollup_CombatUniform {};
	class TRYK_U_B_C02_Tsirt: TRYK_U_B_BLK_OD_Rollup_CombatUniform {};

	class TRYK_U_B_OD_BLK
	{
		buy_price=1200;
	};
	class TRYK_U_B_OD_BLK_2: TRYK_U_B_OD_BLK {};

	class rds_uniform_Functionary1
	{
		buy_price=10000;
	};
	class Alysia_Uniform_Civ_PNT: rds_uniform_Functionary1
	{
		buy_license_CIV[]={"politique_pnt_militant"};
	};
	class rds_uniform_Functionary2: rds_uniform_Functionary1 {};
	class TRYK_SUITS_BLK_F: rds_uniform_Functionary1 {};
	class TRYK_SUITS_BR_F: rds_uniform_Functionary1 {};
	class EF_M_jkt2_2: rds_uniform_Functionary1 {};
	class EF_M_jkt2_22: rds_uniform_Functionary1 {};
	class EF_M_jkt2_3: rds_uniform_Functionary1 {};
	class EF_M_jkt2_32: rds_uniform_Functionary1 {};
	class EF_M_jkt1_3: rds_uniform_Functionary1 {};
	class EF_M_jkt2_4: rds_uniform_Functionary1 {};
	class EF_M_jkt3: rds_uniform_Functionary1 {};
	class EF_M_jkt32: rds_uniform_Functionary1 {};

	/////////////////////////////////UNIFORME FEMME/////////////////////////////
	class EF_FEM_2U
	{
		buy_price=250;
	};
	class EF_FEM_3_2: EF_FEM_2U {};
	class EF_FEM_3_3LPBPS: EF_FEM_2U {};
	class EF_FEM_3_3LPBP: EF_FEM_2U {};
	class EF_FEM_3_3LPBR: EF_FEM_2U {};
	class EF_FEM_3_3LPBW: EF_FEM_2U {};
	class EF_FEM_3_3LPB: EF_FEM_2U {};
	class EF_FEM_3_3LPBL: EF_FEM_2U {};
	class EF_FEM_3_3LPBPS2: EF_FEM_2U {};
	class EF_FEM_3_3LPBP2: EF_FEM_2U {};
	class EF_FEM_3_3LPBR2: EF_FEM_2U {};
	class EF_FEM_3_3LPBW2: EF_FEM_2U {};
	class EF_FEM_3_3LPB2: EF_FEM_2U {};
	class EF_FEM_3_3LPBL2: EF_FEM_2U {};
	class EF_FEM_3: EF_FEM_2U {};
	class EF_FEM_4: EF_FEM_2U {};
	class EF_FEM_4_2LPBPS: EF_FEM_2U {};
	class EF_FEM_4_2LPBP: EF_FEM_2U {};
	class EF_FEM_4_2LPBR: EF_FEM_2U {};
	class EF_FEM_4_2LPBW: EF_FEM_2U {};
	class EF_FEM_4_2LPB: EF_FEM_2U {};
	class EF_FEM_4_2LPBL: EF_FEM_2U {};
	class EF_FEM_4_2LPBPS2: EF_FEM_2U {};
	class EF_FEM_4_2LPBP2: EF_FEM_2U {};
	class EF_FEM_4_2LPBR2: EF_FEM_2U {};
	class EF_FEM_4_2LPBW2: EF_FEM_2U {};
	class EF_FEM_4_2LPB2: EF_FEM_2U {};
	class EF_FEM_4_2LPBL2: EF_FEM_2U {};
	class EF_FEM_5: EF_FEM_2U {};
	class EF_FEM_6: EF_FEM_2U {};
	class EF_FEM_3_42: EF_FEM_2U {};
	class EF_FEM_2BK: EF_FEM_2U {};

	///////////////////////////////// GOGGLE FEMME///////////////////////////////////
	class EF_FG21
	{
		buy_price=400;
	};
	class EF_FG1: EF_FG21 {};
	class EF_ACC1: EF_FG21 {};
	class EF_ACC2: EF_FG21 {};
	class EF_ACC3: EF_FG21 {};
	class EF_AC1: EF_FG21 {};
	class EF_AC2: EF_FG21 {};
	class EF_AC3: EF_FG21 {};
	class EF_PG1: EF_FG21 {};
	class EF_PG2: EF_FG21 {};
	////////////////////////////////// HEADGEAR FEMME //////////////////////////
	class EF_Fcap_O
	{
		buy_price=400;
	};
	class EF_Fcap_R: EF_Fcap_O {};
	class EF_Fcap_Surf: EF_Fcap_O {};
	class EF_Fcap_TN: EF_Fcap_O {};
	class EF_FPKL_BK: EF_Fcap_O {};
	class EF_FPKL_BL: EF_Fcap_O {};
	class EF_FPKL_CY: EF_Fcap_O {};
	class EF_FPKL_RD: EF_Fcap_O {};
	class EF_FPKL_W: EF_Fcap_O {};
	class EF_Long_wig_B: EF_Fcap_O {};
	class EF_Punk_wig_B: EF_Fcap_O {};
	class EF_wig_SB: EF_Fcap_O {};
	class EF_wig_VSB: EF_Fcap_O {};
	class EF_Punk_wig_SB3: EF_Fcap_O {};
	class EF_Punk_wig_SB: EF_Fcap_O {};
	class EF_Long_wig_BLE: EF_Fcap_O {};
	class EF_Long_wig_BL: EF_Fcap_O {};
	class EF_Punk_wig_BL: EF_Fcap_O {};
	class EF_wig_SBL: EF_Fcap_O {};
	class EF_wig_VSBL: EF_Fcap_O {};
	class EF_Punk_wig_SBL3: EF_Fcap_O {};
	class EF_Punk_wig_SBL: EF_Fcap_O {};
	class EF_Long_wig_BW: EF_Fcap_O {};
	class EF_Punk_wig_BW: EF_Fcap_O {};
	class EF_wig_SBW: EF_Fcap_O {};
	class EF_wig_VSBW: EF_Fcap_O {};
	class EF_Punk_wig_SBW3: EF_Fcap_O {};
	class EF_Punk_wig_SBW: EF_Fcap_O {};
	class EF_Long_wig_GL: EF_Fcap_O {};
	class EF_Punk_wig_GL: EF_Fcap_O {};
	class EF_Punk_wig_SSV3: EF_Fcap_O {};
	class EF_wig_VSSV: EF_Fcap_O {};
	class EF_FBNE_BK: EF_Fcap_O {};
	class EF_FBNE_BL: EF_Fcap_O {};
	class EF_FBNE_BR: EF_Fcap_O {};
	class EF_FBNE_R: EF_Fcap_O {};
	class EF_FBNE_V: EF_Fcap_O {};
	class EF_FBNE_W: EF_Fcap_O {};
	class EF_FHAT_BW: EF_Fcap_O {};
	class EF_FHAT_BK: EF_Fcap_O {};
	class EF_FHAT_CL: EF_Fcap_O {};
	class EF_FHAT_PI: EF_Fcap_O {};
	////////////////////////////////// VEST FEMME //////////////////////////
	class EF_SHF_BK
	{
		buy_price=1675;
		buy_license_CIV[]={"gun","politique_pnt_member"};
	};
	class EF_SHF_BW: EF_SHF_BK {};
	///////////////////////////////// BACKPACKS Femme/////////////////////////////////
	class EF_FBAG_BK
	{
		buy_price=450;
	};
	class EF_FBAG_BL: EF_FBAG_BK {};
	class EF_FBAG_BW: EF_FBAG_BK {};
	class EF_FBAG_RD: EF_FBAG_BK {};
	class EF_FBAG_SG: EF_FBAG_BK {};
	class EF_FBAG_VL: EF_FBAG_BK {};
	class EF_FBAG_HB_BK: EF_FBAG_BK {};
	class EF_FBAG_HB_BL: EF_FBAG_BK {};
	class EF_FBAG_HB_RD: EF_FBAG_BK {};
	class EF_FBAG_HB_SG: EF_FBAG_BK {};
	class EF_FBAG_HB_VL: EF_FBAG_BK {};
	class EF_FBAG_SL_BK: EF_FBAG_BK {};
	class EF_FBAG_SL_BL: EF_FBAG_BK {};
	class EF_FBAG_SL_RD: EF_FBAG_BK {};
	class EF_FBAG_SL_SG: EF_FBAG_BK {};
	class EF_FBAG_SL_VL: EF_FBAG_BK {};
	///////////////////////////////// BACKBACK /////////////////////////////////
	class Skyline_Backpack_Improvise_01_F
	{
		buy_price=210;
		//Taille inventaire "I"=100
	};

	class B_AssaultPack_blk
	{
		buy_price=250;
	};
	class B_AssaultPack_cbr: B_AssaultPack_blk {};
	class B_AssaultPack_Kerry: B_AssaultPack_blk {};
	class B_AssaultPack_khk: B_AssaultPack_blk {};
	class B_AssaultPack_rgr: B_AssaultPack_blk {};
	class B_AssaultPack_sgg: B_AssaultPack_blk {};

	class B_FieldPack_blk
	{
		buy_price=500;
	};
	class B_FieldPack_cbr: B_FieldPack_blk {};
	class B_FieldPack_khk: B_FieldPack_blk {};
	class B_FieldPack_oli: B_FieldPack_blk {};

	class TRYK_B_Kitbag_Base
	{
		buy_price=800;
	};
	class B_Kitbag_cbr: TRYK_B_Kitbag_Base {};
	class B_Kitbag_rgr: TRYK_B_Kitbag_Base {};
	class B_Kitbag_sgg: TRYK_B_Kitbag_Base {};
	class TRYK_B_Alicepack: TRYK_B_Kitbag_Base {};
	class B_TacticalPack_blk: TRYK_B_Kitbag_Base {};
	class B_TacticalPack_oli: TRYK_B_Kitbag_Base {};
	class B_TacticalPack_rgr: TRYK_B_Kitbag_Base {};

	class Skyline_Backpack_Ecole_01_F
	{
		buy_price=850;
		//Taille inventaire "I"=160
	};
	class Skyline_Backpack_Ecole_02_F: Skyline_Backpack_Ecole_01_F {};
	class Skyline_Backpack_Ecole_03_F: Skyline_Backpack_Ecole_01_F {};

	class B_Carryall_cbr
	{
		buy_price=1200;
	};
	class B_Carryall_khk: B_Carryall_cbr {};
	class B_Carryall_oli: B_Carryall_cbr {};
	class TRYK_B_Carryall_blk: B_Carryall_cbr {};

	class TRYK_B_Coyotebackpack
	{
		buy_price=1100;
		//Taille inventaire "I"=200
	};
	class TRYK_B_Coyotebackpack_BLK: TRYK_B_Coyotebackpack
	{
		buy_condition_WEST=1;
	};
	class TRYK_B_Coyotebackpack_OD: TRYK_B_Coyotebackpack {};
	class TRYK_B_Coyotebackpack_WH: TRYK_B_Coyotebackpack {};
	class Skyline_Backpack_Chasse_01_F: TRYK_B_Coyotebackpack {};
	class Skyline_Backpack_Chasse_Radio_01_F: TRYK_B_Coyotebackpack
	{
		buy_price=16150;
	};

	class Skyline_Backpack_Sac_a_dos_01_F
	{
		buy_price=1250;
		//Taille inventaire "I"=280
	};
	class Skyline_Backpack_Sac_a_dos_02_F: Skyline_Backpack_Sac_a_dos_01_F {};
	class Skyline_Backpack_Sac_a_dos_03_F: Skyline_Backpack_Sac_a_dos_01_F {};
	class Skyline_Backpack_Sac_a_dos_04_F: Skyline_Backpack_Sac_a_dos_01_F {};

	class Skyline_Backpack_Montagne_01_F
	{
		buy_price=2180;
		//Taille inventaire "I"=350
	};
	class Skyline_Backpack_Montagne_02_F: Skyline_Backpack_Montagne_01_F {};
	class Skyline_Backpack_Montagne_03_F: Skyline_Backpack_Montagne_01_F {};
	class Skyline_Backpack_Montagne_04_F: Skyline_Backpack_Montagne_01_F {};

	class Maels_backpack_1 {};
	class Maels_backpack_2 {};
	class Maels_backpack_3 {};
	///////////////////////////////// HEADGEAR /////////////////////////////////
	class H_Bandanna_blu
	{
		buy_price=65;
	};
	class H_Bandanna_cbr: H_Bandanna_blu {};
	class H_Bandanna_gry: H_Bandanna_blu {};
	class H_Bandanna_khk: H_Bandanna_blu {};
	class H_Bandanna_sand: H_Bandanna_blu {};
	class H_Bandanna_sgg: H_Bandanna_blu {};
	class H_Bandanna_surfer: H_Bandanna_blu {};
	class H_Bandanna_surfer_blk: H_Bandanna_blu {};
	class H_Bandanna_surfer_grn: H_Bandanna_blu {};

	class H_Cap_blk
	{
		buy_price=45;
	};
	class H_Cap_blk_CMMG: H_Cap_blk {};
	class H_Cap_blk_ION: H_Cap_blk {};
	class H_Cap_blk_Raven: H_Cap_blk {};
	class H_Cap_blu: H_Cap_blk {};
	class H_Cap_brn_SPECOPS: H_Cap_blk {};
	class H_Cap_grn: H_Cap_blk {};
	class H_Cap_grn_BI: H_Cap_blk {};
	class H_Cap_khaki_specops_UK: H_Cap_blk {};
	class H_Cap_oli: H_Cap_blk {};
	class H_Cap_press: H_Cap_blk {};
	class H_Cap_red: H_Cap_blk {};
	class H_Cap_surfer: H_Cap_blk {};
	class H_Cap_tan: H_Cap_blk {};

	class H_Hat_blue
	{
		buy_price=48;
	};
	class H_Hat_brown: H_Hat_blue {};
	class H_Hat_camo: H_Hat_blue {};
	class H_Hat_checker: H_Hat_blue {};
	class H_Hat_grey: H_Hat_blue {};
	class H_Hat_tan: H_Hat_blue {};

	class H_Booniehat_khk
	{
		buy_price=64;
	};
	class H_Booniehat_oli: H_Booniehat_khk {};
	class H_Booniehat_tan: H_Booniehat_khk {};

	class H_StrawHat
	{
		buy_price=120;
	};
	class H_StrawHat_dark: H_StrawHat {};

	class H_Watchcap_blk
	{
		buy_price=130;
	};
	class H_Watchcap_camo: H_Watchcap_blk {};
	class H_Watchcap_cbr: H_Watchcap_blk {};
	class H_Watchcap_khk: H_Watchcap_blk {};
	class TRYK_H_headsetcap_blk_Glasses: H_Watchcap_blk {};
	class TRYK_H_headsetcap_Glasses: H_Watchcap_blk {};
	class TRYK_H_headsetcap_od_Glasses: H_Watchcap_blk {};
	class TRYK_R_CAP_BLK: H_Watchcap_blk {};
	class TRYK_r_cap_blk_Glasses: H_Watchcap_blk {};
	class TRYK_r_cap_od_Glasses: H_Watchcap_blk {};
	class TRYK_R_CAP_OD_US: H_Watchcap_blk {};
	class TRYK_r_cap_tan_Glasses: H_Watchcap_blk {};

	class Casque_Moto
	{
		buy_price=220;
	};
	class H_RacingHelmet_1_white_F: Casque_Moto {};
	class H_RacingHelmet_1_blue_F: Casque_Moto {};
	class H_RacingHelmet_1_yellow_F: Casque_Moto {};
	class H_RacingHelmet_1_black_F: Casque_Moto {};
	class H_RacingHelmet_1_orange_F: Casque_Moto {};
	class H_RacingHelmet_1_red_F: Casque_Moto {};
	class H_RacingHelmet_1_green_F: Casque_Moto {};
	class H_RacingHelmet_1_F: Casque_Moto {};
	class H_RacingHelmet_2_F: Casque_Moto {};
	class H_RacingHelmet_3_F: Casque_Moto {};

	///////////////////////////////// GOGGLES /////////////////////////////////
	class EWK_Cig1
	{

	};
	class EWK_Cig2: EWK_Cig1 {};
	class EWK_Cig3: EWK_Cig1 {};
	class EWK_Cig4: EWK_Cig1 {};
	class EWK_Cig6: EWK_Cig1 {};

	class G_Shades_Black
	{
		buy_price=15;
	};
	class G_Shades_Blue: G_Shades_Black {};
	class G_Shades_Green: G_Shades_Black {};
	class G_Shades_Red: G_Shades_Black {};
	class G_Spectacles: G_Shades_Black {};
	class G_Spectacles_Tinted: G_Shades_Black {};
	class G_Sport_Blackred: G_Shades_Black {};
	class G_Sport_BlackWhite: G_Shades_Black {};
	class G_Sport_Blackyellow: G_Shades_Black {};
	class G_Sport_Checkered: G_Shades_Black {};
	class G_Sport_Greenblack: G_Shades_Black {};
	class G_Sport_Red: G_Shades_Black {};
	class G_Squares: G_Shades_Black {};
	class G_Squares_Tinted: G_Shades_Black {};
	class G_Lowprofile: G_Shades_Black {};
	class G_Lady_Blue: G_Shades_Black {};

	class G_Aviator
	{
		buy_price=980;
	};

	class Bear_RoundGlasses
	{
		buy_price=20;
	};
	class Bear_RoundGlasses_blk: Bear_RoundGlasses {};
	class Bear_RoundGlasses_gold
	{
		buy_price=1350;
	};

	class shemagh_neckD
	{
		buy_price=480;
	};
	class shemagh_neckOD: shemagh_neckD {};
	class TRYK_Shemagh_mesh: shemagh_neckD {};
	class TRYK_Shemagh_G: shemagh_neckD {};
	class TRYK_Shemagh: shemagh_neckD {};
	class TRYK_Shemagh_WH: shemagh_neckD {};
	class TRYK_Shemagh_shade_MH: shemagh_neckD {};
	class TRYK_Shemagh_shade_G: shemagh_neckD {};
	class TRYK_Shemagh_shade: shemagh_neckD {};
	class TRYK_Shemagh_shade_WH: shemagh_neckD {};
	///////////////////////////////// VEST ///////////////////////////////
	class V_BandollierB_cbr
	{
		buy_price=2560;
	};
	class V_BandollierB_khk: V_BandollierB_cbr {};
	class V_BandollierB_blk: V_BandollierB_cbr {};
	class V_BandollierB_oli: V_BandollierB_cbr {};
	class V_BandollierB_rgr: V_BandollierB_cbr {};

	class V_Rangemaster_belt
	{
		buy_price=1850;
	};

	class Alysia_Saccoche_Civ
	{
		buy_price=2025;
	};

	class Alysia_PistolHolder_Civ
	{
		buy_price=1275;
		buy_license_CIV[]={"gun","politique_pnt_member"};
	};
	class Alysia_PistolHolder_Suitcase_Civ: Alysia_PistolHolder_Civ
	{
		buy_price=5682;
	};
	class EF_SH_BK: Alysia_PistolHolder_Civ
	{
		buy_price=1675;
	};
	class EF_SH_BW: Alysia_PistolHolder_Civ
	{
		buy_price=1675;
	};
	///////////////////////////////////////////////  PLONGEE   ///////////////////////////////////////////////////
	class combi_plonge_civ1
	{
		buy_price=200;
		buy_license_CIV[]={"dive"};
	};
	class combi_plonge_civ2: combi_plonge_civ1 {};
	class combi_plonge_civ3: combi_plonge_civ1 {};
	class combi_plonge_civ4: combi_plonge_civ1 {};

	class G_Diving
	{
		buy_price=50;
		buy_license_CIV[]={"dive"};
	};

	class Respirateur_civ1
	{
		buy_price=850;
		buy_license_CIV[]={"dive"};
	};
	class Respirateur_civ2: Respirateur_civ1 {};
	class Respirateur_civ3: Respirateur_civ1 {};
	class Respirateur_civ4: Respirateur_civ1 {};
	////////////////////////////////////////////  STATION SERVICE   ///////////////////////////////////////////////////
	class Alysia_jerrycan_empty
	{
		buy_price=120;
	};
	class Alysia_repair_toolbox
	{
		buy_price=1000;
	};
	class Alysia_repair_tireLever
	{
		buy_price=225;
	};
	class Alysia_repair_tire
	{
		buy_price=100;
	};
	////////////////////////////////////////////  MARCHE NOIR   ///////////////////////////////////////////////////
	class Alysia_Lockpick
	{
		buy_price=600;
	};
	class RH_mak
	{
		buy_price=12000;
	};
	class RH_8Rnd_9x18_Mak
	{
		buy_price=250;
	};
	class Skyline_Pancarte_marijuana
	{
		buy_price=700;
	};
	class Skyline_Pancarte_communisme: Skyline_Pancarte_marijuana {};
	class Skyline_Pancarte_malieu: Skyline_Pancarte_marijuana {};
	class Skyline_Pancarte_tabor: Skyline_Pancarte_marijuana {};
	////////////////////////////////////////////  PREFECTURE   ///////////////////////////////////////////////////
	class Alysia_Identity_Civ
	{
		buy_price=75;
	};
	////////////////////////////////////////////  QUINQUAILLERIE   ///////////////////////////////////////////////////
    class Lyeed_Phone
    {
    	buy_price=450;
    };

	class SkylineItems_Bandage
	{
		buy_price=15;
	};

	class Skyline_Alysia_Parapluie_01_F
	{
		buy_price=160;
		protect_rain=1;
	};
	class Skyline_Alysia_Parapluie_02_F: Skyline_Alysia_Parapluie_01_F {};
	class Skyline_Alysia_Parapluie_03_F: Skyline_Alysia_Parapluie_01_F {};
	class Skyline_Alysia_Parapluie_04_F: Skyline_Alysia_Parapluie_01_F {};

	class Skyline_Merlin_01
	{
		buy_price=250;
	};
	class Skyline_Pelle_01
	{
		buy_price=75;
	};
	class Skyline_Pioche_01
	{
		buy_price=95;
	};
	class Skyline_Hache_01
	{
		buy_price=100;
	};

	class Skyline_tl122_blanche
	{
		buy_price=85;
	};
	class Skyline_tl122_bleu: Skyline_tl122_blanche {};
	class Skyline_tl122_jaune: Skyline_tl122_blanche {};
	class Skyline_tl122_orange: Skyline_tl122_blanche {};
	class Skyline_tl122_rose: Skyline_tl122_blanche {};
	class Skyline_tl122_rouge: Skyline_tl122_blanche {};
	class Skyline_tl122_verte: Skyline_tl122_blanche {};

	class Chemlight_blue
	{
		buy_price=15;
	};
	class Chemlight_green: Chemlight_blue {};
	class Chemlight_red: Chemlight_blue {};
	class Chemlight_yellow: Chemlight_blue {};

	class Binocular
	{
		buy_price=50;
	};
	class ItemCompass
	{
		buy_price=12;
	};
	class ItemGPS
	{
		buy_price=250;
	};
	class ItemMap
	{
		buy_price=15;
	};
	class ItemWatch
	{
		buy_price=7;
	};

	class Skyline_Pancarte_clochard
	{
		buy_price=350;
	};
	class Skyline_Pancarte_pnt: Skyline_Pancarte_clochard {};
	////////////////////////////////////////////  RESERVE ENTREPRISE   ///////////////////////////////////////////////////
	class Skyline_Uniforme_Securite_01_F
	{
		buy_price=150;
		buy_license_CIV[]={"company_security"};
	};
	class Skyline_Uniforme_Securite_02_F: Skyline_Uniforme_Securite_01_F {};
	class Skyline_Uniforme_Securite_03_F: Skyline_Uniforme_Securite_01_F {};

	class Skyline_Veste_Securite_01_F
	{
		buy_price=2250;
		buy_license_CIV[]={"company_security"};
	};
	class Press_vest
	{
		name="Gilet de presse";
		buy_price=1000;
		buy_license_CIV[]={"company_press"};
	};
	class V_Press_F
	{
		name="Gilet de presse bleu";
		buy_price=1000;
		buy_license_CIV[]={"company_press"};
	};
	class AET_vest
	{
		name="Gilet jaune AET";
		buyprice=1000;
		buy_license_CIV[]={"company_driving_school"};
	};
	class Fastrepair_vest
	{
		name="Gilet jaune Fast repair";
		buyprice=1000;
		buy_licence_CIV="company_garagist";
	};
	class U_fast_repair
	{
		name="Tenue fast repair";
		buy_price=2250;
		buy_license_CIV[]={"company_garagist"};
	};
	class U_C_WorkerCoveralls
	{
		buy_price=60;
		buy_license_CIV[]={"company_garagist"};
	};
	class Skyline_Uniforme_Depanneur_01_F: U_C_WorkerCoveralls
	{
		buy_price=105;
	};
	class Skyline_Sac_Depanneur_01_F: U_C_WorkerCoveralls
	{
		buy_price=150;
	};
	class Alysia_Backpack_FastRepair: U_C_WorkerCoveralls
	{
		buy_price=150;
	};

    class TRYK_U_B_BLK3CD
    {
    	name="Tenue Convoyeur";
    	buy_price=250;
    	buy_license_CIV[]={"company_money_tranfer"};
    };
    class TRYK_kio_balaclava_BLK: TRYK_U_B_BLK3CD
    {
    	name="Masque Convoyeur et securité";
    	buy_price=90;
    };
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////  SAMU   ///////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	///////////////////////// QUINCAILLERIE /////////////////////////

	class SkylineItems_Defibrilateur
	{
		buy_condition_guer=1;
		buy_price=1500;
	};
	class SkylineItems_Adrenaline
	{
		buy_price=3500;
		buy_condition_GUER=2;
		buy_condition_EAST=2;
		buy_license_EAST[]={"east_medic"};
	};
	class SkylineItems_Morphine
	{
		buy_price=3100;
		buy_condition_GUER=2;
	};
	class Alysia_Identity_Guer
	{
		buy_price=40;
		buy_condition_GUER=1;
	};

	///////////////////////// FRIPERIE /////////////////////////
	class Masque_Chirurgical
	{
		buy_price=20;
		buy_condition_GUER=1;
		protect_contamination_air=1;
	};
	class Skyline_NioshFace
	{
		name="Masque protecteur";
		protect_contamination_air=1;
		buy_condition_GUER=1;
		buy_price=20;
	};

	class combi_plonge_samu
	{
		buy_price=200;
		buy_condition_GUER=2;
		buy_license_GUER[]={"dive"};
	};
	class Respirateur_samu: combi_plonge_samu
	{
		buy_price=350;
	};

	class Skyline_Casque_Pilote_Secouriste_01_F
	{
		buy_price=46450;
		buy_condition_GUER=6;
		buy_license_GUER[]={"pilot"};
	};
	class Skyline_Uniforme_Pilote_Secouriste_01_F: Skyline_Casque_Pilote_Secouriste_01_F
	{
		buy_price=200;
	};
	class U_C_Driver_1_red: Skyline_Casque_Pilote_Secouriste_01_F
	{
		buy_price=200;
	};

	class Skyline_Uniforme_Secouriste_01_F
	{
		buy_price=80;
		buy_condition_GUER=1;
	};
	class Skyline_Uniforme_Secouriste_02_F: Skyline_Uniforme_Secouriste_01_F {};

	class rds_uniform_assistant
	{
		buy_price=120;
		buy_condition_GUER=3;
	};

	class rds_uniform_doctor
	{
		buy_price=150;
		buy_condition_GUER=4;
	};

	class Skyline_Sac_Secouriste_01_F
	{
		buy_price=800;
		buy_condition_GUER=1;
	};
	class Skyline_Sac_Secouriste_02_F: Skyline_Sac_Secouriste_01_F {};
	class Skyline_Sac_Secouriste_01_2_F: Skyline_Sac_Secouriste_01_F {};
	class TRYK_B_Medbag: Skyline_Sac_Secouriste_01_F
	{
		buy_price=1100;
	};
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////////     Garde de Malieu     ////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	class Alysia_Uniform_West_Garde
	{
		buy_price=800;
		buy_condition_WEST=1;
	};
	class Alysia_Uniform_West_Caporal: Alysia_Uniform_West_Garde
	{
		buy_condition_WEST=2;
	};
	class Alysia_Uniform_West_Sergent: Alysia_Uniform_West_Garde
	{
		buy_condition_WEST=3;
	};
	class Alysia_Uniform_West_Lieutenant: Alysia_Uniform_West_Garde
	{
		buy_condition_WEST=4;
	};
	class Alysia_Uniform_West_Commandant: Alysia_Uniform_West_Garde
	{
		buy_condition_WEST=5;
	};
	class Alysia_Uniform_West_Commissaire_02: Alysia_Uniform_West_Garde
	{
		buy_condition_WEST=6;
	};
	class Alysia_Uniform_West_Commissaire_01: Alysia_Uniform_West_Commissaire_02 {};

	class Alysia_Identity_West
	{
		buy_price=50;
		buy_condition_WEST=1;
	};

	class Alysia_Vest_West_01
	{
		buy_price=5315;
		buy_condition_WEST=1;
	};
	class Alysia_Vest_West_02: Alysia_Vest_West_01 {};

	class Alysia_Casque_West_01
	{
		buy_price=1200;
		buy_condition_WEST=1;
	};
	class Alysia_Casque_West_02: Alysia_Casque_West_01 {};
	class Alysia_Casque_West_03: Alysia_Casque_West_01 {};

	class Alysia_Casquette_West_01
	{
		buy_condition_WEST=1;
		buy_price=250;
	};
	class Alysia_Casquette_West_02: Alysia_Casquette_West_01
	{
		buy_condition_WEST=2;
	};
	class Alysia_Casquette_West_03: Alysia_Casquette_West_01
	{
		buy_condition_WEST=3;
	};
	class Alysia_Casquette_West_04: Alysia_Casquette_West_01
	{
		buy_condition_WEST=4;
	};
	class Alysia_Casquette_West_05: Alysia_Casquette_West_01
	{
		buy_condition_WEST=5;
	};
	class Alysia_Casquette_West_06_01: Alysia_Casquette_West_01
	{
		buy_condition_WEST=6;
	};
	class Alysia_Casquette_West_06_02: Alysia_Casquette_West_01
	{
		buy_condition_WEST=6;
	};

	class G_Balaclava_TI_blk_F
	{
		buy_price=1950;
		buy_condition_WEST=1;
	};

	class U_B_Wetsuit
	{
		buy_price=700;
		buy_condition_WEST=1;
		buy_license_WEST[]={"dive"};
	};
	class G_B_Diving: U_B_Wetsuit
	{
		buy_price=50;
	};
	class V_RebreatherB: U_B_Wetsuit
	{
		buy_price=1000;
	};

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////     Armée Nationale Tanocienne     //////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	class Alysia_Identity_East
	{
		buy_price=50;
		buy_condition_EAST=1;
	};

	class Alysia_Belt
	{
		buy_price=500;
		buy_condition_EAST=8;
		buy_condition_WEST=4;
	};

	class Alysia_Booniehat_East_01
	{
		buy_price=80;
		buy_condition_EAST=8;
	};
	class Alysia_Beret_East
	{
		buy_price=200;
		buy_condition_EAST=4;
	};
	class Alysia_Casque_East_01
	{
		buy_price=1200;
		buy_condition_EAST=1;
	};
	class H_HelmetCrew_I
	{
		buy_price=4100;
		buy_condition_EAST=2;
		buy_license_EAST[]={"east_tank"};
	};
	class H_PilotHelmetHeli_O
	{
		buy_price=4100;
		buy_condition_EAST=2;
		buy_license_EAST[]={"east_pilot","pilot"};
	};
	class Payday_GeneralO
	{
		buy_price=350;
		buy_condition_EAST=11;
	};
	class Alysia_Casquette_East_colonel
	{
		buy_price=270;
		buy_condition_EAST=11;
	};
	class Alysia_Casquette_East_LtColonel: Alysia_Casquette_East_colonel
	{
		buy_condition_EAST=10;
	};
	class Alysia_Casquette_East_Capitaine: Alysia_Casquette_East_colonel
	{
		buy_condition_EAST=9;
	};
	class Alysia_Casquette_East_Lieutenant: Alysia_Casquette_East_colonel
	{
		buy_condition_EAST=8;
	};

	class U_I_FullGhillie_lsh
	{
		buy_price=10700;
		buy_condition_EAST=2;
		buy_license_EAST[]={"east_tp"};
	};

	class Alysia_Vest_Soldier_East_01
	{
		buy_price=5350;
		buy_condition_EAST=2;
	};
	class Alysia_Vest_Soldier_East_01_camo: Alysia_Vest_Soldier_East_01 {};
	class Alysia_Vest_Soldier_East_01_new: Alysia_Vest_Soldier_East_01 {};
	class Alysia_Vest_Soldier_East_02: Alysia_Vest_Soldier_East_01 {};
	class Alysia_Vest_Soldier_East_02_camo: Alysia_Vest_Soldier_East_01 {};
	class Alysia_Vest_Soldier_East_02_new: Alysia_Vest_Soldier_East_01 {};
	class Alysia_Vest_Soldier_East_03: Alysia_Vest_Soldier_East_01 {};
	class Alysia_Vest_Soldier_East_03_camo: Alysia_Vest_Soldier_East_01 {};
	class Alysia_Vest_Soldier_East_03_new: Alysia_Vest_Soldier_East_01 {};
	class Alysia_Vest_Utility_East_01: Alysia_Vest_Soldier_East_01
	{
		buy_price=4115;
		buy_condition_EAST=2;
	};
	class Alysia_Vest_Utility_East_02: Alysia_Vest_Utility_East_01 {};
	class Alysia_Vest_Utility_East_03: Alysia_Vest_Utility_East_01 {};
	class Alysia_Vest_Utility_East_04: Alysia_Vest_Utility_East_01 {};

	class Alysia_Vest_Officer_East_01
	{
		buy_price=5620;
		buy_condition_EAST=5;
	};
	class Alysia_Vest_Officer_East_01_camo: Alysia_Vest_Officer_East_01 {};
	class Alysia_Vest_Officer_East_01_new: Alysia_Vest_Officer_East_01 {};
	class Alysia_Vest_Officer_East_02: Alysia_Vest_Officer_East_01 {};
	class Alysia_Vest_Officer_East_02_camo: Alysia_Vest_Officer_East_01 {};
	class Alysia_Vest_Officer_East_02_new: Alysia_Vest_Officer_East_01 {};

	class Alysia_Vest_Upgraded_East_1
	{
		buy_price=22850;
		buy_condition_EAST=4;
	};
	class Alysia_Vest_Upgraded_East_2: Alysia_Vest_Upgraded_East_1 {};
	class Alysia_Vest_Upgraded_East_3: Alysia_Vest_Upgraded_East_1 {};
	class Alysia_Vest_Upgraded_East_4: Alysia_Vest_Upgraded_East_1 {};
	class Alysia_Vest_Upgraded_East_5: Alysia_Vest_Upgraded_East_1 {};

	class Alysia_Uniform_East_colonel_Camo
	{
		buy_price=800;
		buy_condition_EAST=11;
	};
	class Alysia_Uniform_West_Dictateur: Alysia_Uniform_East_colonel_Camo {};
	class Alysia_Uniform_East_colonel_Camo2: Alysia_Uniform_East_colonel_Camo {};
	class Alysia_Uniform_East_colonel_Parade: Alysia_Uniform_East_colonel_Camo {};

	class Alysia_Uniform_East_LtColonel_Camo: Alysia_Uniform_East_colonel_Camo
	{
		buy_condition_EAST=10;
	};
	class Alysia_Uniform_East_LtColonel_Camo2: Alysia_Uniform_East_LtColonel_Camo {};
	class Alysia_Uniform_East_LtColonel_Parade: Alysia_Uniform_East_LtColonel_Camo {};

	class Alysia_Uniform_East_capitaine_Camo: Alysia_Uniform_East_colonel_Camo
	{
		buy_condition_EAST=9;
	};
	class Alysia_Uniform_East_capitaine_Camo2: Alysia_Uniform_East_capitaine_Camo {};
	class Alysia_Uniform_East_capitaine_Parade: Alysia_Uniform_East_capitaine_Camo {};

	class Alysia_Uniform_East_lieutenant_Camo: Alysia_Uniform_East_colonel_Camo
	{
		buy_condition_EAST=8;
	};
	class Alysia_Uniform_East_lieutenant_Camo2: Alysia_Uniform_East_lieutenant_Camo {};
	class Alysia_Uniform_East_lieutenant_Parade: Alysia_Uniform_East_lieutenant_Camo {};

	class Alysia_Uniform_East_major_Camo: Alysia_Uniform_East_colonel_Camo
	{
		buy_condition_EAST=7;
	};
	class Alysia_Uniform_East_major_Camo2: Alysia_Uniform_East_major_Camo {};
	class Alysia_Uniform_East_major_Parade: Alysia_Uniform_East_major_Camo {};

	class Alysia_Uniform_East_adjudant_Camo: Alysia_Uniform_East_colonel_Camo
	{
		buy_condition_EAST=6;
	};
	class Alysia_Uniform_East_adjudant_Camo2: Alysia_Uniform_East_adjudant_Camo {};
	class Alysia_Uniform_East_adjudant_Parade: Alysia_Uniform_East_adjudant_Camo {};

	class Alysia_Uniform_East_sergent_Camo: Alysia_Uniform_East_colonel_Camo
	{
		buy_condition_EAST=5;
	};
	class Alysia_Uniform_East_sergent_Camo2: Alysia_Uniform_East_sergent_Camo {};
	class Alysia_Uniform_East_sergent_Parade: Alysia_Uniform_East_sergent_Camo {};

	class Alysia_Uniform_East_capochief_Camo: Alysia_Uniform_East_colonel_Camo
	{
		buy_condition_EAST=4;
	};
	class Alysia_Uniform_East_capochief_Camo2: Alysia_Uniform_East_capochief_Camo {};
	class Alysia_Uniform_East_capochief_Parade: Alysia_Uniform_East_capochief_Camo {};

	class Alysia_Uniform_East_soldier1st_Camo: Alysia_Uniform_East_colonel_Camo
	{
		buy_condition_EAST=3;
	};
	class Alysia_Uniform_East_soldier1st_Camo2: Alysia_Uniform_East_soldier1st_Camo {};
	class Alysia_Uniform_East_soldier1st_Parade: Alysia_Uniform_East_soldier1st_Camo {};

	class Alysia_Uniform_East_soldier_Camo: Alysia_Uniform_East_colonel_Camo
	{
		buy_condition_EAST=2;
	};
	class Alysia_Uniform_East_soldier_Camo2: Alysia_Uniform_East_soldier_Camo {};
	class Alysia_Uniform_East_soldier_Parade: Alysia_Uniform_East_soldier_Camo {};

	class Alysia_Uniform_East_recrue_Camo: Alysia_Uniform_East_colonel_Camo
	{
		buy_condition_EAST=1;
	};
	class Alysia_Uniform_East_recrue_Camo2: Alysia_Uniform_East_recrue_Camo {};
	class Alysia_Uniform_East_recrue_Parade: Alysia_Uniform_East_recrue_Camo {};

	class TRYK_B_Medbag_OD
	{
		buy_price=1100;
		buy_condition_EAST=1;
		buy_license_EAST[]={"east_medic"};
	};

	class hgun_FlashBall_F
	{
		buy_price=1350;
		buy_condition_EAST=1;
		disableDamage=1;
		knockOut=1;
	};
	class 1Rnd_FlashBall_Mag: hgun_FlashBall_F
	{
		buy_price=50;
	};

    class Alysia_Radio_LR_East
    {
    	buy_price=7985;
    	buy_condition_EAST=2;
    	buy_license_EAST[]={"east_ope_radio"};
    };
    class TRYK_B_tube_od
    {
    	buy_price=1372;
    	buy_condition_EAST=1;
    };

	class U_O_Wetsuit
	{
		buy_price=700;
		buy_condition_EAST=2;
		buy_license_EAST[]={"dive"};
	};
	class V_RebreatherIR: U_O_Wetsuit
	{
		buy_price=1000;
	};
	class G_O_Diving: U_O_Wetsuit
	{
		buy_price=75;
	};

	class Alysia_Calot_East_Recrue
	{
		buy_price=98;
		buy_condition_EAST=1;
	};
	class Alysia_Calot_East_Soldier: Alysia_Calot_East_Recrue
	{
		buy_condition_EAST=2;
	};
	class Alysia_Calot_East_Soldier1st: Alysia_Calot_East_Recrue
	{
		buy_condition_EAST=3;
	};
	class Alysia_Calot_East_Capochief: Alysia_Calot_East_Recrue
	{
		buy_condition_EAST=4;
	};
	class Alysia_Calot_East_Sergent: Alysia_Calot_East_Recrue
	{
		buy_condition_EAST=5;
	};
	class Alysia_Calot_East_Adjudant: Alysia_Calot_East_Recrue
	{
		buy_condition_EAST=6;
	};
	class Alysia_Calot_East_Major: Alysia_Calot_East_Recrue
	{
		buy_condition_EAST=7;
	};
	class Alysia_Calot_East_Lieutenant: Alysia_Calot_East_Recrue
	{
		buy_condition_EAST=8;
	};
	class Alysia_Calot_East_Capitaine: Alysia_Calot_East_Recrue
	{
		buy_condition_EAST=9;
	};
	class Alysia_Calot_East_LtColonel: Alysia_Calot_East_Recrue
	{
		buy_condition_EAST=10;
	};
	class Alysia_Calot_East_Colonel: Alysia_Calot_East_Recrue
	{
		buy_condition_EAST=11;
	};

	class Alysia_Beret_East_1
    {
        buy_price=200;
        buy_condition_EAST=2;
        buy_license_EAST[]={"east_tank"};
    };

    class Alysia_Beret_East_BDR
    {
        buy_price=200;
        buy_condition_EAST=6;
    };

    class Alysia_Casque_East_02
    {
        buy_price=1200;
        buy_condition_EAST=1;
    };

    class Alysia_Uniform_East_colonel_BDR: Alysia_Uniform_East_colonel_Camo {};
    class Alysia_Uniform_East_capitaine_BDR: Alysia_Uniform_East_colonel_Camo {};
    class Alysia_Uniform_East_lieutenant_BDR: Alysia_Uniform_East_colonel_Camo {};
    class Alysia_Uniform_East_major_BDR: Alysia_Uniform_East_colonel_Camo {};
    class Alysia_Uniform_East_sergent_BDR: Alysia_Uniform_East_colonel_Camo {};
    class Alysia_Uniform_East_caporal_BDR: Alysia_Uniform_East_colonel_Camo {};
    class Alysia_Uniform_East_soldier_BDR: Alysia_Uniform_East_colonel_Camo {};
    class Alysia_Uniform_East_recrue_BDR: Alysia_Uniform_East_colonel_Camo {};

    class TRYK_B_Medbag_BK
    {
        buy_price=1100;
        buy_condition_EAST=1;
        buy_license_EAST[]={"east_medic"};
    };

    class TRYK_B_Kitbag_blk
    {
        buy_price=1100;
        buy_condition_EAST=1;
    };

    class Alysia_Radio_LR_West
    {
        buy_price=7985;
        buy_condition_EAST=2;
        buy_license_EAST[]={"east_ope_radio"};
    };

    class TAC_EI_RRVCVH_B
    {
        buy_price=5620;
        buy_condition_EAST=1;
    };
	//////////////////////////////////////////////////     Barbier     //////////////////////////////////////////////////
	class TRYK_Beard
	{
		buy_price=180;
	};
	class TRYK_Beard_BK: TRYK_Beard {};
	class TRYK_Beard_BK2: TRYK_Beard {};
	class TRYK_Beard_BK3: TRYK_Beard {};
	class TRYK_Beard_BK4: TRYK_Beard {};
	class TRYK_Beard_BW: TRYK_Beard {};
	class TRYK_Beard_BW2: TRYK_Beard {};
	class TRYK_Beard_BW3: TRYK_Beard {};
	class TRYK_Beard_BW4: TRYK_Beard {};
	class TRYK_Beard_Gr: TRYK_Beard {};
	class TRYK_Beard_Gr2: TRYK_Beard {};
	class TRYK_Beard_Gr3: TRYK_Beard {};
	class TRYK_Beard_Gr4: TRYK_Beard {};
	class TRYK_Beard2: TRYK_Beard {};
	class TRYK_Beard3: TRYK_Beard {};
	class TRYK_Beard4: TRYK_Beard {};

	//////////////////////////////////////////////////     Friperie paintball     //////////////////////////////////////////////////
	class Paintball_Uniform_blue_01_I
	{
		buy_price=250;
	};
	class Paintball_Uniform_desert_01_B: Paintball_Uniform_blue_01_I {};
	class Paintball_Uniform_desert_02_I: Paintball_Uniform_blue_01_I {};
	class Paintball_Uniform_desert_03_I: Paintball_Uniform_blue_01_I {};
	class Paintball_Uniform_Digital_Urban_01_O: Paintball_Uniform_blue_01_I {};
	class Paintball_Uniform_Fun_Camo_01_B: Paintball_Uniform_blue_01_I {};
	class Paintball_Uniform_Hex_Camo_01_B: Paintball_Uniform_blue_01_I {};

	class Paintball_Mask_06
	{
		buy_price=80;
	};
	class Paintball_Mask_02: Paintball_Mask_06 {};
	class Paintball_Mask_05: Paintball_Mask_06 {};
	class Paintball_Mask_04: Paintball_Mask_06 {};
	class Paintball_Mask_07: Paintball_Mask_06 {};
	class Paintball_Mask_01: Paintball_Mask_06 {};
	class Paintball_Mask_03: Paintball_Mask_06 {};

	//////////////////////////////////////////////////     Armurerie paintball     //////////////////////////////////////////////////
	class Weapon_angel_rasta_F
	{
		buy_price=2000;
		disableDamage=1;
		paintball=1;
	};
	class Weapon_angel_F: Weapon_angel_rasta_F {};
	class Weapon_angel_kitty_F: Weapon_angel_rasta_F {};
	class Weapon_egosl_F: Weapon_angel_rasta_F {};
	class Weapon_invert_mini_dye_F: Weapon_angel_rasta_F {};
	class Weapon_tippmann_x7_F: Weapon_angel_rasta_F {};
	class Weapon_tippmann_x7_UMP_F: Weapon_angel_rasta_F {};
	class 140Rnd_PaintBall_grun
	{
		buy_price=50;
	};
	class 140Rnd_PaintBall_grungelb: 140Rnd_PaintBall_grun {};
	class 140Rnd_PaintBall_rotgelb: 140Rnd_PaintBall_grun {};
	class 140Rnd_PaintBall_blau: 140Rnd_PaintBall_grun {};
	class 140Rnd_PaintBall_fire: 140Rnd_PaintBall_grun {};
	class 140Rnd_PaintBall_glow: 140Rnd_PaintBall_grun {};
	class 140Rnd_PaintBall_gold: 140Rnd_PaintBall_grun {};

	//////////////////////////////////////////////////     Masques     //////////////////////////////////////////////////
	class Kio_Capital_Hat
	{
		buy_price=200;
	};
	class Kio_Hat: Kio_Capital_Hat {};
	class Kio_No1_Hat: Kio_Capital_Hat {};
	class Kio_Santa_Hat: Kio_Capital_Hat {};
	class Kio_Spinning_Hat: Kio_Capital_Hat {};
	class Kio_Afro_Hat: Kio_Capital_Hat {};

	class Masque_Alien1
	{
		buy_price=500;
	};
	class Masque_Anonymous: Masque_Alien1 {};
	class Masque_archNemesis: Masque_Alien1 {};
	class Masque_Arnold: Masque_Alien1 {};
	class Masque_Aubrey: Masque_Alien1 {};
	class Masque_Bonnie: Masque_Alien1 {};
	class Masque_Bush: Masque_Alien1 {};
	class Masque_Chains: Masque_Alien1 {};
	class Masque_Chuck: Masque_Alien1 {};
	class Masque_Clinton: Masque_Alien1 {};
	class Masque_Clover: Masque_Alien1 {};
	class Masque_Dallas: Masque_Alien1 {};
	class Masque_Fish: Masque_Alien1 {};
	class Masque_forceAlpha: Masque_Alien1 {};
	class Masque_GdG: Masque_Alien1 {};
	class Masque_Gombo: Masque_Alien1 {};
	class Masque_Hockey: Masque_Alien1 {};
	class Masque_Hoxton: Masque_Alien1 {};
	class Masque_Incendiaire: Masque_Alien1 {};
	class Masque_Lincoln: Masque_Alien1 {};
	class Masque_Lion: Masque_Alien1 {};
	class Masque_Macrilleuse: Masque_Alien1 {};
	class Masque_Mark: Masque_Alien1 {};
	class Masque_Mempo: Masque_Alien1 {};
	class Masque_Metalhead: Masque_Alien1 {};
	class Masque_Momie: Masque_Alien1 {};
	class Masque_Optimiste: Masque_Alien1 {};
	class Masque_Orc: Masque_Alien1 {};
	class Masque_Religieuse: Masque_Alien1 {};
	class Masque_Santa: Masque_Alien1 {};
	class Masque_Smiley: Masque_Alien1 {};
	class Masque_Solitaire: Masque_Alien1 {};
	class Masque_speedRunner: Masque_Alien1 {};
	class Masque_Unic: Masque_Alien1 {};
	class Masque_Wolfv2: Masque_Alien1 {};
	class Skyline_Anonymous: Masque_Alien1 {};
	class Skyline_Corvo: Masque_Alien1 {};
	class Skyline_Dallas: Masque_Alien1 {};
	class Skyline_Hoxton: Masque_Alien1 {};
	class Skyline_Skyrim: Masque_Alien1 {};
	class Skyline_Wolf: Masque_Alien1 {};

	class Skyline_Character_U_SecouristeA_01_F
	{
		buy_price=120;
		buy_condition_GUER=1;
	};
	class Skyline_Character_U_SecouristeB_01_F : Skyline_Character_U_SecouristeA_01_F{};
	class Skyline_Character_U_SecouristeB_02_F : Skyline_Character_U_SecouristeA_01_F{};

	class Skyline_Character_U_Infirmier_01_F
	{
		buy_price=105;
		buy_condition_GUER=1;
	};
	class Skyline_Character_U_Infirmier_02_F : Skyline_Character_U_Infirmier_01_F{};
	class Skyline_Character_U_Infirmier_03_F : Skyline_Character_U_Infirmier_01_F{};

	class Skyline_Character_U_CivilA_01_F
	{
		buy_price=875;
	};
	class Skyline_Character_U_CivilA_02_F : Skyline_Character_U_CivilA_01_F{};
	class Skyline_Character_U_CivilA_03_F : Skyline_Character_U_CivilA_01_F{};
	class Skyline_Character_U_CivilA_04_F : Skyline_Character_U_CivilA_01_F{};
	class Skyline_Character_U_CivilA_05_F : Skyline_Character_U_CivilA_01_F{};
	class Skyline_Character_U_CivilA_06_F : Skyline_Character_U_CivilA_01_F{};
	class Skyline_Character_U_CivilA_07_F : Skyline_Character_U_CivilA_01_F{};
	class Skyline_Character_U_CivilA_08_F : Skyline_Character_U_CivilA_01_F{};
	class Skyline_Character_U_CivilA_09_F : Skyline_Character_U_CivilA_01_F{};
	class Skyline_Character_U_CivilA_10_F : Skyline_Character_U_CivilA_01_F{};

	class Skyline_Character_U_Chasseur_01_F
	{
		buy_price=1750;
	};
	class Skyline_Character_U_Chasseur_02_F : Skyline_Character_U_Chasseur_01_F{};
	class Skyline_Character_U_Chasseur_03_F : Skyline_Character_U_Chasseur_01_F{};
	class Skyline_Character_U_Chasseur_04_F : Skyline_Character_U_Chasseur_01_F{};
	class Skyline_Character_U_Chasseur_05_F : Skyline_Character_U_Chasseur_01_F{};

	class Skyline_Character_U_CivilB_01_F
	{
		buy_price=482;
	};
	class Skyline_Character_U_CivilB_02_F : Skyline_Character_U_CivilB_01_F{};
	class Skyline_Character_U_CivilB_03_F : Skyline_Character_U_CivilB_01_F{};
	class Skyline_Character_U_CivilB_04_F : Skyline_Character_U_CivilB_01_F{};
	class Skyline_Character_U_CivilB_05_F : Skyline_Character_U_CivilB_01_F{};
	class Skyline_Character_U_CivilB_06_F : Skyline_Character_U_CivilB_01_F{};
	class Skyline_Character_U_CivilB_07_F : Skyline_Character_U_CivilB_01_F{};
	class Skyline_Character_U_CivilB_08_F : Skyline_Character_U_CivilB_01_F{};

	class Skyline_Character_U_CivilC_01_F
	{
		buy_price=320;
	};
	class Skyline_Character_U_CivilC_02_F : Skyline_Character_U_CivilC_01_F{};
	class Skyline_Character_U_CivilC_03_F : Skyline_Character_U_CivilC_01_F{};
	class Skyline_Character_U_CivilC_04_F : Skyline_Character_U_CivilC_01_F{};
	class Skyline_Character_U_CivilC_05_F : Skyline_Character_U_CivilC_01_F{};
	class Skyline_Character_U_CivilC_06_F : Skyline_Character_U_CivilC_01_F{};
	class Skyline_Character_U_CivilC_07_F : Skyline_Character_U_CivilC_01_F{};

	class Skyline_Character_U_CivilD_01_F
	{
		buy_price=600;
		buy_condition_GUER=3;
	};

	class Skyline_Character_U_CivilE_01_F
	{
		buy_price=110;
	};
	class Skyline_Character_U_CivilE_02_F : Skyline_Character_U_CivilE_01_F{};
	class Skyline_Character_U_CivilE_03_F : Skyline_Character_U_CivilE_01_F{};
	class Skyline_Character_U_CivilE_04_F : Skyline_Character_U_CivilE_01_F{};
	class Skyline_Character_U_CivilE_05_F : Skyline_Character_U_CivilE_01_F{};
	class Skyline_Character_U_CivilE_06_F : Skyline_Character_U_CivilE_01_F{};
	class Skyline_Character_U_CivilE_07_F : Skyline_Character_U_CivilE_01_F{};

	class Skyline_HeadGear_Chapka_01_F
	{
		buy_price=82;
	};
	class Skyline_HeadGear_Chapka_02_F : Skyline_HeadGear_Chapka_01_F{};
	class Skyline_HeadGear_Chapka_03_F : Skyline_HeadGear_Chapka_01_F{};
	class Skyline_HeadGear_Chapka_04_F : Skyline_HeadGear_Chapka_01_F{};
	class Skyline_HeadGear_Chapka_05_F : Skyline_HeadGear_Chapka_01_F{};

	class Skyline_HeadGear_BonnetLaine_01_F
	{
		buy_price=55;
	};
	class Skyline_HeadGear_BonnetLaine_02_F : Skyline_HeadGear_BonnetLaine_01_F{};
	class Skyline_HeadGear_BonnetLaine_03_F : Skyline_HeadGear_BonnetLaine_01_F{};
	class Skyline_HeadGear_BonnetLaine_04_F : Skyline_HeadGear_BonnetLaine_01_F{};
	class Skyline_HeadGear_BonnetLaine_05_F : Skyline_HeadGear_BonnetLaine_01_F{};

	class Skyline_HeadGear_BandanaHead_01_F
	{
		buy_price=45;
	};
	class Skyline_HeadGear_BandanaHead_02_F : Skyline_HeadGear_BandanaHead_01_F{};
	class Skyline_HeadGear_BandanaHead_03_F : Skyline_HeadGear_BandanaHead_01_F{};
	class Skyline_HeadGear_BandanaHead_04_F : Skyline_HeadGear_BandanaHead_01_F{};
	class Skyline_HeadGear_BandanaHead_05_F : Skyline_HeadGear_BandanaHead_01_F{};
	class Skyline_HeadGear_BandanaHead_06_F : Skyline_HeadGear_BandanaHead_01_F{};

	class Skyline_HeadGear_Bandana_01_F
	{
		buy_price=65;
	};
	class Skyline_HeadGear_Bandana_02_F : Skyline_HeadGear_Bandana_01_F{};
	class Skyline_HeadGear_Bandana_03_F : Skyline_HeadGear_Bandana_01_F{};
	class Skyline_HeadGear_Bandana_04_F : Skyline_HeadGear_Bandana_01_F{};
	class Skyline_HeadGear_Bandana_05_F : Skyline_HeadGear_Bandana_01_F{};

	class Skyline_HeadGear_NBC_Hazmat_01_F
	{
		buy_price=150;
		buy_condition_GUER=3;
	};

	class Skyline_HeadGear_Cowboy_01_F
	{
		buy_price=85;
	};
	class Skyline_HeadGear_Cowboy_02_F : Skyline_HeadGear_Cowboy_01_F{};
	class Skyline_HeadGear_Cowboy_03_F : Skyline_HeadGear_Cowboy_01_F{};
	class Skyline_HeadGear_Cowboy_04_F : Skyline_HeadGear_Cowboy_01_F{};
	class Skyline_HeadGear_Cowboy_05_F : Skyline_HeadGear_Cowboy_01_F{};
	class Skyline_HeadGear_Cowboy_06_F : Skyline_HeadGear_Cowboy_01_F{};

	class Skyline_Glasses_Masque_Chirurgical_01_F
	{
		buy_price=20;
		buy_condition_GUER=1;
		protect_contamination_air=1;
	};

	class Skyline_Glasses_Masque_GP5_01_F
	{
		buy_price=85;
		buy_condition_GUER=3;
		protect_contamination_air=1;
	};

	#include "Config_Rebelle_ACR0.hpp"
	#include "Config_Rebelle_ACR1.hpp"
	#include "Config_Rebelle_ACR2.hpp"
};
