class ALYSIA_FUEL_STATION
{
	class Land_FuelStation_01_pump_F
	{
		save=1;
		max_distance_allowed=9;
		payDirect=0;
		class marker
		{
			ShapeLocal="ICON";
			TypeLocal="Maels_station_essence";
			ColorLocal="ColorGreen";
			SizeLocal[]={0.55, 0.55};
		};
		class stock
		{
			class Diesel {
				max=2000;
			};
			class SP95 {
				max=2000;
			};
			class SP98 {
				max=2000;
			};
			class GPL {
				max=2000;
			};
			class Bio {
				max=2000;
			};
		};
	};
	class Land_FuelStation_02_pump_F: Land_FuelStation_01_pump_F
	{
		class marker: marker {};
		class stock: stock
		{
			class Diesel: Diesel {};
			class SP95: SP95 {};
			class SP98: SP98 {};
			class GPL: GPL {};
			class Bio: Bio {};
		};
	};
	class Land_fs_feed_F: Land_FuelStation_01_pump_F
	{
		max_distance_allowed=30;
		payDirect=1;
		class marker: marker
		{
			ColorLocal="ColorBlue";
		};
		class stock
		{
			class SP95 {
				max=2500;
			};
			class Diesel: SP95 {};
			class Bio: SP95 {};
		};
	};

	class Land_FuelStation_Feed_F: Land_FuelStation_01_pump_F
	{
		max_distance_allowed=70;
		payDirect=1;
		class marker: marker
		{
			ColorLocal="ColorPink";
		};
		class stock
		{
			class Kerosene {
				max=10000;
			};
		};
	};
};

class ALYSIA_FUEL
{
	class Diesel
	{
		name="Diesel";
		picture="Alysia_Client_Texture\Data\fuel\gazole.paa";
		conso=1.2;
		item_jerrycan="Alysia_jerrycan_diesel";
		item_refuel="gazole";
		liter_price=15;
		liter_price_multiplier=4;
	};	
	class SP95
	{
		name="Essence Sans Plomb 95";
		picture="Alysia_Client_Texture\Data\fuel\sp95.paa";
		conso=1.2;
		item_jerrycan="Alysia_jerrycan_sp95";
		item_refuel="sp95";
		liter_price=9;
		liter_price_multiplier=4;
	};
	class SP98
	{
		name="Essence Sans Plomb 98";
		picture="Alysia_Client_Texture\Data\fuel\sp98.paa";
		conso=1;
		item_jerrycan="Alysia_jerrycan_sp98";
		item_refuel="sp98";
		liter_price=12;
		liter_price_multiplier=4;
	};
	class Kerosene
	{
		name="Kerosene";
		picture="Alysia_Client_Texture\Data\fuel\kerosene.paa";
		conso=0.8;
		item_jerrycan="Alysia_jerrycan_kerosene";
		item_refuel="kerosene";
		liter_price=27;
		liter_price_multiplier=7;
	};
	class GPL
	{
		name="Gaz de pétrole liquéfié";
		picture="Alysia_Client_Texture\Data\fuel\gpl.paa";
		conso=1.1;
		item_jerrycan="Alysia_jerrycan_gpl";
		item_refuel="gpl";
		liter_price=11;
		liter_price_multiplier=4;
	};
	class Bio
	{
		name="Biocarburant";
		picture="Alysia_Client_Texture\Data\fuel\bio.paa";
		conso=0.8;
		item_jerrycan="Alysia_jerrycan_bio";
		item_refuel="bio";
		liter_price=17;
		liter_price_multiplier=5;
	};
};
