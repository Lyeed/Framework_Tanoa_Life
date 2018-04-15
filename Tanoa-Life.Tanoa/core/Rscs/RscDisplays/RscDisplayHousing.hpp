class RscDisplayHousingBuy: RscDisplayDefaultInteraction
{
	idd=45000;
	name="RscDisplayHousingBuy";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			text="Alysia_Client_Texture\Data\housing\background.jpg";
		};
		class FRAME: FRAME {};
	};
	
	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			text="<t size='1.5' align='center'>Achat de bâtiment</t>";
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME {};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND {};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE {};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON {};

		class RscStructuredText_1101: RscStructuredText
		{
			idc=45006;
			colorBackground[]={0,0,0,0.6};
			
			x=0.381406 * safezoneW + safezoneX;
			y=0.401 * safezoneH + safezoneY;
			w=0.237187 * safezoneW;
			h=0.198 * safezoneH;
		};
		class RscFrame_1800: RscFrame
		{
			x=0.381406 * safezoneW + safezoneX;
			y=0.401 * safezoneH + safezoneY;
			w=0.237187 * safezoneW;
			h=0.198 * safezoneH;
		};

		class ACTION_BUY_BACKGROUND: RscStructuredText
		{
			idc=45001;
			colorBackground[]={0,0,0,0.6};

			x=0.443281 * safezoneW + safezoneX;
			y=0.61 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BUY_FRAME: RscFrame
		{
			idc=45002;

			x=0.443281 * safezoneW + safezoneX;
			y=0.61 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BUY_IMAGE: RscPicture
		{
			idc=45003;
			text="Alysia_Client_Texture\Data\global\action_buy.paa";

			x=0.451422 * safezoneW + safezoneX;
			y=0.616064 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class ACTION_BUY_TEXT: RscStructuredText
		{
			idc=45004;
			text="<t align='left' size='1.3'>Acheter</t>";
			colorBackground[]={0,0,0,0};
			
			x=0.484531 * safezoneW + safezoneX;
			y=0.621 * safezoneH + safezoneY;
			w=0.0567187 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_BUY_BUTTON: RscButtonSilent
		{
			idc=45005;
			action="[] spawn AlysiaClient_fnc_house_menu_action_buy;";
			onMouseEnter="ctrlSetText[45003,""Alysia_Client_Texture\Data\global\action_buy_select.paa""];ctrlShow[45002, false];((findDisplay 45000) displayCtrl 45001) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 45000) displayCtrl 45004) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Acheter</t>"";";
			onMouseExit="ctrlSetText[45003,""Alysia_Client_Texture\Data\global\action_buy.paa""];ctrlShow[45002, true];((findDisplay 45000) displayCtrl 45001) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 45000) displayCtrl 45004) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Acheter</t>"";";

			x=0.443281 * safezoneW + safezoneX;
			y=0.61 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
