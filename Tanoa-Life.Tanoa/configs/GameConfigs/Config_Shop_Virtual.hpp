class ALYSIA_SHOPS_VIRTUAL
{
	/* GLOBAL MARKET */
	class fishmarket
	{
		name="Poissonnerie";
		side="CIV";
		sell[]=
		{
			"crabe",
			"crevette",
			"star",
			"oursin"
		};
	};

	class farmingmarket
	{
		name="Marché";
		side="CIV";
		buy[]=
		{
			"coffee_seed",
			"corn_seed",
			"bean_seed",
			"cotton_seed",
			"wheatseed",
			"tabac_seed",
			"engrais"
		};
		sell[]=
		{
			"ginger",
			"banana",
			"sugar_cane",
			"cotton",
			"bean",
			"corn",
			"wheat",
			"coconut"
		};
	};

	class station_service
	{
		name="Station service";
		buy[]=
		{
			"chips",
			"chocolat",
			"villagoise",
			"eau50"
		};
	};

	class market
	{
		name="Supérette";
		buy[]=
		{
			"water",
			"sparklingwater",
			"soda",
			"cafe",
			"pizza",
			"sandwich",
			"petitbeurre",
			"croissant",
			"cerealbar",
			"donut",
			"cookie"
		};
	};
	
	class hopital
	{
		name="Hopital";
		buy[]=
		{
			"patch",
			"water",
			"sandwich"
		};
	};
	
	class companies
	{
		name="Réserve d'entreprises";
		side="CIV";
		buy[]=
		{
			"serrure",
			"oilu",
			"cone",
			"barriere",
			"raisin_black_seed",
			"raisin_white_seed",
			"olive_seed",
			"houblon_seed",
			"orge_seed",
			"yeast",
			"egg",
			"butter",
			"salt",
			"milk",
			"pork",
			"beef",
			"firework"
		};
		sell[]=
		{
			"ciment"
		};
	};

	/* FACTIONS */
	class west
	{
		name="Réserve de la Garde";
		side="WEST";
		buy[]=
		{
			"sifflet",
			"handcuffs",
			"handcuffkeys",
			"cone",
			"barriere",
			"bargate",
			"spikeStrip",
			"horn_west",
			"perqui",
			"blueprint_glock_18",
			"blueprint_g17",
			"blueprint_mp44"
		};
	};
	class east
	{
		name="Réserve de l'armée";
		side="EAST";
		buy[]=
		{
			"sifflet",
			"handcuffs",
			"handcuffkeys",
			"perqui",
			"cone",
			"barriere",
			"bargate",
			"spikeStrip",
			"horn_east",
			"blueprint_usp_40_match",
			"blueprint_m9",
			"blueprint_m1911",
			"blueprint_car_95",
			"blueprint_pm_9mm",
			"blueprint_gsh18",
			"blueprint_sdar",
			"blueprint_sig",
			"blueprint_vp70",
			"blueprint_cz75",
			"blueprint_protector",
			"blueprint_ump_45",
			"blueprint_rook_40",
			"blueprint_blaser_b95",
			"blueprint_vermin_smg",
			"blueprint_hk417",
			"blueprint_hk416"
		};
	};
	class guer
	{
		name="Réserve du SAMU";
		side="GUER";
		buy[]=
		{
			"cone",
			"barriere",
			"horn_guer",
			"alcool_test",
			"adn",
			"stethoscope",
			"scalpel",
			"brancard",
			"medoc_rhume",
			"medoc_toux_1",
			"medoc_toux_2",
			"medoc_depression"
		};
	};

	/* RESSOURCES */
	class dealer
	{
		name="Dealer";
		side="CIV";
		sell[]={"marijuana","methp","heroinps","cocainepc","mushroom_bocal"};
	};
	class cacao: dealer
	{
		name="Commerçant de cacao";
		sell[]={"cacaop"};
	};
	class coffee: dealer
	{
		name="Commerçant de café";
		sell[]={"coffeec"};
	};
	class sugar: dealer
	{
		name="Commerçant de sucre de canne";
		sell[]={"sugar"};
	};
	class earth: dealer
	{
		name="Commerçant de Terres rares";
		sell[]={"rare_earth"};
	};
	class alcohol: dealer
	{
		name="Commerçant d'alcool";
		sell[]={"rhum"};
	};
	class glass: dealer
	{
		name="Commerçant de verre";
		sell[]={"glass"};
	};
	class iron: dealer
	{
		name="Commerçant de fer";
		sell[]={"ironp","soufre","steelp"};
	};
	class tabac: dealer
	{
		name="Commerçant de cigarette";
		sell[]={"cigarette"};
	};
	class furniture: dealer
	{
		name="Commerçant de meuble";
		sell[]={"furniture"};
	};
	class textile: dealer
	{
		name="Commerçant de textile";
		sell[]={"cottonp"};
	};
	class wood: dealer
	{
		name="Commerçant de bûche";
		sell[]={"wood"};
	};
	class woodp: dealer
	{
		name="Commerçant de planche";
		sell[]={"woodp"};
	};
	class volcano: dealer
	{
		name="Commerçant de roche volcanique";
		sell[]={"amethyste","saphir","topaze","volcano"};
	};
	class rebel: dealer
	{
		name="Marché rebelle";
		buy[]=
		{
			"handcuffs",
			"handcuffkeys",
			"lab_marijuana",
			"lab_mushroom",
			"lab_meth",
			"lab_cocaine",
			"lab_heroin",
			"lab_cigare",
			"lab_heal",
			"lab_gun",
			"lab_construction"
		};
	};
	class black_market: dealer
	{
		name="Marché noir";
		sell[]=
		{
			"artefact_R",
			"artefact",
			"objvaleur",
			"turtle",
			"cigare",
			"corail",
			"amethyste",
			"saphir",
			"topaze",
			"volcano"
		};
		buy[]=
		{
			"handcuffs",
			"handcuffkeys",
			"nitro",
			"cannabis_seed",
			"heroin_seed",
			"cocaine_seed",
			"meth_seed",
			"mushroom_seed"
		};
	};
};
