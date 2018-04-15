class ALYSIA_LABORATORIES
{
	class lab_marijuana
	{
		object="Skyline_Alysia_WorkBench_Marijuana_01_F";
		process[]={"marijuana"};
		destroy[]={"EAST"};
		class marker
		{
		 	ShapeLocal="ICON";
			TypeLocal="Maels_illegal_labo_weed";
			ColorLocal="ColorRed";
			SizeLocal[]={0.55,0.55};
		};
		class construction
		{
			object="Land_Bricks_V3_F";
			require[]={{"ironp",17},{"glass",4},{"woodp",15}};
		};
	};
	class lab_mushroom
	{
		object="Skyline_Alysia_WorkBench_Marijuana_01_F";
		process[]={"mushroom","mushroom_bocal"};
		destroy[]={"EAST"};
		class marker
		{
		 	ShapeLocal="ICON";
			TypeLocal="Maels_illegal_labo_mushroom";
			ColorLocal="ColorRed";
			SizeLocal[]={0.55,0.55};
		};
		class construction
		{
			object="Land_Bricks_V3_F";
			require[]={{"ironp",17},{"glass",4},{"woodp",15}};
		};
	};
	class lab_meth
	{
		object="Skyline_Alysia_WorkBench_Methamphetamine_01_F";
		process[]={"meth"};
		destroy[]={"EAST"};
		class marker
		{
		 	ShapeLocal="ICON";
			TypeLocal="Maels_illegal_labo_meth";
			ColorLocal="ColorRed";
			SizeLocal[]={0.55,0.55};
		};
		class construction
		{
			object="Land_Bricks_V3_F";
			require[]={{"ironp",25},{"glass",5},{"woodp",10}};
		};
	};
	class lab_cocaine
	{
		object="Skyline_Alysia_WorkBench_Cocaine_01_F";
		process[]={"cocaine","cocainec"};
		destroy[]={"EAST"};
		class marker
		{
		 	ShapeLocal="ICON";
			TypeLocal="Maels_illegal_labo_coca";
			ColorLocal="ColorRed";
			SizeLocal[]={0.55,0.55};
		};
		class construction
		{
			object="Land_Bricks_V3_F";
			require[]={{"ironp",15},{"glass",3},{"woodp",5}};
		};
	};
	class lab_heroin
	{
		object="Skyline_Alysia_WorkBench_Heroine_01_F";
		process[]={"heroin","seringueheroin"};
		destroy[]={"EAST"};
		class marker
		{
		 	ShapeLocal="ICON";
			TypeLocal="Maels_illegal_hero_labo";
			ColorLocal="ColorRed";
			SizeLocal[]={0.55,0.55};
		};
		class construction
		{
			object="Land_Bricks_V3_F";
			require[]={{"ironp",20},{"glass",4},{"woodp",7}};
		};
	};
	class lab_cigare
	{
		object="Land_Factory_Conv1_End_F";
		process[]={"cigare","cigare_clothing"};
		destroy[]={"EAST"};
		class marker
		{
		 	ShapeLocal="ICON";
			TypeLocal="Maels_labo_tabac";
			ColorLocal="ColorRed";
			SizeLocal[]={0.55,0.55};
		};
		class construction
		{
			object="Land_Bricks_V3_F";
			require[]={{"ironp",5},{"pierre",10},{"woodp",5}};
		};
	};
	class lab_heal
	{
		object="HealTable_F";
		process[]={};
		destroy[]={"EAST"};
		class marker
		{
		 	ShapeLocal="ICON";
			TypeLocal="Maels_hospital";
			ColorLocal="ColorRed";
			SizeLocal[]={0.55,0.55};
		};
		class construction
		{
			object="Land_Bricks_V3_F";
			require[]={{"woodp",25}};
		};
	};
	class lab_construction
	{
		object="Skyline_Alysia_WorkBench_Construction_01_F";
		process[]={"chair_wood","table_wood","light_double","bag_01","bag_02"};
		destroy[]={"EAST"};
		class marker
		{
		 	ShapeLocal="ICON";
			TypeLocal="Maels_factory";
			ColorLocal="ColorRed";
			SizeLocal[]={0.55,0.55};
		};
		class construction
		{
			object="Land_Bricks_V3_F";
			require[]={{"ironp",12},{"pierre",8}};
		};
	};
	class lab_gun
	{
		object="Skyline_Alysia_WorkBench_Weapon_01_F";
		process[]=
		{
			"acier_deprecated",
			"shoulder_deprecated",
			"intermediary_shoulder_deprecated",
			"military_shoulder_deprecated",
			"barrel_deprecated",
			"intermediary_barrel_deprecated",
			"military_barrel_deprecated",
			"receiver_deprecated",
			"intermediary_receiver_deprecated",
			"military_receiver_deprecated",
			"grip_deprecated",
			"intermediary_grip_deprecated",
			"military_grip_deprecated",
			"slapper_deprecated",
			"intermediary_slapper_deprecated",
			"military_slapper_deprecated",
			"frame_deprecated",
			"intermediary_frame_deprecated",
			"military_frame_deprecated",
			"magazine_deprecated",
			"military_magazine_deprecated",
			"bullet_deprecated",
			"military_bullet_deprecated",
			"chevrotine_deprecated",
			"cylinder_deprecated",
			"trigger_deprecated",
			"tec9",
			"micro_uzi",
			"ruger_mk2",
			"MOSIN",
			"MOSIN_BAILLONETTE",
			"magazine_tec9",
			"magazine_micro_uzi",
			"magazine_ruger_mk2",
			"magazine_mosin"
		};
		destroy[]={"EAST"};
		class marker
		{
		 	ShapeLocal="ICON";
			TypeLocal="Maels_factory";
			ColorLocal="ColorRed";
			SizeLocal[]={0.55,0.55};
		};
		class construction 
		{
			object="Land_Bricks_V3_F";
			require[]={{"ironp",15},{"pierre",8},{"woodp",5}};
		};
	};
};
