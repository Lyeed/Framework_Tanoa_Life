class ALYSIA_FARMING_PLANT_OBJETCS
{
	/*
	class X
	{
		seed                 : seed item className
		receive              : receive when harvest {{"item_1",amount_item_1,is_random(0:no/1:yes)}}
		Ex:
		receive[]={{"wood",5,0},{"cocainep",2,1}};
		Player will receive 5 x wood and have a chance to receive some cocainep (2 max)

		receive[]={{"wood",3,0}};
		Player will receive 3 x wood

		distance             : minimum distance between plants (in meters)
		upLevel              : number the plant will grow (in meters)
		groundLevel          : number the plant will go down on creation (in meters)
		growingTime          : time to grow (in seconds)
		extraGrow            : maximum grow extra time (random,in seconds)
	};
	*/

	//Plante de mais
	class Alysia_Plants_Assets_Mais_01_F
	{
		seed="corn_seed";
		receive[]={{"corn",6,1}};
		distance=2;
		growingTime=120;
		groundLevel=2;
		upLevel=2;
		extraGrow=50;
	};

	//Plante de haricot
	class Alysia_Plants_Assets_Haricot_01_F
	{
		seed="bean_seed";
		receive[]={{"bean",6,1}};
		distance=1;
		growingTime=120;
		groundLevel=1.23;
		upLevel=1.23;
		extraGrow=50;
	};

	//Plante de coton
	class Alysia_Plants_Assets_Coton_01_F
	{
		receive[]={{"cotton",6,1}};
		seed="cotton_seed";
		distance=2;
		growingTime=120;
		groundLevel=0.9;
		upLevel=0.9;
		extraGrow=50;
	};

	//Blé
	class Alysia_Plants_Assets_Ble_01_F
	{
		receive[]={{"wheat",6,1}};
		seed="wheatseed";
		distance=3;
		growingTime=120;
		groundLevel=0.9;
		upLevel=0.9;
		extraGrow=50;
	};

	//Houblon
	class Alysia_Plants_Assets_Houblon_01_F
	{
		receive[]={{"houblon",6,1}};
		seed="houblon_seed";
		distance=3;
		growingTime=120;
		groundLevel=0.9;
		upLevel=0.9;
		extraGrow=50;
	};

	//Orge
	class Alysia_Plants_Assets_Orge_01_F
	{
		receive[]={{"orge",6,1}};
		seed="orge_seed";
		distance=3;
		growingTime=120;
		groundLevel=0.9;
		upLevel=0.9;
		extraGrow=50;
	};

	//Plante de cannabis
	class Alysia_Plants_Assets_Cannabis_01_F
	{
		receive[]={{"cannabis",2,1}};
		seed="cannabis_seed";
		distance=1.5;
		growingTime=360;
		groundLevel=2.3;
		upLevel=2.3;
		extraGrow=100;
	};

	//Champignon
	class Alysia_Plants_Assets_Champignon_01_F
	{
		receive[]={{"mushroom",2,1}};
		seed="mushroom_seed";
		distance=1;
		growingTime=360;
		groundLevel=0.35;
		upLevel=0.35;
		extraGrow=100;
		disableForMill=1;
	};

	//Plante de tabac
	class Alysia_Plants_Assets_Tabac_01_F
	{
		receive[]={{"tabac",2,1}};
		seed="tabac_seed";
		distance=4;
		growingTime=180;
		groundLevel=0.5;
		upLevel=0.5;
		extraGrow=100;
	};

	//Plante de patate
	class Alysia_Plants_Assets_Patate_01_F
	{
		receive[]={{"patate",4,1}};
		seed="patate_seed";
		distance=1.2;
		growingTime=120;
		groundLevel=0.6;
		upLevel=0.6;
		extraGrow=50;
	};

	//Olivier
	class Alysia_Plants_Assets_Olivier_01_F
	{
		receive[]={{"olive",7,1}};
		seed="olive_seed";
		distance=10;
		growingTime=540;
		groundLevel=0;
		upLevel=0;
		extraGrow=70;
	};

	//Plante de tomate
	class Alysia_Plants_Assets_Tomate_01_F
	{
		receive[]={{"tomato",4,1}};
		seed="tomato_seed";
		distance=1.3;
		growingTime=120;
		groundLevel=1.1;
		upLevel=1.1;
		extraGrow=50;
	};

	//Plante de citrouille
	class Alysia_Plants_Assets_Citrouille_01_F
	{
		receive[]={{"pumpkin",1,0}};
		seed="pumpkin_seed";
		distance=1.6;
		growingTime=160;
		groundLevel=0.4;
		upLevel=0.4;
		extraGrow=50;
	};

	//Plante de courgette
	class Alysia_Plants_Assets_Courgette_01_F
	{
		receive[]={{"zucchini",3,1}};
		seed="zucchini_seed";
		distance=1.1;
		growingTime=140;
		groundLevel=0.3;
		upLevel=0.3;
		extraGrow=50;
	};

	//Plante de tournesol
	class Alysia_Plants_Assets_Tournesol_01_F
	{
		receive[]={{"sunflower",1,0}};
		seed="sunflower_seed";
		distance=0.8;
		growingTime=150;
		groundLevel=2;
		upLevel=2;
		extraGrow=50;
	};
	class Oleander2
	{
		receive[]={{"heroin",2,1}};
		seed="heroin_seed";
		distance=3;
		growingTime=360;
		groundLevel=1.5;
		upLevel=1.5;
		extraGrow=100;
		disableForMill=1;
	};
	class Reeds
	{
		receive[]={{"meth",2,1}};
		seed="meth_seed";
		distance=3;
		growingTime=420;
		groundLevel=0;
		upLevel=0;
		extraGrow=120;
		disableForMill=1;
	};
	class Ficus_1
	{
		receive[]={{"cocaine",2,1}};
		seed="cocaine_seed";
		distance=4;
		growingTime=360;
		groundLevel=6.1;
		upLevel=2.5;
		extraGrow=100;
		disableForMill=1;
	};
	class Plant_Mullein
	{
		receive[]={{"coffee",6,1}};
		seed="coffee_seed";
		distance=4;
		growingTime=320;
		groundLevel=1.3;
		upLevel=1.3;
		extraGrow=50;
	};
	class Tree_Grape_Rouge
	{
		receive[]={{"raisin_red",5,1}};
		seed="raisin_black_seed";
		distance=2;
		growingTime=410;
		groundLevel=1.2;
		upLevel=1.1;
		extraGrow=70;
	};
	class Tree_Grape_Blanc: Tree_Grape_Rouge
	{
		receive[]={{"raisin_white",5,1}};
		seed="raisin_white_seed";
	};
};

class ALYSIA_FARMING_PLANT_MARKERS
{
	class corn_field_marker_1
	{
		plant="Alysia_Plants_Assets_Mais_01_F";
		area=40;
	};
	class tabac_field_marker_1: corn_field_marker_1
	{
		plant="Alysia_Plants_Assets_Tabac_01_F";
	};
	class bean_field_marker_1: corn_field_marker_1
	{
		plant="Alysia_Plants_Assets_Haricot_01_F";
	};
	class bean_field_marker_2: bean_field_marker_1 {};
	class cotton_field_marker_1: corn_field_marker_1
	{
		plant="Alysia_Plants_Assets_Coton_01_F";
	};
	class wheat_field_marker_1: corn_field_marker_1
	{
		plant="Alysia_Plants_Assets_Ble_01_F";
	};
	class coffee_field_marker_1: corn_field_marker_1
	{
		plant="Plant_Mullein";
	};

	class heroin_field_marker_1: corn_field_marker_1
	{
		plant="Oleander2";
	};
	class cannabis_field_marker_1: corn_field_marker_1
	{
		plant="Alysia_Plants_Assets_Cannabis_01_F";
	};
	class meth_field_marker_1: corn_field_marker_1
	{
		plant="Reeds";
	};
	class cocaine_field_marker_1: corn_field_marker_1
	{
		plant="Ficus_1";
	};
	class mushroom_field_marker_1: corn_field_marker_1
	{
		plant="Alysia_Plants_Assets_Champignon_01_F";
	};
};
