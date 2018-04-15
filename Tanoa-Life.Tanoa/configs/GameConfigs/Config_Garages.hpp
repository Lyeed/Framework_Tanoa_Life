class ALYSIA_GARAGES
{
	class airfield_1
	{
		name="Aéroport de Saint-George";
		types[]={"Air","Car"};
		spawns[]={"airfield_1_spawn_1","airfield_1_spawn_2"};
		pay=1;
	};
	class airfield_2: airfield_1
	{
		name="Aérodrome de Bala";
		spawns[]={"airfield_2_spawn_1"};
	};
	class airfield_3: airfield_1
	{
		name="Aéroport de Tuvanaka";
		spawns[]={"airfield_3_spawn_1","airfield_3_spawn_2"};
	};
	class airfield_4: airfield_1
	{
		name="Aéroport de Tanoa";
		spawns[]={"airfield_4_spawn_1"};
	};
	class airfield_5: airfield_1
	{
		name="Aérodrome de La Rochelle";
		spawns[]={"airfield_5_spawn_1","airfield_5_spawn_2"};
	};

	class harbor_1
	{
		name="Port de Tuvanaka";
		types[]={"Ship"};
		spawns[]={"harbor_1_spawn_1","harbor_1_spawn_2"};
		pay=1;
	};
	class harbor_2: harbor_1
	{
		name="Port de Georgetown";
		spawns[]={"harbor_2_spawn_1","harbor_2_spawn_2","harbor_2_spawn_3","harbor_2_spawn_4"};
	};
	class harbor_3: harbor_1
	{
		name="Port de Katkoula";
		spawns[]={"harbor_3_spawn_1","harbor_3_spawn_2"};
	};
	class harbor_4: harbor_1
	{
		name="Port de Moddergat";
		spawns[]={"harbor_4_spawn_1","harbor_4_spawn_2"};
	};
	class harbor_5: harbor_1
	{
		name="Port de Ravi-ta";
		spawns[]={"harbor_5_spawn_1","harbor_5_spawn_2"};
	};
	class harbor_6: harbor_1
	{
		name="Port de Sainte-Marie";
		spawns[]={"harbor_6_spawn_1","harbor_6_spawn_2"};
	};
	class harbor_7: harbor_1
	{
		name="Port de Belfort";
		spawns[]={"harbor_7_spawn_1","harbor_7_spawn_2"};
	};
	class harbor_8: harbor_1
	{
		name="Port de La Rochelle";
		spawns[]={"harbor_8_spawn_1","harbor_8_spawn_2"};
	};
	class harbor_9: harbor_1
	{
		name="Port de La Rautake";
		spawns[]={"harbor_9_spawn_1","harbor_9_spawn_2"};
	};

	class land_1
	{
		name="Garage de Georgetown (1)";
		types[]={"Car"};
		spawns[]={"land_1_spawn_1","land_1_spawn_2"};
		pay=1;
	};
	class land_2: land_1
	{
		name="Garage de Lifou";
		spawns[]={"land_2_spawn_1","land_2_spawn_2"};
	};
	class land_3: land_1
	{
		name="Garage de Tanouka";
		spawns[]={"land_3_spawn_1","land_3_spawn_2"};
	};
	class land_4: land_1
	{
		name="Garage de Luganville";
		spawns[]={"land_4_spawn_1","land_4_spawn_2"};
	};
	class land_5: land_1
	{
		name="Garage de La Rochelle";
		spawns[]={"land_5_spawn_1","land_5_spawn_2"};
	};
	class land_6: land_1
	{
		name="Garage de Harcourt";
		spawns[]={"land_6_spawn_1","land_6_spawn_2"};
	};
	class land_7: land_1
	{
		name="Garage de Katkoula";
		spawns[]={"land_7_spawn_1","land_7_spawn_2"};
	};
	class land_8: land_1
	{
		name="Garage de Balavu";
		spawns[]={"land_8_spawn_1","land_8_spawn_2"};
	};
	class land_9: land_1
	{
		name="Garage de Belfort";
		spawns[]={"land_9_spawn_1","land_9_spawn_2"};
	};
	class land_10: land_1
	{
		name="Garage de Moddergat";
		spawns[]={"land_10_spawn_1","land_10_spawn_2"};
	};
	class land_11: land_1
	{
		name="Garage de Moddergat";
		spawns[]={"land_11_spawn_1","land_11_spawn_2"};
	};
	class land_12: land_1
	{
		name="Garage de Georgetown (2)";
		spawns[]={"CIV_land_normal_1","CIV_land_normal_2"};
	};
	class land_13: land_1
	{
		name="Garage de La Rochelle";
		spawns[]={"land_13_spawn_1","land_13_spawn_2","land_13_spawn_3"};
	};
	class land_14: land_1
	{
		name="Garage de Georgetown (3)";
		spawns[]={"land_14_spawn_1","land_14_spawn_2"};
	};
	class land_15: land_1
	{
		name="Garage de Rautake";
		spawns[]={"land_15_spawn_1","land_15_spawn_2"};
	};
	class land_16: Land_1
	{
		name="Hôpital de Malieuville";
		spawns[]={"land_16_spawn_1","land_16_spawn_2"};
	};

	class fourriere_1
	{
		name="Fourrière de terrestre de Georgetown";
		types[]={"Car","Tank"};
		spawns[]={"fourriere_1_spawn_1","fourriere_1_spawn_2"};
		pay=1;
	};
	class fourriere_2
	{
		name="Fourrière de aérienne de Lifi";
		types[]={"Air"};
		spawns[]={"fourriere_2_spawn_1"};
	};
	class fourriere_3
	{
		name="Fourrière de maritime de Georgetown";
		types[]={"Ship"};
		spawns[]={"fourriere_3_spawn_1","fourriere_3_spawn_2"};
	};

	class east_1
	{
		name="Garage Militaire";
		types[]={"Car","Tank"};
		spawns[]={"east_1_spawn_1","east_1_spawn_2"};
		pay=1;
	};

	class west_1
	{
		name="Garage GDM";
		types[]={"Car"};
		spawns[]={"west_1_spawn_1"};
		pay=1;
	};

	class guer_1
	{
		name="Hôpital de Georgetown";
		types[]={"Car"};
		spawns[]={"guer_1_spawn_1","guer_1_spawn_2"};
		pay=1;
	};
	class guer_2: guer_1
	{
		name="Hôpital de La Rochelle";
		spawns[]={"guer_2_spawn_1","guer_2_spawn_2"};
	};
};
