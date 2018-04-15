class ALYSIA_MEDICAL
{
	class stabilize
	{
		hand_succeed_percentage=1;
		debif_succeed_percentage=50;
	};

	class regen
	{
		regen_basic=2;
		regen_healthy=6;
		regen_morphine_multiplier=3;
	};

	class morphine
	{
		seringue_amount=7;
		tick_timer=15;
		tick_amount=1;
	};

	class adrenaline
	{
		seringue_amount=18;
		tick_timer=10;
		tick_amount=1;
	};

	class coma
	{
		death_timer=1800;
		wait_before_suicide=300;
		blood_receive_when_stabilize=10;
		time_fade_sound_when_stabilize=20;
		setFatigue_when_stabilize=1;
	};
};

class ALYSIA_DESEASES
{
	class rhume
	{
		name="Rhume";
		event_sounds[]={"rhume_1","rhume_2"};
		event_contagion_chance=2;
		reduce_fatigue=0;
		pouls=0;
		temperature=1;
		sentences[]=
		{
			"Nez bouché",
			"Légère fièvre"
		};
	};

	class toux
	{
		name="Toux";
		event_sounds[]={"cough_0","cough_1","cough_2"};
		event_contagion_chance=1;
		reduce_fatigue=0.20;
		pouls=40;
		temperature=1.5;
		sentences[]=
		{
			"Difficultés pour respirer",
			"Gorge enflammé"
		};
	};
};

class ALYSIA_MEDECINE
{
	class medoc_rhume
	{
		interval=300;
		class heal
		{
			class rhume
			{
				max=6;
				min=1;
			};
		};
	};
	class medoc_toux_1
	{
		interval=600;
		class heal
		{
			class toux
			{
				max=3;
				min=1;
			};
		};
	};
	class medoc_toux_2
	{
		interval=300;
		class heal
		{
			class toux
			{
				max=5;
				min=1;
			};
		};
	};
};

class ALYSIA_VACCINS
{
	class Alysia_Vaccin_Rhume
	{
		time=43000;
		class protect
		{
			class rhume {};
		};
	};
	class Alysia_Vaccin_Toux
	{
		time=35000;
		class protect
		{
			class toux {};
		};
	};
};
