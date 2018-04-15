class RscDisplayShopDynMarkers: RscDisplayDefaultInteraction
{
	idd=21000;
	name="RscDisplayShopDynMarkers";
	
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
			text="<t size='1.5' align='center'>Coordonnées</t>";
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
			idc=21001;
			onLBSelChanged="_this call AlysiaClient_fnc_shop_dynamicMarkers_update_info;";
			colorBackground[]={0, 0, 0, 1};
			
			x=0.438125 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};

		class SELECT_FRAME: RscFrame
		{
			idc=21002;

			x=0.453594 * safezoneW + safezoneX;
			y=0.511 * safezoneH + safezoneY;
			w=0.0979687 * safezoneW;
			h=0.044 * safezoneH;
		};
		class SELECT_PRICE_HEADER: RscStructuredText
		{
			idc=21003;
			text="<t align='center'>Prix</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.453594 * safezoneW + safezoneX;
			y=0.511 * safezoneH + safezoneY;
			w=0.0979687 * safezoneW;
			h=0.022 * safezoneH;
		};
		class SELECT_PRICE_INFO: RscStructuredText
		{
			idc=21004;
			colorBackground[]={0,0,0,0.6};
			
			x=0.453594 * safezoneW + safezoneX;
			y=0.533 * safezoneH + safezoneY;
			w=0.0979687 * safezoneW;
			h=0.022 * safezoneH;
		};

		class ACTION_BUY_BACKGROUND: RscText
		{
			idc=21005;
			colorBackground[]={0,0,0,0.6};
			
			x=0.463906 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BUY_FRAME: RscFrame
		{
			idc=21006;
			colorText[]={0,0,0,0.8};
			
			x=0.463906 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BUY_TEXT: RscStructuredText
		{
			idc=21007;
			text="<t align='left' size='1.3' color='#FFFFFF'>Acheter</t>";
			
			x=0.489687 * safezoneW + safezoneX;
			y=0.588 * safezoneH + safezoneY;
			w=0.0567187 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_BUY_IMAGE: RscPicture
		{
			idc=21008;
			text="Alysia_Client_Texture\Data\global\action_buy.paa";
			
			x=0.4665 * safezoneW + safezoneX;
			y=0.583465 * safezoneH + safezoneY;
			w=0.02625 * safezoneW;
			h=0.0429629 * safezoneH;
		};
		class ACTION_BUY_BUTTON: RscButtonSilent
		{
			idc=21009;
			action="[] call AlysiaClient_fnc_shop_dynamicMarkers_buy;";
			onMouseEnter="ctrlSetText[21008,""Alysia_Client_Texture\Data\global\action_buy_select.paa""];ctrlShow[21006, false];((findDisplay 21000) displayCtrl 21005) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 21000) displayCtrl 21007) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Acheter</t>"";";
			onMouseExit="ctrlSetText[21008,""Alysia_Client_Texture\Data\global\action_buy.paa""];if (ctrlVisible 21008) then {ctrlShow[21006, true];};((findDisplay 21000) displayCtrl 21005) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 21000) displayCtrl 21007) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Acheter</t>"";";

			x=0.463906 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
