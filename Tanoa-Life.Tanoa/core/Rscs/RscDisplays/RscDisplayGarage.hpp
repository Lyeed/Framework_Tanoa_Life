class RscDisplayGarageAlysia: RscDisplayDefaultInteraction
{
	idd=2800;
	name="RscDisplayGarageAlysia";	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			text="Alysia_Client_Texture\Data\garage\garage_background.jpg";

			x=0.257656 * safezoneW + safezoneX;
			y=0.247 * safezoneH + safezoneY;
			w=0.495 * safezoneW;
			h=0.451 * safezoneH;
		};
		class FRAME: FRAME
		{
			x=0.257656 * safezoneW + safezoneX;
			y=0.203 * safezoneH + safezoneY;
			w=0.495 * safezoneW;
			h=0.495 * safezoneH;
		};

		class SELECT_ACTIONS_BACKGROUND: RscStructuredText
		{
			idc=2808;
			colorBackground[]={0,0,0,0.6};

			x=0.438125 * safezoneW + safezoneX;
			y=0.302 * safezoneH + safezoneY;
			w=0.103125 * safezoneW;
			h=0.385 * safezoneH;
		};
	};
	
	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			idc=2805;

			x=0.257656 * safezoneW + safezoneX;
			y=0.203 * safezoneH + safezoneY;
			w=0.495 * safezoneW;
			h=0.044 * safezoneH;
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME
		{
			x=0.226719 * safezoneW + safezoneX;
			y=0.258 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND
		{
			x=0.226719 * safezoneW + safezoneX;
			y=0.258 * safezoneH + safezoneY;			
		};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE
		{
			x=0.234041 * safezoneW + safezoneX;
			y=0.26878 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON
		{
			x=0.226719 * safezoneW + safezoneX;
			y=0.258 * safezoneH + safezoneY;
		};

		class TYPE_FRAME: RscFrame
		{
			x=0.29375 * safezoneW + safezoneX;
			y=0.291 * safezoneH + safezoneY;
			w=0.103125 * safezoneW;
			h=0.044 * safezoneH;
		};
		class TYPE_LIST: RscCombo
		{
			idc=2826;
			onLBSelChanged="_this call AlysiaClient_fnc_garageTypeSelect;";
			colorBackground[]={0,0,0,1};

			x=0.298906 * safezoneW + safezoneX;
			y=0.302 * safezoneH + safezoneY;
			w=0.0928125 * safezoneW;
			h=0.022 * safezoneH;
		};

		class VEHICLES_FRAME: RscFrame
		{
			colorText[]={0,0,0,1};

			x=0.267969 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.33 * safezoneH;
		};
		class VEHICLES_HEADER: RscStructuredText
		{
			text="<t align='center'>Vos véhicules</t>";
			colorBackground[]={0,0,0,1};

			x=0.267969 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.022 * safezoneH;
		};
		class VEHICLES_LIST: RscListBox
		{
			idc=2802;
			onLBSelChanged="_this call AlysiaClient_fnc_garageVehicleSelect;";
			colorBackground[]={0,0,0,0.8};
			rowHeight=0.05;

			x=0.267969 * safezoneW + safezoneX;
			y=0.379 * safezoneH + safezoneY;
			w=0.159844 * safezoneW;
			h=0.308 * safezoneH;
		};

		class SELECT_FRAME: RscFrame
		{
			idc=2809;
			colorText[]={0,0,0,1};

			x=0.438125 * safezoneW + safezoneX;
			y=0.258 * safezoneH + safezoneY;
			w=0.304219 * safezoneW;
			h=0.429 * safezoneH;
		};
		class SELECT_TITLE: RscStructuredText
		{
			idc=2806;
			colorBackground[]={0,0,0,1};

			x=0.438125 * safezoneW + safezoneX;
			y=0.258 * safezoneH + safezoneY;
			w=0.304219 * safezoneW;
			h=0.022 * safezoneH;
		};
		class SELECT_INVENTORY_HEADER: RscStructuredText
		{
			idc=2803;
			text="<t align='center'>Coffre</t>";
			colorBackground[]={0,0,0,1};
			
			x=0.54125 * safezoneW + safezoneX;
			y=0.643 * safezoneH + safezoneY;
			w=0.201094 * safezoneW;
			h=0.022 * safezoneH;
		};

		class SELECT_INVENTORY_INFO: RscCombo
		{
			idc=2804;
			colorBackground[]={0,0,0,0.8};

			x=0.541249 * safezoneW + safezoneX;
			y=0.665 * safezoneH + safezoneY;
			w=0.201094 * safezoneW;
			h=0.022 * safezoneH;
		};
		class SELECT_DESC_INFO: RscStructuredText
		{
			idc=2825;
			colorBackground[]={0,0,0,0.8};

			x=0.54125 * safezoneW + safezoneX;
			y=0.28 * safezoneH + safezoneY;
			w=0.201094 * safezoneW;
			h=0.363 * safezoneH;
		};
		class SELECT_ACTIONS_HEADER: RscStructuredText
		{
			idc=2807;
			text="<t align='center'>Actions</t>";
			colorBackground[]={0,0,0,1};
			
			x=0.438125 * safezoneW + safezoneX;
			y=0.28 * safezoneH + safezoneY;
			w=0.103125 * safezoneW;
			h=0.022 * safezoneH;
		};

		class ACTION_IMAGE_1: RscPicture
		{
			idc=2810;

			x=0.448438 * safezoneW + safezoneX;
			y=0.324 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.066 * safezoneH;
		};
		class ACTION_BUTTON_1: RscButtonSilent
		{
			idc=2811;

			x=0.448438 * safezoneW + safezoneX;
			y=0.324 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.066 * safezoneH;
		};

		class ACTION_IMAGE_2: RscPicture
		{
			idc=2812;

			x=0.494844 * safezoneW + safezoneX;
			y=0.324 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.066 * safezoneH;
		};
		class ACTION_BUTTON_2: RscButtonSilent
		{
			idc=2813;
			
			x=0.494844 * safezoneW + safezoneX;
			y=0.324 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.066 * safezoneH;
		};
		
		class ACTION_IMAGE_3: RscPicture
		{
			idc=2814;

			x=0.448438 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.066 * safezoneH;
		};
		class ACTION_BUTTON_3: RscButtonSilent
		{
			idc=2815;
			
			x=0.448438 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.066 * safezoneH;
		};
		
		class ACTION_IMAGE_4: RscPicture
		{
			idc=2816;

			x=0.494844 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.066 * safezoneH;
		};
		class ACTION_BUTTON_4: RscButtonSilent
		{
			idc=2817;

			x=0.494844 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.066 * safezoneH;
		};
		
		class ACTION_IMAGE_5: RscPicture
		{
			idc=2818;

			x=0.448438 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.066 * safezoneH;
		};
		class ACTION_BUTTON_5: RscButtonSilent
		{
			idc=2819;

			x=0.448438 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.066 * safezoneH;
		};
		
		class ACTION_IMAGE_6: RscPicture
		{
			idc=2820;

			x=0.494844 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.066 * safezoneH;
		};
		class ACTION_BUTTON_6: RscButtonSilent
		{
			idc=2821;

			x=0.494844 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.066 * safezoneH;
		};

		class ACTION_IMAGE_7: RscPicture
		{
			idc=2822;

			x=0.448438 * safezoneW + safezoneX;
			y=0.588 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.066 * safezoneH;
		};
		class ACTION_BUTTON_7: RscButtonSilent
		{
			idc=2823;

			x=0.448438 * safezoneW + safezoneX;
			y=0.588 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.066 * safezoneH;
		};
	};
};

class RscDisplayGarageStore: RscDisplayDefaultInteraction
{
	idd=35000;
	name="RscDisplayGarageStore";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			text="Alysia_Client_Texture\Data\vehicle\background.jpg";
		};
		class FRAME: FRAME {};
	};
	
	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			idc=35001;
			text="<t align='center' size='1.5'>Garage</t>";
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME {};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND {};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE {};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON {};

		class VEHICLES_HEADER: RscStructuredText
		{
			idc=35002;
			text = "<t align='center'>Véhicules</t>";
			colorBackground[] = {0,0,0,0.8};
			
			x = 0.381406 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.237187 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class VEHICLES_LIST: RscCombo
		{
			idc=35003;
			onLBSelChanged="[] call AlysiaClient_fnc_garageStoreUpdate;";

			x = 0.381406 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.237187 * safezoneW;
			h = 0.022 * safezoneH;
		};

		class INVENTORY_HEADER: RscStructuredText
		{
			idc=35004;
			text="<t align='center'>Préserver l'inventaire virtuel</t>";
			colorBackground[]={0,0,0,0.8};
			
			x = 0.381406 * safezoneW + safezoneX;
			y = 0.467 * safezoneH + safezoneY;
			w = 0.237187 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class INVENTORY_BACKGROUND: RscText
		{
			idc=35005;
			colorBackground[]={0,0,0,0.6};
			
			x = 0.381406 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.237187 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class INVENTORY_CHECKBOX: RscCheckbox
		{
			idc=35006;
			onCheckedChanged="[] call AlysiaClient_fnc_garageStoreUpdate;";

			x = 0.489687 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.020625 * safezoneW;
			h = 0.033 * safezoneH;
		};

		class PRICE_HEADER: RscStructuredText
		{
			idc=35007;
			text="<t align='center'>Prix du parking</t>";
			colorBackground[]={0,0,0,0.8};
			
			x = 0.381406 * safezoneW + safezoneX;
			y = 0.533 * safezoneH + safezoneY;
			w = 0.237187 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class PRICE_INFO: RscStructuredText
		{
			idc=35008;
			colorBackground[]={0,0,0,0.6};
			
			x = 0.381406 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.237187 * safezoneW;
			h = 0.022 * safezoneH;
		};

		class ACTION_STORE_FRAME: RscFrame
		{
			idc=35010;

			x=0.448438 * safezoneW + safezoneX;
			y=0.621 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_STORE_BACKGROUND: RscStructuredText
		{
			idc=35011;
			colorBackground[]={0,0,0,0.6};

			x=0.448438 * safezoneW + safezoneX;
			y=0.621 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_STORE_TEXT: RscStructuredText
		{
			idc=35012;
			colorBackground[]={0,0,0,0};
			text="<t align='left' size='1.3' color='#FFFFFF'>Ranger</t>";

			x=0.484323 * safezoneW + safezoneX;
			y=0.632741 * safezoneH + safezoneY;
			w=0.0721875 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_STORE_IMAGE: RscPicture
		{
			idc=35013;
			text="Alysia_Client_Texture\Data\garage\store\action_store.paa";

			x=0.451354 * safezoneW + safezoneX;
			y=0.627667 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class ACTION_STORE_BUTTON: RscButtonSilent
		{
			idc=35014;
			action="[] spawn AlysiaClient_fnc_garageStoreAction;";
			onMouseEnter="ctrlSetText[35013,""Alysia_Client_Texture\Data\garage\store\action_store_select.paa""];ctrlShow[35010, false];((findDisplay 35000) displayCtrl 35011) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 35000) displayCtrl 35012) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Ranger</t>"";";
			onMouseExit="ctrlSetText[35013,""Alysia_Client_Texture\Data\garage\store\action_store.paa""];ctrlShow[35010, true];((findDisplay 35000) displayCtrl 35011) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 35000) displayCtrl 35012) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Ranger</t>"";";

			x=0.448438 * safezoneW + safezoneX;
			y=0.621 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
