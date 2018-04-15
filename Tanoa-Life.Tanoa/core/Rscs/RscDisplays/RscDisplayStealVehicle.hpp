class RscDisplayStealVehicle: RscDisplayDefaultInteraction
{
	idd=99000;
	name="RscDisplayStealVehicle";
	
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
			text="<t size='1.5' align='center'>Receleur de véhicules</t>";
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
			text="<t align='center'>Véhicules à portée</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.438125 * safezoneW + safezoneX;
			y=0.401 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};
		class STOCK_LIST: RscCombo
		{
			idc=99001;
			onLBSelChanged="_this call AlysiaClient_fnc_steal_vehicle_update;";
			colorBackground[]={0, 0, 0, 1};
			
			x=0.438125 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};

		class SELECT_FRAME: RscFrame
		{
			idc=99002;

			x=0.453594 * safezoneW + safezoneX;
			y=0.511 * safezoneH + safezoneY;
			w=0.0979687 * safezoneW;
			h=0.044 * safezoneH;
		};
		class SELECT_PRICE_HEADER: RscStructuredText
		{
			idc=99003;
			text="<t align='center'>Prix de vente</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.453594 * safezoneW + safezoneX;
			y=0.511 * safezoneH + safezoneY;
			w=0.0979687 * safezoneW;
			h=0.022 * safezoneH;
		};
		class SELECT_PRICE_INFO: RscStructuredText
		{
			idc=99004;
			colorBackground[]={0,0,0,0.6};
			
			x=0.453594 * safezoneW + safezoneX;
			y=0.533 * safezoneH + safezoneY;
			w=0.0979687 * safezoneW;
			h=0.022 * safezoneH;
		};

		class ACTION_BACKGROUND: RscText
		{
			idc=99005;
			colorBackground[]={0,0,0,0.6};
			
			x=0.463906 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_FRAME: RscFrame
		{
			idc=99006;
			colorText[]={0,0,0,0.8};
			
			x=0.463906 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_TEXT: RscStructuredText
		{
			idc=99007;
			text="<t align='left' size='1.3' color='#FFFFFF'>Vendre</t>";
			
			x=0.489687 * safezoneW + safezoneX;
			y=0.588 * safezoneH + safezoneY;
			w=0.0567187 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_IMAGE: RscPicture
		{
			idc=99008;
			text="Alysia_Client_Texture\Data\global\action_buy.paa";
			
			x=0.4665 * safezoneW + safezoneX;
			y=0.583465 * safezoneH + safezoneY;
			w=0.02625 * safezoneW;
			h=0.0429629 * safezoneH;
		};
		class ACTION_BUTTON: RscButtonSilent
		{
			idc=99009;
			action="[] spawn AlysiaClient_fnc_steal_vehicle_action;";
			onMouseEnter="ctrlSetText[99008,""Alysia_Client_Texture\Data\global\action_buy_select.paa""];ctrlShow[99006, false];((findDisplay 99000) displayCtrl 99005) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 99000) displayCtrl 99007) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Vendre</t>"";";
			onMouseExit="ctrlSetText[99008,""Alysia_Client_Texture\Data\global\action_buy.paa""];if (ctrlVisible 99008) then {ctrlShow[99006, true];};((findDisplay 99000) displayCtrl 99005) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 99000) displayCtrl 99007) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Vendre</t>"";";

			x=0.463906 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
