class ALYSIA_FARMING_OBJECT
{
	class default_mine
	{
		tool="Skyline_Pioche_01";
		sounds[]={"mining_1","mining_2","mining_3","mining_4","mining_5"};
		times=1;
	};

	class Land_SharpStone_02: default_mine
	{
		receive[]={{"iron",2,1}};
		times=3;
	};
	
	class Land_BluntRock_spike: default_mine
	{
		receive[]={{"pierre",1,1}};
		tool="Skyline_Merlin_01";
		times=1;
	};
	class Land_BluntRock_apart: Land_BluntRock_spike {};
	class Land_BluntRock_wallH: Land_BluntRock_spike {};

	class Skyline_Alysia_Charbon_01_F: default_mine
	{
		receive[]={{"charcoal",3,1}};
		times=2;
	};
	class Skyline_Alysia_Charbon_02_F: Skyline_Alysia_Charbon_01_F {};
};

class ALYSIA_FARMING_GATHER
{
	// sounds=oil / mining / shovel / gather1 / gather2
	class wood_field_marker_1
	{
		receive[]={{"wood",3,0}};
		tool="Skyline_Hache_01";
		sound="axe";
		area=40;
	};
	class wood_field_marker_2: wood_field_marker_1 {};
	class wood_field_marker_3: wood_field_marker_1 {};

	class earth_field_marker_1
	{
		tool="Skyline_Pioche_01";
		receive[]={{"rare_earth",1,1}};
		sound="mining";
		area=30;
	};
	class archeologie_field_marker_1: earth_field_marker_1
	{
		receive[]={{"artefact",3,1}};
	};
	class volcano_field_marker_1: earth_field_marker_1
	{
		receive[]={{"volcano",4,1}};
		extra[]={{"amethyste",9},{"saphir",0.5},{"topaze",4}};
		extra_all=0;
	};

	class pillage_field_marker_1
	{
		receive[]={{"objvaleur",2,1}};
		sound="mining";
		water=1;
		water_depth=19;
		area=30;
	};

	class sand_field_marker_1
	{
		receive[]={{"sand",4,1}};
		tool="Skyline_Pelle_01";
		sound="shovel";
		area=40;
	};

	class ginger_field_1
	{
		receive[]={{"ginger",3,1}};
		sound="gather1";
		area=30;
	};
	class cacao_field_marker_1: ginger_field_1
	{
		receive[]={{"cacao",1,1}};
	};
	class cafe_2_field_marker_1: ginger_field_1
	{
		receive[]={{"cafe_2",1,1}};
	};
	class banana_field_marker_1: ginger_field_1
	{
		receive[]={{"banana",5,1}};
	};
	class banana_field_marker_2: banana_field_marker_1 {};
	class sugar_field_marker_1: ginger_field_1
	{
		receive[]={{"sugar_cane",2,1}};
	};
	class sugar_field_marker_2: sugar_field_marker_1 {};
	class sugar_field_marker_3: sugar_field_marker_1 {};
	class biofuel_field_marker_1: ginger_field_1
	{
		receive[]={{"millettia",3,1}};
	};
	class coco_field_marker_1: ginger_field_1
	{
		receive[]={{"coconut",1,0}};
	};
	class coco_field_marker_2: coco_field_marker_1 {};
	
	class shell_field_marker_1
	{
		receive[]={};
		extra[]={{"crevette",20},{"star",15},{"oursin",5},{"crabe",30}};
		extra_all=1;
		water=1;
		water_depth=2.5;
		area=40;
	};
	class shell_field_marker_2: shell_field_marker_1
	{
		water_depth=1.5;
	};
	class corail_field_marker_1: shell_field_marker_1
	{
		receive[]={{"corail",1,0}};
		extra[]={};
		extra_all=0;
		water_depth=2.5;
	};
};
