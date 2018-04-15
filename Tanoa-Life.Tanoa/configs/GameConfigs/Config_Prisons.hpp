class ALYSIA_PRISONS
{
	class Land_Gaol_Main
	{
		name = "Centre de réhabilitation";
		sides[] = {"WEST"};
		uniform = "Skyline_Uniforme_Prisonnier_01_F";
		exit[] = {12140.4,17777.6,0.00143814};
		escape_distance = 100;
		arrest_pos[] = {20.5313,6.58008,0.00143814};

		class time
		{
			min = 5;
			max = 90;
		};		

		class bail
		{
			min = 1000;
			max = 350000;
		};

		class cells
		{
			class cell_1
			{
				name = "Cellule N°1";
				pos[] = {8.86914,-2.53711,-0.00194083};
				dir = 333;
			};

			class cell_2
			{
				name = "Cellule N°2";
				pos[] = {4.35156,-2.44336,-0.00169046};
				dir = 327;
			};

			class cell_3
			{
				name = "Cellule N°3";
				pos[] = {3.15234,14.5273,-0.000298843};
				dir = 153;
			};

			class cell_4
			{
				name = "Cellule N°4";
				pos[] = {7.53906,14.2539,-0.000954971};
				dir = 147;
			};

			class cell_5
			{
				name = "Cellule N°5";
				pos[] = {11.9854,14.5156,-0.00121525};
				dir = 149;
			};
		};
	};

	class Land_MainSection
	{
		name = "Pénitencier";
		sides[] = {"EAST"};
		uniform = "Skyline_Uniforme_Prisonnier_02_F";
		exit[] = {8239.01,7830.56,0.00143433};
		escape_distance = 105;
		arrest_pos[] = {4.80957,-3.73242,0.00143433};

		class time
		{
			min = 5;
			max = 90;
		};

		class bail
		{
			max = 350000;
			min = 1000;
		};

		class cells
		{
			class A_01
			{
				name = "A - 01";
				pos[] = {189.16,15959,176.278};
				dir = 0.790919;
			};
			class A_02
			{
				name = "A - 02";
				pos[] = {189.415,15956.2,176.265};
				dir = 0.790919;
			};
			class A_03
			{
				name = "A - 03";
				pos[] = {189.278,15953.4,176.237};
				dir = 0.790919;
			};
			class A_04
			{
				name = "A - 04";
				pos[] = {189.38,15950.7,176.236};
				dir = 0.790919;
			};
			class A_05
			{
				name = "A - 05";
				pos[] = {189.384,15947.8,176.236};
				dir = 0.790919;
			};
			class A_06
			{
				name = "A - 06";
				pos[] = {189.48,15945.1,176.208};
				dir = 0.790919;
			};
			class A_07
			{
				name = "A - 07";
				pos[] = {189.561,15942.1,176.216};
				dir = 0.790919;
			};
			class A_08
			{
				name = "A - 08";
				pos[] = {190.326,15939.5,176.129};
				dir = 0.790919;
			};
			class A_09
			{
				name = "A - 09";
				pos[] = {190.413,15936.8,176.126};
				dir = 0.790919;
			};
			class A_10
			{
				name = "A - 10";
				pos[] = {190.532,15934,176.117};
				dir = 0.790919 ;
			};
			class B_01
			{
				name = "B - 01";
				pos[] = {177.466,15958.8,176.088};
				dir = 177.877;
			};
			class B_02
			{
				name = "B - 02";
				pos[] = {177.438,15956,176.079};
				dir = 177.877;
			};
			class B_03
			{
				name = "B - 03";
				pos[] = {177.576,15953.2,176.052};
				dir = 177.877;
			};
			class B_04
			{
				name = "B - 04";
				pos[] = {177.724,15950.3,176.047};
				dir = 177.877;
			};
			class B_05
			{
				name = "B - 05";
				pos[] = {177.79,15947.6,176.038};
				dir = 177.877;
			};
			class B_06
			{
				name = "B - 06";
				pos[] = {177.738,15944.7,176.032};
				dir = 177.877;
			};
			class B_07
			{
				name = "B - 07";
				pos[] = {177.852,15942,176.025};
				dir = 177.877;
			};
			class B_08
			{
				name = "B - 08";
				pos[] = {177.986,15939.2,176.02};
				dir = 177.877;
			};
			class B_09
			{
				name = "B - 09";
				pos[] = {178.079,15936.3,176.469};
				dir = 177.877;
			};
			class B_10
			{
				name = "B - 10";
				pos[] = {178.285,15933.7,176.008};
				dir = 177.877;
			};
			class C_01
			{
				name = "C - 01";
				pos[] = {189.601,15959.2,176.1};
				dir = 0.790919;
			};
			class C_02
			{
				name = "C - 02";
				pos[] = {189.712,15956.4,176.085};
				dir = 0.790919 ;
			};
			class C_03
			{
				name = "C - 03";
				pos[] = {189.788,15953.6,176.068};
				dir = 0.790919;
			};
			class C_04
			{
				name = "C - 04";
				pos[] = {189.866,15950.7,176.174};
				dir = 0.790919;
			};
			class C_05
			{
				name = "C - 05";
				pos[] = {190.136,15948,176.162};
				dir = 0.790919;
			};
			class C_06
			{
				name = "C - 06";
				pos[] = {190.396,15945.1,176.156};
				dir = 0.790919;
			};
			class C_07
			{
				name = "C - 07";
				pos[] = {190.367,15942.3,176.15};
				dir = 0.790919;
			};
			class C_08
			{
				name = "C - 08";
				pos[] = {190.604,15939.7,176.143};
				dir = 0.790919;
			};
			class C_09
			{
				name = "C - 09";
				pos[] = {190.35,15936.9,176.139};
				dir = 0.790919;
			};
			class D_01
			{
				name = "D - 01";
				pos[] = {177.392,15958.7,176};
				dir = 177.877;
			};
			class D_02
			{
				name = "D - 02";
				pos[] = {177.641,15955.9,175.981};
				dir = 177.877;
			};
			class D_03
			{
				name = "D - 03";
				pos[] = {177.752,15953.2,175.971};
				dir = 177.877;
			};
			class D_04
			{
				name = "D - 04";
				pos[] = {177.712,15950.4,175.964};
				dir = 177.877;
			};
			class D_05
			{
				name = "D - 05";
				pos[] = {177.805,15947.7,175.962};
				dir = 177.877;
			};
			class D_06
			{
				name = "D - 06";
				pos[] = {178.003,15944.8,175.956};
				dir = 177.877;
			};
			class D_07
			{
				name = "D - 07";
				pos[] = {177.806,15942,175.95};
				dir = 177.877;
			};
			class D_08
			{
				name = "D - 08";
				pos[] = {178.19,15939.2,175.945};
				dir = 177.877;
			};
			class D_09
			{
				name = "D - 09";
				pos[] = {178.056,15936.4,175.94};
				dir = 177.877;
			};
		};
	};
};
