class RscDisplayShopVehicles: RscDisplayDefaultInteraction
{
	idd=2300;
	name="RscDisplayShopVehicles";
	
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
			idc=2301;

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

		class VEHICLES_FRAME: RscFrame
		{
			x=0.329844 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.308 * safezoneH;
		};
		class VEHICLES_HEADER: RscStructuredText
		{
			text="<t align='center'>Véhicules</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.329844 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.022 * safezoneH;
		};
		class VEHICLES_LIST: RscListbox
		{
			idc=2302;
			onLBSelChanged="_this call AlysiaClient_fnc_shop_vehicles_update;";
			rowHeight=0.05;

			x=0.329844 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.286 * safezoneH;
		};

		class VEHICLES_COLOR_HEADER: RscStructuredText
		{
			idc=2321;
			colorBackground[]={0,0,0,0.8};
			text="<t align='center'>Couleurs</t>";

			x=0.329844 * safezoneW + safezoneX;
			y=0.665 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.022 * safezoneH;
		};
		class VEHICLES_COLOR_LIST: RscCombo
		{
			idc=2303;
			colorBackground[]={0, 0, 0, 1};

			x=0.329844 * safezoneW + safezoneX;
			y=0.687 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.022 * safezoneH;
		};

		class SELECT_FRAME: RscFrame
		{
			idc=2304;

			x=0.484531 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.180469 * safezoneW;
			h=0.308 * safezoneH;
		};
		class SELECT_TITLE: RscStructuredText
		{
			idc=2306;
			colorBackground[]={0,0,0,0.8};

			x=0.484531 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.180469 * safezoneW;
			h=0.022 * safezoneH;
		};
		class SELECT_DESC_INFO: RscStructuredText
		{
			idc=2308;
			colorBackground[]={0,0,0,0.6};

			x=0.484531 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.180469 * safezoneW;
			h=0.286 * safezoneH;
		};

		class ACTION_BUY_BACKGROUND: RscText
		{
			idc=2311;
			colorBackground[]={0,0,0,0.6};

			x=0.484531 * safezoneW + safezoneX;
			y=0.665 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BUY_FRAME: RscFrame
		{
			idc=2312;

			x=0.484531 * safezoneW + safezoneX;
			y=0.665 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BUY_TEXT: RscStructuredText
		{
			idc=2313;
			text="<t align='left' size='1.3' color='#FFFFFF'>Acheter</t>";
			colorBackground[]={0,0,0,0};

			x=0.515469 * safezoneW + safezoneX;
			y=0.676 * safezoneH + safezoneY;
			w=0.0567187 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_BUY_IMAGE: RscPicture
		{
			idc=2314;
			text="Alysia_Client_Texture\Data\global\action_buy.paa";

			x=0.489687 * safezoneW + safezoneX;
			y=0.676 * safezoneH + safezoneY;
			w=0.020625 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_BUY_BUTTON: RscButtonSilent
		{
			idc=2315;
			action="[] spawn AlysiaClient_fnc_shop_vehicles_buy;";
			onMouseEnter="ctrlSetText[2314,""Alysia_Client_Texture\Data\global\action_buy_select.paa""];ctrlShow[2312, false];((findDisplay 2300) displayCtrl 2311) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 2300) displayCtrl 2313) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Acheter</t>"";";
			onMouseExit="ctrlSetText[2314,""Alysia_Client_Texture\Data\global\action_buy.paa""];if (ctrlVisible 2314) then {ctrlShow[2312, true];};((findDisplay 2300) displayCtrl 2311) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 2300) displayCtrl 2313) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Acheter</t>"";";

			x=0.484531 * safezoneW + safezoneX;
			y=0.665 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.055 * safezoneH;
		};

		class ACTION_PREVIEW_BACKGROUND: RscText
		{
			idc=2316;
			colorBackground[]={0,0,0,0.6};

			x=0.577344 * safezoneW + safezoneX;
			y=0.665 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_PREVIEW_FRAME: RscFrame
		{
			idc=2317;

			x=0.577344 * safezoneW + safezoneX;
			y=0.665 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_PREVIEW_TEXT: RscStructuredText
		{
			idc=2318;
			text="<t align='left' size='1.3' color='#FFFFFF'>Visuel</t>";

			x=0.608281 * safezoneW + safezoneX;
			y=0.676 * safezoneH + safezoneY;
			w=0.0567187 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_PREVIEW_IMAGE: RscPicture
		{
			idc=2319;
			text="Alysia_Client_Texture\Data\global\action_preview.paa";

			x=0.5825 * safezoneW + safezoneX;
			y=0.676 * safezoneH + safezoneY;
			w=0.020625 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_PREVIEW_BUTTON: RscButtonSilent
		{
			idc=2320;
			action="[] spawn AlysiaClient_fnc_shop_vehicles_preview;";
			onMouseEnter="ctrlSetText[2319,""Alysia_Client_Texture\Data\global\action_preview_select.paa""];ctrlShow[2317, false];((findDisplay 2300) displayCtrl 2316) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 2300) displayCtrl 2318) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Visuel</t>"";";
			onMouseExit="ctrlSetText[2319,""Alysia_Client_Texture\Data\global\action_preview.paa""];if (ctrlVisible 2319) then {ctrlShow[2317, true];};((findDisplay 2300) displayCtrl 2316) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 2300) displayCtrl 2318) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Visuel</t>"";";

			x=0.577344 * safezoneW + safezoneX;
			y=0.665 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
