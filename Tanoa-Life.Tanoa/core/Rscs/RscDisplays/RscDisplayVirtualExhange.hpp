class RscDisplayVirtualExhange: RscDisplayDefaultInteraction
{
	idd=500;
	name="RscDisplayVirtualExhange";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			text="Alysia_Client_Texture\Data\vehicle\background.jpg";

			x=0.324687 * safezoneW + safezoneX;
			y=0.302 * safezoneH + safezoneY;
			w=0.304219 * safezoneW;
			h=0.462 * safezoneH;
		};
		class FRAME: FRAME
		{
			x=0.324687 * safezoneW + safezoneX;
			y=0.302 * safezoneH + safezoneY;
			w=0.304219 * safezoneW;
			h=0.462 * safezoneH;
		};

		class VEHICLE_BAR: RscText
		{
			colorBackground[]={0,0,0,0.8};
			
			x=0.329844 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.011 * safezoneH;
		};
		class PLAYER_BAR: RscText
		{
			colorBackground[]={0,0,0,0.8};
			
			x=0.494844 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.011 * safezoneH;
		};

		class VEHICLE_PROGRESS_BACKGROUND: RscText
		{
			colorBackground[]={0,0,0,0.6};
			
			x=0.329844 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};
		class PLAYER_PROGRESS_BACKGROUND: RscText
		{
			colorBackground[]={0,0,0,0.6};
			
			x=0.494844 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};
	};

	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			idc=501;

			x=0.324687 * safezoneW + safezoneX;
			y=0.302 * safezoneH + safezoneY;
			w=0.304219 * safezoneW;
			h=0.0384445 * safezoneH;
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME
		{
			x=0.29375 * safezoneW + safezoneX;
			y=0.335 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND
		{
			x=0.29375 * safezoneW + safezoneX;
			y=0.335 * safezoneH + safezoneY;			
		};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE
		{
			x=0.301072 * safezoneW + safezoneX;
			y=0.346322 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON
		{
			x=0.29375 * safezoneW + safezoneX;
			y=0.335 * safezoneH + safezoneY;
		};
		class OPTION_BACK_FRAME: OPTION_BACK_FRAME
		{
			x=0.29375 * safezoneW + safezoneX;
			y=0.39 * safezoneH + safezoneY;
		};
		class OPTION_BACK_BACKGROUND: OPTION_BACK_BACKGROUND
		{
			x=0.29375 * safezoneW + safezoneX;
			y=0.39 * safezoneH + safezoneY;			
		};
		class OPTION_BACK_IMAGE: OPTION_BACK_IMAGE
		{
			x=0.300762 * safezoneW + safezoneX;
			y=0.39968 * safezoneH + safezoneY;
		};
		class OPTION_BACK_BUTTON: OPTION_BACK_BUTTON
		{
			x=0.29375 * safezoneW + safezoneX;
			y=0.39 * safezoneH + safezoneY;			
		};

		class VEHICLE_FRAME: RscFrame
		{
			x=0.329844 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.396 * safezoneH;
		};
		class VEHICLE_HEADER: RscStructuredText
		{
			text="<t align='center'>Cible</t>";
			colorBackground[]={0.5450980392156863,0.7647058823529412,0.2901960784313725,1};
			
			x=0.329844 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};
		class VEHICLE_PROGRESSBAR: RscProgress
		{
			idc=517;

			x=0.329844 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};
		class VEHICLE_PROGRESS_INFO: RscStructuredText
		{
			idc=519;
			colorBackground[]={0,0,0,0};
			
			x=0.329844 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};

		class VEHICLE_WEIGHT_ACTUAL_BAR: RscText
		{
			colorBackground[]={0,0,0,0.8};
			
			x=0.391719 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.00515625 * safezoneW;
			h=0.044 * safezoneH;
		};

		class VEHICLE_WEIGHT_ACTUAL_HEADER: RscStructuredText
		{
			text="<t align='center'>ACTUEL</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.329844 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.061875 * safezoneW;
			h=0.022 * safezoneH;
		};
		class VEHICLE_WEIGHT_ACTUAL_INFO: RscStructuredText
		{
			idc=502;
			colorBackground[]={0,0,0,0.6};

			x=0.329844 * safezoneW + safezoneX;
			y=0.39 * safezoneH + safezoneY;
			w=0.061875 * safezoneW;
			h=0.022 * safezoneH;
		};

		class VEHICLE_WEIGHT_MAX_HEADER: RscStructuredText
		{
			text="<t align='center'>MAX</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.396875 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.061875 * safezoneW;
			h=0.022 * safezoneH;
		};
		class VEHICLE_WEIGHT_MAX_INFO: RscStructuredText
		{
			idc=514;
			colorBackground[]={0,0,0,0.6};

			x=0.396875 * safezoneW + safezoneX;
			y=0.39 * safezoneH + safezoneY;
			w=0.061875 * safezoneW;
			h=0.022 * safezoneH;
		};

		class VEHICLE_INVENTORY_HEADER: RscStructuredText
		{
			text="<t align='center'>Inventaire</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.329844 * safezoneW + safezoneX;
			y=0.445 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};
		class VEHICLE_INVENTORY_LIST: RscListbox
		{
			idc=503;
			colorBackground[]={0,0,0,0.6};
			onLBSelChanged="_this call AlysiaClient_fnc_virtual_menu_exhange_update_target;";
			
			x=0.329844 * safezoneW + safezoneX;
			y=0.467 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.275 * safezoneH;
		};

		class PLAYER_FRAME: RscFrame
		{
			x=0.494844 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.396 * safezoneH;
		};
		class PLAYER_HEADER: RscStructuredText
		{
			text="<t align='center'>Vous</t>";
			colorBackground[]={0.0117647058823529,0.6627450980392157,0.9568627450980392,1};
			
			x=0.494844 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};

		class PLAYER_PROGRESSBAR: RscProgress
		{
			idc=518;

			x=0.494844 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};
		class PLAYER_PROGRESS_INFO: RscStructuredText
		{
			idc=520;
			colorBackground[]={0,0,0,0};
			
			x=0.494844 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};

		class PLAYER_WEIGHT_ACTUAL_BAR: RscText
		{
			colorBackground[]={0,0,0,0.8};
			
			x=0.556719 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.00515625 * safezoneW;
			h=0.044 * safezoneH;
		};

		class PLAYER_WEIGHT_ACTUAL_HEADER: RscStructuredText
		{
			text="<t align='center'>ACTUEL</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.494844 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.061875 * safezoneW;
			h=0.022 * safezoneH;
		};
		class PLAYER_WEIGHT_ACTUAL_INFO: RscStructuredText
		{
			idc=504;
			colorBackground[]={0,0,0,0.6};
			
			x=0.494844 * safezoneW + safezoneX;
			y=0.39 * safezoneH + safezoneY;
			w=0.061875 * safezoneW;
			h=0.022 * safezoneH;
		};

		class PLAYER_WEIGHT_MAX_HEADER: RscStructuredText
		{
			text="<t align='center'>MAX</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.561875 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.061875 * safezoneW;
			h=0.022 * safezoneH;
		};
		class PLAYER_WEIGHT_MAX_INFO: RscStructuredText
		{
			idc=515;
			colorBackground[]={0,0,0,0.6};
			
			x=0.561875 * safezoneW + safezoneX;
			y=0.39 * safezoneH + safezoneY;
			w=0.061875 * safezoneW;
			h=0.022 * safezoneH;
		};

		class PLAYER_INVENTORY_HEADER: RscStructuredText
		{
			text="<t align='center'>Inventaire</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.494844 * safezoneW + safezoneX;
			y=0.445 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};
		class PLAYER_INVENTORY_LIST: RscListbox
		{
			idc=505;
			onLBSelChanged="_this call AlysiaClient_fnc_virtual_menu_exhange_update_player;";
			
			x=0.494844 * safezoneW + safezoneX;
			y=0.467 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.275 * safezoneH;
		};

		class ACTION_GET_SINGLE_IMAGE: RscPicture
		{
			idc=506;
			text="Alysia_Client_Texture\Data\vehicle\trunk\right_arrow_single.paa";

			x=0.463906 * safezoneW + safezoneX;
			y=0.478 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class ACTION_GET_SINGLE_BUTTON: RscButtonSilent
		{
			idc=507;
			action="[false] call AlysiaClient_fnc_virtual_menu_exhange_take;";
			tooltip="Récupérer la quantité minimum";
			onMouseEnter="ctrlSetText[506,""Alysia_Client_Texture\Data\vehicle\trunk\right_arrow_single_select.paa""];";
			onMouseExit="ctrlSetText[506,""Alysia_Client_Texture\Data\vehicle\trunk\right_arrow_single.paa""];";

			x=0.463906 * safezoneW + safezoneX;
			y=0.478 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};

		class ACTION_GET_DOUBLE_IMAGE: RscPicture
		{
			idc=508;
			text="Alysia_Client_Texture\Data\vehicle\trunk\right_arrow_double.paa";

			x=0.463906 * safezoneW + safezoneX;
			y=0.533 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class ACTION_GET_DOUBLE_BUTTON: RscButtonSilent
		{
			idc=509;
			action="[true] call AlysiaClient_fnc_virtual_menu_exhange_take;";
			tooltip="Récupérer la quantité maximum";
			onMouseEnter="ctrlSetText[508,""Alysia_Client_Texture\Data\vehicle\trunk\right_arrow_double_select.paa""];";
			onMouseExit="ctrlSetText[508,""Alysia_Client_Texture\Data\vehicle\trunk\right_arrow_double.paa""];";

			x=0.463906 * safezoneW + safezoneX;
			y=0.533 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};

		class ACTION_PUT_SINGLE_IMAGE: RscPicture
		{
			idc=510;
			text="Alysia_Client_Texture\Data\vehicle\trunk\left_arrow_single.paa";

			x=0.463906 * safezoneW + safezoneX;
			y=0.599 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class ACTION_PUT_SINGLE_BUTTON: RscButtonSilent
		{
			idc=511;
			action="[false] call AlysiaClient_fnc_virtual_menu_exhange_store;";
			tooltip="Déposer la quantité minimum";
			onMouseEnter="ctrlSetText[510,""Alysia_Client_Texture\Data\vehicle\trunk\left_arrow_single_select.paa""];";
			onMouseExit="ctrlSetText[510,""Alysia_Client_Texture\Data\vehicle\trunk\left_arrow_single.paa""];";

			x=0.463906 * safezoneW + safezoneX;
			y=0.599 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};

		class ACTION_PUT_DOUBLE_IMAGE: RscPicture
		{
			idc=512;
			text="Alysia_Client_Texture\Data\vehicle\trunk\left_arrow_double.paa";

			x=0.463906 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class ACTION_PUT_DOUBLE_BUTTON: RscButtonSilent
		{
			idc=513;
			action="[true] call AlysiaClient_fnc_virtual_menu_exhange_store;";
			tooltip="Déposer la quantité maximum";
			onMouseEnter="ctrlSetText[512,""Alysia_Client_Texture\Data\vehicle\trunk\left_arrow_double_select.paa""];";
			onMouseExit="ctrlSetText[512,""Alysia_Client_Texture\Data\vehicle\trunk\left_arrow_double.paa""];";

			x=0.463906 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
	};
};
