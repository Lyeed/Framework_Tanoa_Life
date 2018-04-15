class RscDisplayC4: RscDisplayDefault
{
	idd=12000;
	name="RscDisplayC4";

	class controlsBackground
	{
		class BOMB: RscPicture
		{
			text="Alysia_Client_Texture\Data\c4\bomb.paa";

			x=0.285937 * safezoneW + safezoneX;
			y=0.213074 * safezoneH + safezoneY;
			w=0.416093 * safezoneW;
			h=0.582074 * safezoneH;
		};
	};

	class controls
	{
		class IMAGE_MINUTS_1: RscPicture
		{
			idc=12001;
			text="Alysia_Client_Texture\Data\c4\0.paa";

			x=0.492291 * safezoneW + safezoneX;
			y=0.47337 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class IMAGE_MINUTS_2: RscPicture
		{
			idc=12002;
			text="Alysia_Client_Texture\Data\c4\0.paa";

			x=0.508854 * safezoneW + safezoneX;
			y=0.473148 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class IMAGE_SECONDS_1: RscPicture
		{
			idc=12003;
			text="Alysia_Client_Texture\Data\c4\0.paa";

			x=0.529375 * safezoneW + safezoneX;
			y=0.47337 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class IMAGE_SECONDS_2: RscPicture
		{
			idc=12004;
			text="Alysia_Client_Texture\Data\c4\0.paa";

			x=0.546874 * safezoneW + safezoneX;
			y=0.473148 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};

		class IMAGE_MIDDLE: RscPicture
		{
			idc=12005;
			text="Alysia_Client_Texture\Data\c4\middle.paa";

			x=0.524218 * safezoneW + safezoneX;
			y=0.478 * safezoneH + safezoneY;
			w=0.0154688 * safezoneW;
			h=0.033 * safezoneH;
		};

		class BUTTON_VALIDATE: RscButtonSilent
		{
			idc=12006;
			action="[true] call AlysiaClient_fnc_c4_activate;";

			x=0.415104 * safezoneW + safezoneX;
			y=0.471296 * safezoneH + safezoneY;
			w=0.0251042 * safezoneW;
			h=0.0855556 * safezoneH;
		};
		class BUTTON_UP: RscButtonSilent
		{
			idc=12007;
			action="[true] call AlysiaClient_fnc_c4_timer;";

			x=0.556771 * safezoneW + safezoneX;
			y=0.526852 * safezoneH + safezoneY;
			w=0.0159897 * safezoneW;
			h=0.0220001 * safezoneH;
		};
		class BUTTON_DOWN: RscButtonSilent
		{
			idc=12008;
			action="[false] call AlysiaClient_fnc_c4_timer;";

			x=0.534114 * safezoneW + safezoneX;
			y=0.526519 * safezoneH + safezoneY;
			w=0.014948 * safezoneW;
			h=0.0229259 * safezoneH;
		};
	};
};
