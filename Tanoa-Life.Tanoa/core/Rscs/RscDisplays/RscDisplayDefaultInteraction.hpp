class RscDisplayDefaultInteraction: RscDisplayDefault
{
	onLoad="uinamespace setVariable ['current_interaction_dialog', (_this select 0)];";

	class DEFAULT_controlsBackground
	{
		class BACKGROUND: RscPicture
		{
			text="Alysia_Client_Texture\Data\interactions\background.jpg";

			x=0.37625 * safezoneW + safezoneX;
			y=0.39 * safezoneH + safezoneY;
			w=0.2475 * safezoneW;
			h=0.297 * safezoneH;
		};

		class FRAME: RscFrame
		{
			colorText[]={0,0,0,1};

			x=0.37625 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=0.248542 * safezoneW;
			h=0.33 * safezoneH;
		};
	};

	class DEFAULT_controls
	{
		class TITLE: RscStructuredText
		{
			colorBackground[]={0, 0, 0, 1};

			x=0.37625 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=0.248021 * safezoneW;
			h=0.033 * safezoneH;
		};

		class OPTION_EXIT_FRAME: RscFrame
		{
			idc=19500;
			colorText[]={0,0,0,1};

			x=0.345312 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.0309375 * safezoneW;
			h=0.044 * safezoneH;
		};
		class OPTION_EXIT_BACKGROUND: RscText
		{
			idc=19501;
			colorBackground[]={0,0,0,0.6};

			x=0.345312 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.0309375 * safezoneW;
			h=0.044 * safezoneH;
		};
		class OPTION_EXIT_IMAGE: RscPicture
		{
			idc=19502;
			text="Alysia_Client_Texture\Data\global\option_exit.paa";

			x=0.352605 * safezoneW + safezoneX;
			y=0.424074 * safezoneH + safezoneY;
			w=0.0154688 * safezoneW;
			h=0.022 * safezoneH;
		};
		class OPTION_EXIT_BUTTON: RscButtonSilent
		{
			action="closedialog 0;";
			tooltip="Quitter";
			onMouseEnter="((uinamespace getvariable 'current_interaction_dialog') displayCtrl 19501) ctrlSetBackgroundColor [1,1,1,1];ctrlSetText[19502,""Alysia_Client_Texture\Data\global\option_exit_select.paa""];ctrlShow[19500, false];";
			onMouseExit="((uinamespace getvariable 'current_interaction_dialog') displayCtrl 19501) ctrlSetBackgroundColor [0,0,0,0.6];ctrlSetText[19502,""Alysia_Client_Texture\Data\global\option_exit.paa""];ctrlShow[19500, true];";

			x=0.345312 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.0309375 * safezoneW;
			h=0.044 * safezoneH;
		};

		class OPTION_BACK_FRAME: RscFrame
		{
			idc=19503;
			colorText[]={0,0,0,1};

			x=0.345312 * safezoneW + safezoneX;
			y=0.467 * safezoneH + safezoneY;
			w=0.0309375 * safezoneW;
			h=0.044 * safezoneH;
		};
		class OPTION_BACK_BACKGROUND: RscText
		{
			idc=19504;
			colorBackground[]={0,0,0,0.6};

			x=0.345312 * safezoneW + safezoneX;
			y=0.467 * safezoneH + safezoneY;
			w=0.0309375 * safezoneW;
			h=0.044 * safezoneH;
		};
		class OPTION_BACK_IMAGE: RscPicture
		{
			idc=19505;
			text="Alysia_Client_Texture\Data\global\option_back.paa";

			x=0.352343 * safezoneW + safezoneX;
			y=0.477593 * safezoneH + safezoneY;
			w=0.0154688 * safezoneW;
			h=0.022 * safezoneH;
		};
		class OPTION_BACK_BUTTON: RscButtonSilent
		{
			idc=19506;
			action="[] call AlysiaClient_fnc_interactions_recall;";
			tooltip="Retour";
			onMouseEnter="((uinamespace getvariable 'current_interaction_dialog') displayCtrl 19504) ctrlSetBackgroundColor [1,1,1,1];ctrlSetText[19505,""Alysia_Client_Texture\Data\global\option_back_select.paa""];ctrlShow[19503, false];";
			onMouseExit="((uinamespace getvariable 'current_interaction_dialog') displayCtrl 19504) ctrlSetBackgroundColor [0,0,0,0.6];ctrlSetText[19505,""Alysia_Client_Texture\Data\global\option_back.paa""];ctrlShow[19503, true];";

			x=0.345312 * safezoneW + safezoneX;
			y=0.467 * safezoneH + safezoneY;
			w=0.0309375 * safezoneW;
			h=0.044 * safezoneH;
		};
	};
};
