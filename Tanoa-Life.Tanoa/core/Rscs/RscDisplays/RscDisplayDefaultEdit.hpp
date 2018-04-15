class RscDisplayDefaultEdit: RscDisplayDefaultInteraction
{
	idd=101000;
	name="RscDisplayDefaultEdit";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			idc=101001;

			x=0.37625 * safezoneW + safezoneX;
			y=0.522 * safezoneH + safezoneY;
			w=0.2475 * safezoneW;
			h=0.165 * safezoneH;
		};
		class FRAME: FRAME
		{
			x=0.37625 * safezoneW + safezoneX;
			y=0.489 * safezoneH + safezoneY;
			w=0.248021 * safezoneW;
			h=0.199852 * safezoneH;
		};
	};
	
	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			idc=101002;

			x=0.37625 * safezoneW + safezoneX;
			y=0.489 * safezoneH + safezoneY;
			w=0.248021 * safezoneW;
			h=0.033 * safezoneH;
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME
		{
			x=0.345312 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;			
		};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND
		{
			x=0.345312 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE
		{
			x=0.352187 * safezoneW + safezoneX;
			y=0.511333 * safezoneH + safezoneY;			
		};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON
		{
			x=0.345312 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;			
		};

		class NAME_HEADER: RscStructuredText
		{
			idc=101003;
			colorBackground[]={0,0,0,0.8};

			x = 0.402031 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.195937 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class NAME_EDIT: RscEdit
		{
			idc=101004;

			x = 0.402031 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.195937 * safezoneW;
			h = 0.022 * safezoneH;
		};

		class ACTION_FRAME: RscFrame
		{
			idc=101005;

			x=0.448438 * safezoneW + safezoneX;
			y=0.621 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BACKGROUND: RscStructuredText
		{
			idc=101006;
			colorBackground[]={0,0,0,0.6};

			x=0.448438 * safezoneW + safezoneX;
			y=0.621 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_TEXT: RscStructuredText
		{
			idc=101007;
			colorBackground[]={0,0,0,0};

			x=0.484323 * safezoneW + safezoneX;
			y=0.632741 * safezoneH + safezoneY;
			w=0.0721875 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_IMAGE: RscPicture
		{
			idc=101008;

			x=0.451354 * safezoneW + safezoneX;
			y=0.627667 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class ACTION_BUTTON: RscButtonSilent
		{
			idc=101009;
			action="[] call AlysiaClient_fnc_edit_action;";

			x=0.448438 * safezoneW + safezoneX;
			y=0.621 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
