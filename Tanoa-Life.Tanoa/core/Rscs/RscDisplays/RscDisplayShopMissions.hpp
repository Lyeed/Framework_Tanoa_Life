class RscDisplayShopMissions: RscDisplayDefaultInteraction
{
	idd=97000;
	name="RscDisplayShopMissions";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			text="Alysia_Client_Texture\Data\shops\background.jpg";
		};
		class FRAME: FRAME {};
	};

	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			text="<t size='1.5' align='center'>Livraisons</t>";
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME {};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND {};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE {};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON {};

		class STOCK_FRAME: RscFrame
		{
			x=0.438125 * safezoneW + safezoneX;
			y=0.401 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.044 * safezoneH;
		};
		class STOCK_HEADER: RscStructuredText
		{
			text="<t align='center'>Disponible</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.438125 * safezoneW + safezoneX;
			y=0.401 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};
		class STOCK_LIST: RscCombo
		{
			idc=97001;
			onLBSelChanged="_this call AlysiaClient_fnc_shop_mission_update;";
			colorBackground[]={0,0,0,1};
			
			x=0.438125 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};

		class SELECT_FRAME: RscFrame
		{
			idc=97002;

			x=0.453594 * safezoneW + safezoneX;
			y=0.511 * safezoneH + safezoneY;
			w=0.0979687 * safezoneW;
			h=0.044 * safezoneH;
		};
		class SELECT_PRICE_HEADER: RscStructuredText
		{
			idc=97003;
			text="<t align='center'>Prix</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.453594 * safezoneW + safezoneX;
			y=0.511 * safezoneH + safezoneY;
			w=0.0979687 * safezoneW;
			h=0.022 * safezoneH;
		};
		class SELECT_PRICE_INFO: RscStructuredText
		{
			idc=97004;
			colorBackground[]={0,0,0,0.6};
			
			x=0.453594 * safezoneW + safezoneX;
			y=0.533 * safezoneH + safezoneY;
			w=0.0979687 * safezoneW;
			h=0.022 * safezoneH;
		};

		class ACTION_BUY_BACKGROUND: RscText
		{
			idc=97005;
			colorBackground[]={0,0,0,0.6};
			
			x=0.463906 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BUY_FRAME: RscFrame
		{
			idc=97006;
			colorText[]={0,0,0,0.8};
			
			x=0.463906 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BUY_TEXT: RscStructuredText
		{
			idc=97007;
			text="<t align='left' size='1.3' color='#FFFFFF'>Acheter</t>";
			
			x=0.489687 * safezoneW + safezoneX;
			y=0.588 * safezoneH + safezoneY;
			w=0.0567187 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_BUY_IMAGE: RscPicture
		{
			idc=97008;
			text="Alysia_Client_Texture\Data\global\action_buy.paa";
			
			x=0.4665 * safezoneW + safezoneX;
			y=0.583465 * safezoneH + safezoneY;
			w=0.02625 * safezoneW;
			h=0.0429629 * safezoneH;
		};
		class ACTION_BUY_BUTTON: RscButtonSilent
		{
			idc=97009;
			action="[] spawn AlysiaClient_fnc_shop_mission_buy;";
			onMouseEnter="ctrlSetText[97008,""Alysia_Client_Texture\Data\global\action_buy_select.paa""];ctrlShow[97006,false];((findDisplay 97000) displayCtrl 97005) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 97000) displayCtrl 97007) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Acheter</t>"";";
			onMouseExit="ctrlSetText[97008,""Alysia_Client_Texture\Data\global\action_buy.paa""];if (ctrlVisible 97008) then {ctrlShow[97006,true];};((findDisplay 97000) displayCtrl 97005) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 97000) displayCtrl 97007) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Acheter</t>"";";

			x=0.463906 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
