class RscDisplayVehicleRepair: RscDisplayDefaultInteraction
{
	idd=2900;
	name="RscDisplayVehicleRepair";
	
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
			text="<t size='1.5' align='center'>Réparation</t>";
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME {};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND {};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE {};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON {};
		class OPTION_BACK_FRAME: OPTION_BACK_FRAME {};
		class OPTION_BACK_BACKGROUND: OPTION_BACK_BACKGROUND {};
		class OPTION_BACK_IMAGE: OPTION_BACK_IMAGE {};
		class OPTION_BACK_BUTTON: OPTION_BACK_BUTTON {};

		class REPAIR_FRAME: RscFrame
		{
			x=0.381406 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.22 * safezoneH;
		};
		class REPAIR_HEADER: RscStructuredText
		{
			text="<t align='center'>Pièces</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.381406 * safezoneW + safezoneX;
			y=0.401 * safezoneH + safezoneY;
			w=0.04125 * safezoneW;
			h=0.022 * safezoneH;
		};
		class REPAIR_LIST: RscListBox
		{
			idc=2907;
			onLBSelChanged="_this call AlysiaClient_fnc_vehicleMenu_repair_update;";

			x=0.381406 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.22 * safezoneH;
		};

		class REPAIR_CHECKBOX: RscCheckBox
		{
			idc=2908;
			onCheckedChanged="[] call AlysiaClient_fnc_vehicleMenu_repair_fill;";

			x=0.38285 * safezoneW + safezoneX;
			y=0.64432 * safezoneH + safezoneY;
			w=0.020625 * safezoneW;
			h=0.033 * safezoneH;
		};
		class REPAIR_CHECKBOX_INFO: RscText
		{
			text="Afficher seulement les pièces endommagées";

			x=0.401 * safezoneW + safezoneX;
			y=0.65224 * safezoneH + safezoneY;
			w=0.194947 * safezoneW;
			h=0.0174815 * safezoneH;
		};

		class INFO_FRAME: RscFrame
		{
			idc=2917;

			x=0.5 * safezoneW + safezoneX;
			y=0.445 * safezoneH + safezoneY;
			w=0.113437 * safezoneW;
			h=0.11 * safezoneH;
		};
		class INFO_HEADER: RscStructuredText
		{
			idc=2916;
			colorBackground[]={0,0,0,0.8};

			x=0.5 * safezoneW + safezoneX;
			y=0.445 * safezoneH + safezoneY;
			w=0.113437 * safezoneW;
			h=0.022 * safezoneH;
		};
		class INFO_TEXT: RscStructuredText
		{
			idc=2909;
			colorBackground[]={0,0,0,0.6};

			x=0.5 * safezoneW + safezoneX;
			y=0.467 * safezoneH + safezoneY;
			w=0.113437 * safezoneW;
			h=0.088 * safezoneH;
		};

		class GLOBAL_FRAME: RscFrame
		{
			x=0.5 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.113437 * safezoneW;
			h=0.022 * safezoneH;
		};
		class GLOBAL_HEADER: RscStructuredText
		{
			text="<t align='center'>Etat général</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.5 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.0670311 * safezoneW;
			h=0.022 * safezoneH;
		};
		class GLOBAL_INFO: RscStructuredText
		{
			idc=2910;
			colorBackground[]={0,0,0,0.6};

			x=0.567031 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.0464063 * safezoneW;
			h=0.022 * safezoneH;
		};

		class ACTION_REPAIR_FRAME: RscFrame
		{
			idc=2911;

			x=0.505156 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_REPAIR_BACKGROUND: RscStructuredText
		{
			idc=2912;
			colorBackground[]={0,0,0,0.6};

			x=0.505156 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_REPAIR_IMAGE: RscPicture
		{
			idc=2913;
			text="Alysia_Client_Texture\Data\vehicle\action_repair.paa";

			x=0.508879 * safezoneW + safezoneX;
			y=0.582387 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class ACTION_REPAIR_TEXT: RscStructuredText
		{
			idc=2914;
			text="<t align='left' size='1.3'>Réparer</t>";

			x=0.536094 * safezoneW + safezoneX;
			y=0.588 * safezoneH + safezoneY;
			w=0.0721875 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_REPAIR_BUTTON: RscButtonSilent
		{
			idc=2915;
			action="[] spawn AlysiaClient_fnc_vehicleMenu_repair_action";
			onMouseEnter="ctrlSetText[2913,""Alysia_Client_Texture\Data\vehicle\action_repair_select.paa""];ctrlShow[2911, false];((findDisplay 2900) displayCtrl 2912) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 2900) displayCtrl 2914) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Réparer</t>"";";
			onMouseExit="ctrlSetText[2913,""Alysia_Client_Texture\Data\vehicle\action_repair.paa""];ctrlShow[2911, true];((findDisplay 2900) displayCtrl 2912) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 2900) displayCtrl 2914) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Réparer</t>"";";

			x=0.505156 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
