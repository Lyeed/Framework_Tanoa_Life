class ALYSIA_BLUEPRINTS
{

	class blueprint_uniformeMIT
	{
		process[]={"corpo_uniform"};
		compagnies[]={"textile"};
	};
	class blueprint_helmetMIT: blueprint_uniformeMIT
	{
		process[]={"corpo_booniehat", "corpo_helmet", "corpo_beret_1"};
	};	
	class blueprint_giletMIT: blueprint_uniformeMIT
	{
		process[]={"gilet_MIT1", "gilet_MIT2"};
	};

	class blueprint_gsh18
	{
		process[]={"gsh_18","magazine_gsh_18"};
		labos[]={"lab_gun"};
		compagnies[]={"gun"};
	};
	class blueprint_sig: blueprint_gsh18
	{
		process[]={"sig_p226","magazine_sig_p226"};
	};
	class blueprint_g17: blueprint_gsh18
	{
		process[]={"g17","magazine_g17"};
	};
	class blueprint_mp44: blueprint_gsh18
	{
		process[]={"mp44","magazine_mp44"};
	};
	class blueprint_tec9: blueprint_gsh18
	{
		process[]={"tec9","magazine_tec9"};
	};
	class blueprint_micro_uzi: blueprint_gsh18
	{
		process[]={"micro_uzi","magazine_micro_uzi"};
	};
	class blueprint_vp70: blueprint_gsh18
	{
		process[]={"vp_70","magazine_vp_70"};
	};
	class blueprint_m9: blueprint_gsh18
	{
		process[]={"m9","magazine_m9","RH_X300"};
	};
	class blueprint_m1911: blueprint_gsh18
	{
		process[]={"m1911","magazine_m1911"};
	};
	class blueprint_cz75: blueprint_gsh18
	{
		process[]={"cz_75","magazine_cz_75"};
	};
	class blueprint_protector: blueprint_gsh18
	{
		process[]={"protector","magazine_protector", "holosight"};
	};
	class blueprint_ump_45: blueprint_gsh18
	{
		process[]={"ump_45","magazine_ump45"};
	};
	class blueprint_fnp_45: blueprint_gsh18
	{
		process[]={"fnp_45","magazine_fnp_45"};
	};
	class blueprint_pm73_rak: blueprint_gsh18
	{
		process[]={"pm73_rak","magazine_pm73_rak"};
	};
	class blueprint_rook_40: blueprint_gsh18
	{
		process[]={"rook_40","magazine_rook_40"};
	};
	class blueprint_pm_9mm: blueprint_gsh18
	{
		process[]={"pm_9mm","magazine_pm_9mm"};
	};
	class blueprint_sw_659: blueprint_gsh18
	{
		process[]={"sw_659","magazine_sw_659"};
	};
	class blueprint_tt_33: blueprint_gsh18
	{
		process[]={"tt_33","magazine_tt_33"};
	};
	class blueprint_blaser_b95: blueprint_gsh18
	{
		process[]={"blaser_b95","magazine_blaser_b95"};
	};
	class blueprint_glock_18: blueprint_gsh18
	{
		process[]={"glock_18","magazine_glock_18"};
	};
	class blueprint_kimber_night_warrior: blueprint_gsh18
	{
		process[]={"kimber_night_warrior","magazine_kimber_night_warrior"};
	};
	class blueprint_umateba_model_6_unica: blueprint_gsh18
	{
		process[]={"mateba_model_6_unica","magazine_mateba_model_6_unica"};
	};
	class blueprint_usp_40_match: blueprint_gsh18
	{
		process[]={"usp_40_match","magazine_usp_40_match"};
	};
	class blueprint_taurus_raging_bull: blueprint_gsh18
	{
		process[]={"taurus_raging_bull","magazine_taurus_raging_bull"};
	};
	class blueprint_vermin_smg: blueprint_gsh18
	{
		process[]={"vermin_smg","magazine_vermin_smg_45_acp"};
	};
	class blueprint_ruger_mk2: blueprint_gsh18
	{
		process[]={"ruger_mk2","magazine_ruger_mk2"};
	};
	class blueprint_taurus_tracker_455: blueprint_gsh18
	{
		process[]={"taurus_tracker_455","taurus_tracker_455_gold","magazine_taurus_tracker_455"}; 
	};
	class blueprint_desert_eagle: blueprint_gsh18
	{
		process[]={"desert_eagle","magazine_desert_eagle","desert_eagle_gold","desert_eagle_silver","desert_eagle_modern"};
	};
	class blueprint_akm: blueprint_gsh18
	{
		process[]={"AKM","magazine_akm"};
	};
	class blueprint_car_95: blueprint_gsh18
	{
		process[]={"car_95","magazine_car_95","car_95_1","magazine_car_95_1"};
	};
	class blueprint_M4A1: blueprint_gsh18
	{
		process[]={"M4A1","M4A1_COMPACT","magazine_m4a1"};
	};
	class blueprint_DP_28: blueprint_gsh18
	{
		process[]={"DP_28","magazine_dp28"};
	};
	class blueprint_AKS: blueprint_gsh18
	{
		process[]={"AKS","AKS_RAIL","magazine_aks"};
	};
	class blueprint_AK12: blueprint_gsh18
	{
		process[]={"AK12","magazine_ak_12"};
	};
	class blueprint_SVD: blueprint_gsh18
	{
		process[]={"SVD","magazine_svd"};
	};
	class blueprint_sdar: blueprint_gsh18
	{
		process[]={"sdar","magazine_sdar"};
	};
	
	class blueprint_hk416: blueprint_gsh18
	{
		process[]={"hk416","magazine_hk416"};
	};	
	class blueprint_hk417: blueprint_gsh18
	{
		process[]={"hk417","magazine_hk417"};
	};

	class blueprint_hedgehog
	{
		process[]={"hedgehog"};
		labos[]={"lab_construction"};
		compagnies[]={"steel"};
	};
	class blueprint_watchpost_tall: blueprint_hedgehog
	{
		process[]={"watchpost_tall"};
	};
	class blueprint_watchpost_small: blueprint_hedgehog
	{
		process[]={"watchpost_small"};
	};
	
	class blueprint_watchtower_wood
	{
		process[]={"watchtower_wood"};
		labos[]={"lab_construction"};
		compagnies[]={"wood"};
	};
};
