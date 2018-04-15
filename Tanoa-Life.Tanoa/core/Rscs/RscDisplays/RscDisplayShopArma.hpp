class RscDisplayShopArma: RscDisplayDefaultInteraction
{
	idd=38400;
	name="RscDisplayShopArma";
	onUnload="g_shop_active=false;";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			text="Alysia_Client_Texture\Data\shops\background.jpg";

			x=0.314375 * safezoneW + safezoneX;
			y=0.335 * safezoneH + safezoneY;
			w=0.360937 * safezoneW;
			h=0.396 * safezoneH;
		};
		class FRAME: FRAME
		{
			x=0.314375 * safezoneW + safezoneX;
			y=0.302 * safezoneH + safezoneY;
			w=0.360937 * safezoneW;
			h=0.429 * safezoneH;
		};
	};
	
	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			idc=38401;

			x=0.314375 * safezoneW + safezoneX;
			y=0.302 * safezoneH + safezoneY;
			w=0.360937 * safezoneW;
			h=0.033 * safezoneH;
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME
		{
			x=0.283437 * safezoneW + safezoneX;
			y=0.324 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND
		{
			x=0.283437 * safezoneW + safezoneX;
			y=0.324 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE
		{
			x=0.290656 * safezoneW + safezoneX;
			y=0.3361 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON
		{
			x=0.283437 * safezoneW + safezoneX;
			y=0.324 * safezoneH + safezoneY;
		};

		class STOCK_FRAME: RscFrame
		{
			x=0.329844 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.363 * safezoneH;
		};
		class STOCK_HEADER: RscStructuredText
		{
			text="<t align='center'>Stock</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.329844 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.022 * safezoneH;
		};
		class STOCK_LIST: RscListbox
		{
			idc=38402;
			onLBSelChanged="_this call AlysiaClient_fnc_shop_arma_update;";
			rowHeight=0.05;

			x=0.329844 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.341 * safezoneH;
		};

		class SELECT_FRAME: RscFrame
		{
			idc=38403;

			x=0.484531 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.180469 * safezoneW;
			h=0.275 * safezoneH;
		};
		class SELECT_TITLE: RscStructuredText
		{
			idc=38404;
			colorBackground[]={0,0,0,0.8};

			x=0.484531 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.180469 * safezoneW;
			h=0.022 * safezoneH;
		};
		class SELECT_DESC_INFO: RscStructuredText
		{
			idc=38405;
			colorBackground[]={0,0,0,0.6};

			x=0.484531 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.180469 * safezoneW;
			h=0.253 * safezoneH;
		};

		class ACTION_BUY_BACKGROUND: RscText
		{
			idc=38406;
			colorBackground[]={0,0,0,0.6};

			x=0.530937 * safezoneW + safezoneX;
			y=0.643 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BUY_FRAME: RscFrame
		{
			idc=38407;

			x=0.530937 * safezoneW + safezoneX;
			y=0.643 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BUY_TEXT: RscStructuredText
		{
			idc=38408;
			text="<t align='left' size='1.3' color='#FFFFFF'>Acheter</t>";
			colorBackground[]={0,0,0,0};

			x=0.556198 * safezoneW + safezoneX;
			y=0.653074 * safezoneH + safezoneY;
			w=0.0567187 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_BUY_IMAGE: RscPicture
		{
			idc=38409;
			text="Alysia_Client_Texture\Data\global\action_buy.paa";

			x=0.532907 * safezoneW + safezoneX;
			y=0.644934 * safezoneH + safezoneY;
			w=0.0257291 * safezoneW;
			h=0.0466666 * safezoneH;
		};
		class ACTION_BUY_BUTTON: RscButtonSilent
		{
			idc=38410;
			action="[] call AlysiaClient_fnc_shop_arma_buy;";
			onMouseEnter="			ctrlSetText[38409,""Alysia_Client_Texture\Data\global\action_buy_select.paa""];			ctrlShow[38407, false];			((findDisplay 38400) displayCtrl 38406) ctrlSetBackgroundColor [1,1,1,1];			((findDisplay 38400) displayCtrl 38408) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Acheter</t>"";";
			onMouseExit="			ctrlSetText[38409,""Alysia_Client_Texture\Data\global\action_buy.paa""];			if (ctrlVisible 38409) then {				ctrlShow[38407, true];			};			((findDisplay 38400) displayCtrl 38406) ctrlSetBackgroundColor [0,0,0,0.6];			((findDisplay 38400) displayCtrl 38408) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Acheter</t>"";";

			x=0.530937 * safezoneW + safezoneX;
			y=0.643 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
