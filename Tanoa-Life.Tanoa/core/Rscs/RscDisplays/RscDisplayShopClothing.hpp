class RscDisplayShopClothing: RscDisplayDefaultInteraction
{
	idd=3100;
	name="RscDisplayShopClothing";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			text="Alysia_Client_Texture\Data\shops\background.jpg";

			x=0.0978125 * safezoneW + safezoneX;
			y=0.313 * safezoneH + safezoneY;
			w=0.201094 * safezoneW;
			h=0.528 * safezoneH;
		};
		class FRAME: FRAME
		{
			x=0.0978125 * safezoneW + safezoneX;
			y=0.28 * safezoneH + safezoneY;
			w=0.201094 * safezoneW;
			h=0.561 * safezoneH;
		};
	};
	
	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			idc=3101;

			x=0.0978125 * safezoneW + safezoneX;
			y=0.28 * safezoneH + safezoneY;
			w=0.201094 * safezoneW;
			h=0.033 * safezoneH;
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME
		{
			x=0.066875 * safezoneW + safezoneX;
			y=0.302 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND
		{
			x=0.066875 * safezoneW + safezoneX;
			y=0.302 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE
		{
			x=0.0739894 * safezoneW + safezoneX;
			y=0.312952 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON
		{
			x=0.066875 * safezoneW + safezoneX;
			y=0.302 * safezoneH + safezoneY;
		};

		class TYPE_FRAME: RscFrame
		{
			x=0.12875 * safezoneW + safezoneX;
			y=0.324 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.044 * safezoneH;
		};
		class TYPE_HEADER: RscStructuredText
		{
			text="<t align='center'>Type</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.12875 * safezoneW + safezoneX;
			y=0.324 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.022 * safezoneH;
		};
		class TYPE_LIST: RscCombo
		{
			idc=3102;
			onLBSelChanged="_this call AlysiaClient_fnc_shop_clothing_update_list;";
			colorBackground[]={0,0,0,1};

			x=0.12875 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.022 * safezoneH;
		};

		class STOCK_FRAME: RscFrame
		{
			x=0.102969 * safezoneW + safezoneX;
			y=0.379 * safezoneH + safezoneY;
			w=0.190781 * safezoneW;
			h=0.275 * safezoneH;
		};
		class STOCK_HEADER: RscStructuredText
		{
			text="<t align='center'>Stock</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.102969 * safezoneW + safezoneX;
			y=0.379 * safezoneH + safezoneY;
			w=0.190781 * safezoneW;
			h=0.022 * safezoneH;
		};
		class STOCK_LIST: RscListbox
		{
			idc=3103;
			onLBSelChanged="_this call AlysiaClient_fnc_shop_clothing_update_clothe;";
			rowHeight=0.05;

			x=0.102969 * safezoneW + safezoneX;
			y=0.401 * safezoneH + safezoneY;
			w=0.190781 * safezoneW;
			h=0.253 * safezoneH;
		};

		class SELECT_FRAME: RscFrame
		{
			idc=3106;
			
			x=0.118437 * safezoneW + safezoneX;
			y=0.665 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.099 * safezoneH;
		};
		class SELECT_HEADER: RscStructuredText
		{
			idc=3105;
			colorBackground[]={0,0,0,0.8};

			x=0.118437 * safezoneW + safezoneX;
			y=0.665 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.022 * safezoneH;
		};
		class SELECT_INFO: RscStructuredText
		{
			idc=3104;
			colorBackground[]={0,0,0,0.6};

			x=0.118437 * safezoneW + safezoneX;
			y=0.687 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.077 * safezoneH;
		};

		class ACTION_BUY_BACKGROUND: RscText
		{
			idc=3108;
			colorBackground[]={0,0,0,0.6};

			x=0.154531 * safezoneW + safezoneX;
			y=0.775 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BUY_FRAME: RscFrame
		{
			idc=3109;

			x=0.154531 * safezoneW + safezoneX;
			y=0.775 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BUY_TEXT: RscStructuredText
		{
			idc=3110;
			text="<t align='left' size='1.3' color='#FFFFFF'>Acheter</t>";

			x=0.18026 * safezoneW + safezoneX;
			y=0.785259 * safezoneH + safezoneY;
			w=0.0567187 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_BUY_IMAGE: RscPicture
		{
			idc=3111;
			text="Alysia_Client_Texture\Data\global\action_buy.paa";

			x=0.157578 * safezoneW + safezoneX;
			y=0.781611 * safezoneH + safezoneY;
			w=0.02625 * safezoneW;
			h=0.0429629 * safezoneH;
		};
		class ACTION_BUY_BUTTON: RscButtonSilent
		{
			idc=3112;
			action="[] call AlysiaClient_fnc_shop_clothing_buy;";
			onMouseEnter="ctrlSetText[3111,""Alysia_Client_Texture\Data\global\action_buy_select.paa""];ctrlShow[3109, false];((findDisplay 3100) displayCtrl 3108) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 3100) displayCtrl 3110) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Acheter</t>"";";
			onMouseExit="ctrlSetText[3111,""Alysia_Client_Texture\Data\global\action_buy.paa""];if (ctrlVisible 3111) then {ctrlShow[3109, true];};((findDisplay 3100) displayCtrl 3108) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 3100) displayCtrl 3110) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Acheter</t>"";";

			x=0.154531 * safezoneW + safezoneX;
			y=0.775 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
