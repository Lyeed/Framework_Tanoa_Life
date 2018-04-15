#define BACKGROUND_IDC                5001
#define TITLE_IDC                     5002
#define OPTION_REFRESH_FRAME_IDC      5003
#define OPTION_REFRESH_BACKGROUND_IDC 5004
#define OPTION_REFRESH_IMAGE_IDC      5005
#define OPTION_REFRESH_BUTTON_IDC     5006
#define ACTION_1_FRAME_IDC            5010
#define ACTION_1_BACKGROUND_IDC       5011
#define ACTION_1_IMAGE_IDC            5012
#define ACTION_1_TITLE_IDC            5013
#define ACTION_1_BUTTON_IDC           5014
#define ACTION_2_FRAME_IDC            5015
#define ACTION_2_BACKGROUND_IDC       5016
#define ACTION_2_IMAGE_IDC            5017
#define ACTION_2_TITLE_IDC            5018
#define ACTION_2_BUTTON_IDC           5019
#define ACTION_3_FRAME_IDC            5020
#define ACTION_3_BACKGROUND_IDC       5021
#define ACTION_3_IMAGE_IDC            5022
#define ACTION_3_TITLE_IDC            5023
#define ACTION_3_BUTTON_IDC           5024
#define ACTION_4_FRAME_IDC            5025
#define ACTION_4_BACKGROUND_IDC       5026
#define ACTION_4_IMAGE_IDC            5027
#define ACTION_4_TITLE_IDC            5028
#define ACTION_4_BUTTON_IDC           5029
#define ACTION_5_FRAME_IDC            5030
#define ACTION_5_BACKGROUND_IDC       5031
#define ACTION_5_IMAGE_IDC            5032
#define ACTION_5_TITLE_IDC            5033
#define ACTION_5_BUTTON_IDC           5034
#define ACTION_6_FRAME_IDC            5035
#define ACTION_6_BACKGROUND_IDC       5036
#define ACTION_6_IMAGE_IDC            5037
#define ACTION_6_TITLE_IDC            5038
#define ACTION_6_BUTTON_IDC           5039
#define ACTION_7_FRAME_IDC            5040
#define ACTION_7_BACKGROUND_IDC       5041
#define ACTION_7_IMAGE_IDC            5042
#define ACTION_7_TITLE_IDC            5043
#define ACTION_7_BUTTON_IDC           5044
#define ACTION_8_FRAME_IDC            5045
#define ACTION_8_BACKGROUND_IDC       5046
#define ACTION_8_IMAGE_IDC            5047
#define ACTION_8_TITLE_IDC            5048
#define ACTION_8_BUTTON_IDC           5049
#define ACTION_9_FRAME_IDC            5050
#define ACTION_9_BACKGROUND_IDC       5051
#define ACTION_9_IMAGE_IDC            5052
#define ACTION_9_TITLE_IDC            5053
#define ACTION_9_BUTTON_IDC           5054
#define ACTION_10_FRAME_IDC           5055
#define ACTION_10_BACKGROUND_IDC      5056
#define ACTION_10_IMAGE_IDC           5057
#define ACTION_10_TITLE_IDC           5058
#define ACTION_10_BUTTON_IDC          5059

class RscDisplayInteraction: RscDisplayDefaultInteraction
{
	idd=5000;
	name="RscDisplayInteraction";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			idc=BACKGROUND_IDC;

			x=0.304062 * safezoneW + safezoneX;
			y=0.324 * safezoneH + safezoneY;
			w=0.391875 * safezoneW;
			h=0.407 * safezoneH;
		};
		class FRAME: FRAME
		{
			x=0.304062 * safezoneW + safezoneX;
			y=0.291 * safezoneH + safezoneY;
			w=0.391875 * safezoneW;
			h=0.44 * safezoneH;
		};
	};
	
	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			idc=TITLE_IDC;

			x=0.304062 * safezoneW + safezoneX;
			y=0.291 * safezoneH + safezoneY;
			w=0.391875 * safezoneW;
			h=0.033 * safezoneH;
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME
		{
			x=0.273125 * safezoneW + safezoneX;
			y=0.313 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND
		{
			x=0.273125 * safezoneW + safezoneX;
			y=0.313 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE
		{
			x=0.280364 * safezoneW + safezoneX;
			y=0.324 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON
		{
			x=0.273125 * safezoneW + safezoneX;
			y=0.313 * safezoneH + safezoneY;
		};

		class OPTION_REFRESH_FRAME: RscFrame
		{
			idc=OPTION_REFRESH_FRAME_IDC;
			colorText[]={0,0,0,1};

			x=0.273125 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.0309375 * safezoneW;
			h=0.044 * safezoneH;
		};
		class OPTION_REFRESH_BACKGROUND: RscText
		{
			idc=OPTION_REFRESH_BACKGROUND_IDC;
			colorBackground[]={0,0,0,0.6};

			x=0.273125 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.0309375 * safezoneW;
			h=0.044 * safezoneH;
		};
		class OPTION_REFRESH_IMAGE: RscPicture
		{
			idc=OPTION_REFRESH_IMAGE_IDC;
			text="Alysia_Client_Texture\Data\global\option_refresh.paa";

			x=0.279479 * safezoneW + safezoneX;
			y=0.378333 * safezoneH + safezoneY;
			w=0.0154688 * safezoneW;
			h=0.022 * safezoneH;
		};
		class OPTION_REFRESH_BUTTON: RscButtonSilent
		{
			idc=OPTION_REFRESH_BUTTON_IDC;
			action="[] call AlysiaClient_fnc_interactions_recall;";
			tooltip="Rafraichir";
			onMouseEnter="((findDisplay 5000) displayCtrl 5004) ctrlSetBackgroundColor [1,1,1,1];ctrlSetText[5005,""Alysia_Client_Texture\Data\global\option_refresh_select.paa""];ctrlShow[5003, false];";
			onMouseExit="((findDisplay 5000) displayCtrl 5004) ctrlSetBackgroundColor [0,0,0,0.6];ctrlSetText[5005,""Alysia_Client_Texture\Data\global\option_refresh.paa""];ctrlShow[5003, true];";

			x=0.273125 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.0309375 * safezoneW;
			h=0.044 * safezoneH;
		};

		class ACTION_1_FRAME: RscFrame
		{
			idc=ACTION_1_FRAME_IDC;

			x=0.324687 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_1_BACKGROUND: RscStructuredText
		{
			idc=ACTION_1_BACKGROUND_IDC;
			colorBackground[]={0,0,0,0.6};

			x=0.324687 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_1_IMAGE: RscPicture
		{
			idc=ACTION_1_IMAGE_IDC;

			x=0.329844 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=0.020625 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_1_TITLE: RscStructuredText
		{
			idc=ACTION_1_TITLE_IDC;

			x=0.355625 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=0.12375 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_1_BUTTON: RscButtonSilent
		{
			idc=ACTION_1_BUTTON_IDC;

			x=0.324687 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};

		class ACTION_2_FRAME: RscFrame
		{
			idc=ACTION_2_FRAME_IDC;

			x=0.515469 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_2_BACKGROUND: RscStructuredText
		{
			idc=ACTION_2_BACKGROUND_IDC;
			colorBackground[]={0,0,0,0.6};

			x=0.515469 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_2_IMAGE: RscPicture
		{
			idc=ACTION_2_IMAGE_IDC;

			x=0.520625 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=0.020625 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_2_TITLE: RscStructuredText
		{
			idc=ACTION_2_TITLE_IDC;

			x=0.546406 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=0.12375 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_2_BUTTON: RscButtonSilent
		{
			idc=ACTION_2_BUTTON_IDC;

			x=0.515469 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};

		class ACTION_3_FRAME: RscFrame
		{
			idc=ACTION_3_FRAME_IDC;

			x=0.324687 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_3_BACKGROUND: RscStructuredText
		{
			idc=ACTION_3_BACKGROUND_IDC;
			colorBackground[]={0,0,0,0.6};

			x=0.324687 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_3_IMAGE: RscPicture
		{
			idc=ACTION_3_IMAGE_IDC;

			x=0.329844 * safezoneW + safezoneX;
			y=0.434 * safezoneH + safezoneY;
			w=0.020625 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_3_TITLE: RscStructuredText
		{
			idc=ACTION_3_TITLE_IDC;

			x=0.355625 * safezoneW + safezoneX;
			y=0.434 * safezoneH + safezoneY;
			w=0.12375 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_3_BUTTON: RscButtonSilent
		{
			idc=ACTION_3_BUTTON_IDC;

			x=0.324687 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};

		class ACTION_4_FRAME: RscFrame
		{
			idc=ACTION_4_FRAME_IDC;

			x=0.515469 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_4_BACKGROUND: RscStructuredText
		{
			idc=ACTION_4_BACKGROUND_IDC;
			colorBackground[]={0,0,0,0.6};

			x=0.515469 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_4_IMAGE: RscPicture
		{
			idc=ACTION_4_IMAGE_IDC;

			x=0.520625 * safezoneW + safezoneX;
			y=0.434 * safezoneH + safezoneY;
			w=0.020625 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_4_TITLE: RscStructuredText
		{
			idc=ACTION_4_TITLE_IDC;

			x=0.546406 * safezoneW + safezoneX;
			y=0.434 * safezoneH + safezoneY;
			w=0.12375 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_4_BUTTON: RscButtonSilent
		{
			idc=ACTION_4_BUTTON_IDC;

			x=0.515469 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};

		class ACTION_5_FRAME: RscFrame
		{
			idc=ACTION_5_FRAME_IDC;

			x=0.324687 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_5_BACKGROUND: RscStructuredText
		{
			idc=ACTION_5_BACKGROUND_IDC;
			colorBackground[]={0,0,0,0.6};

			x=0.324687 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_5_IMAGE: RscPicture
		{
			idc=ACTION_5_IMAGE_IDC;

			x=0.329844 * safezoneW + safezoneX;
			y=0.511 * safezoneH + safezoneY;
			w=0.020625 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_5_TITLE: RscStructuredText
		{
			idc=ACTION_5_TITLE_IDC;

			x=0.355625 * safezoneW + safezoneX;
			y=0.511 * safezoneH + safezoneY;
			w=0.12375 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_5_BUTTON: RscButtonSilent
		{
			idc=ACTION_5_BUTTON_IDC;

			x=0.324687 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};

		class ACTION_6_FRAME: RscFrame
		{
			idc=ACTION_6_FRAME_IDC;

			x=0.515469 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_6_BACKGROUND: RscStructuredText
		{
			idc=ACTION_6_BACKGROUND_IDC;
			colorBackground[]={0,0,0,0.6};

			x=0.515469 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_6_IMAGE: RscPicture
		{
			idc=ACTION_6_IMAGE_IDC;

			x=0.520625 * safezoneW + safezoneX;
			y=0.511 * safezoneH + safezoneY;
			w=0.020625 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_6_TITLE: RscStructuredText
		{
			idc=ACTION_6_TITLE_IDC;

			x=0.546406 * safezoneW + safezoneX;
			y=0.511 * safezoneH + safezoneY;
			w=0.12375 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_6_BUTTON: RscButtonSilent
		{
			idc=ACTION_6_BUTTON_IDC;

			x=0.515469 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};

		class ACTION_7_FRAME: RscFrame
		{
			idc=ACTION_7_FRAME_IDC;

			x=0.324687 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_7_BACKGROUND: RscStructuredText
		{
			idc=ACTION_7_BACKGROUND_IDC;
			colorBackground[]={0,0,0,0.6};

			x=0.324687 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_7_IMAGE: RscPicture
		{
			idc=ACTION_7_IMAGE_IDC;

			x=0.329844 * safezoneW + safezoneX;
			y=0.588 * safezoneH + safezoneY;
			w=0.020625 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_7_TITLE: RscStructuredText
		{
			idc=ACTION_7_TITLE_IDC;

			x=0.355625 * safezoneW + safezoneX;
			y=0.588 * safezoneH + safezoneY;
			w=0.12375 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_7_BUTTON: RscButtonSilent
		{
			idc=ACTION_7_BUTTON_IDC;

			x=0.324687 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};

		class ACTION_8_FRAME: RscFrame
		{
			idc=ACTION_8_FRAME_IDC;

			x=0.515469 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_8_BACKGROUND: RscStructuredText
		{
			idc=ACTION_8_BACKGROUND_IDC;
			colorBackground[]={0,0,0,0.6};

			x=0.515469 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_8_IMAGE: RscPicture
		{
			idc=ACTION_8_IMAGE_IDC;

			x=0.520625 * safezoneW + safezoneX;
			y=0.588 * safezoneH + safezoneY;
			w=0.020625 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_8_TITLE: RscStructuredText
		{
			idc=ACTION_8_TITLE_IDC;

			x=0.546406 * safezoneW + safezoneX;
			y=0.588 * safezoneH + safezoneY;
			w=0.12375 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_8_BUTTON: RscButtonSilent
		{
			idc=ACTION_8_BUTTON_IDC;

			x=0.515469 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};

		class ACTION_9_FRAME: RscFrame
		{
			idc=ACTION_9_FRAME_IDC;

			x=0.324687 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_9_BACKGROUND: RscStructuredText
		{
			idc=ACTION_9_BACKGROUND_IDC;
			colorBackground[]={0,0,0,0.6};

			x=0.324687 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_9_IMAGE: RscPicture
		{
			idc=ACTION_9_IMAGE_IDC;

			x=0.329844 * safezoneW + safezoneX;
			y=0.665 * safezoneH + safezoneY;
			w=0.020625 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_9_TITLE: RscStructuredText
		{
			idc=ACTION_9_TITLE_IDC;

			x=0.355625 * safezoneW + safezoneX;
			y=0.665 * safezoneH + safezoneY;
			w=0.12375 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_9_BUTTON: RscButtonSilent
		{
			idc=ACTION_9_BUTTON_IDC;

			x=0.324687 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};

		class ACTION_10_FRAME: RscFrame
		{
			idc=ACTION_10_FRAME_IDC;

			x=0.515469 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_10_BACKGROUND: RscStructuredText
		{
			idc=ACTION_10_BACKGROUND_IDC;
			colorBackground[]={0,0,0,0.6};

			x=0.515469 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_10_IMAGE: RscPicture
		{
			idc=ACTION_10_IMAGE_IDC;

			x=0.520625 * safezoneW + safezoneX;
			y=0.665 * safezoneH + safezoneY;
			w=0.020625 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_10_TITLE: RscStructuredText
		{
			idc=ACTION_10_TITLE_IDC;

			x=0.546406 * safezoneW + safezoneX;
			y=0.665 * safezoneH + safezoneY;
			w=0.12375 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_10_BUTTON: RscButtonSilent
		{
			idc=ACTION_10_BUTTON_IDC;

			x=0.515469 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
