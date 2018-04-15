class RscDisplayDefaultList: RscDisplayDefaultInteraction
{
	idd=16000;
	name="RscDisplayDefaultList";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND {};
		class FRAME: FRAME {};
	};

	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			text="<t size='1.5' align='center'>Fouille</t>";
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
			text="<t align='center'>Inventaire</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.396875 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.20625 * safezoneW;
			h=0.022 * safezoneH;
		};
		class LIST: RscListbox
		{
			idc=16001;
			
			x=0.396875 * safezoneW + safezoneX;
			y=0.445 * safezoneH + safezoneY;
			w=0.20625 * safezoneW;
			h=0.22 * safezoneH;
		};
	};
};
