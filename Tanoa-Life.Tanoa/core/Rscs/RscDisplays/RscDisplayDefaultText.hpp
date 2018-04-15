class RscDisplayDefaultText: RscDisplayDefaultInteraction
{
	idd=68000;
	name="RscDisplayDefaultText";

	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			idc=68002;
			text="Alysia_Client_Texture\Data\interactions\background.jpg";
		};
		class FRAME: FRAME {};
	};

	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			idc=68003;
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME {};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND {};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE {};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON {};
		class OPTION_BACK_FRAME: OPTION_BACK_FRAME {};
		class OPTION_BACK_BACKGROUND: OPTION_BACK_BACKGROUND {};
		class OPTION_BACK_IMAGE: OPTION_BACK_IMAGE {};
		class OPTION_BACK_BUTTON: OPTION_BACK_BUTTON {};

		class FRAME: RscFrame
		{
			x=0.396875 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.20625 * safezoneW;
			h=0.242 * safezoneH;
		};
		class HEADER: RscStructuredText
		{
			text="<t align='center'>Résultats</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.396875 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.20625 * safezoneW;
			h=0.022 * safezoneH;
		};
		class INFO: RscStructuredText
		{
			idc=68001;
			colorBackground[]={0,0,0,0.6};
			
			x=0.396875 * safezoneW + safezoneX;
			y=0.445 * safezoneH + safezoneY;
			w=0.20625 * safezoneW;
			h=0.22 * safezoneH;
		};
	};
};
