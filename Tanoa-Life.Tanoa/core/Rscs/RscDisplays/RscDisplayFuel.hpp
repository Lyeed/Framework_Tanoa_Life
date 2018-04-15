class RscDisplayFuelStation: RscDisplayDefaultInteraction
{	
	idd=16000;
	name="RscDisplayFuelStation";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			text="Alysia_Client_Texture\Data\vehicle\background.jpg";

			x=0.37625 * safezoneW + safezoneX;
			y=0.39 * safezoneH + safezoneY;
			w=0.2475 * safezoneW;
			h=0.165 * safezoneH;
		};
		class FRAME: FRAME
		{
			x=0.37625 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=0.248542 * safezoneW;
			h=0.198 * safezoneH;
		};
	};

	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			text="<t size='1.5' align='center'>Pompe à essence</t>";
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME {};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND {};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE {};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON {};

		class FUEL_HEADER: RscStructuredText
		{
			text="Choix du carburant";
			colorBackground[]={0,0,0,0.8};

			x=0.391718 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.022 * safezoneH;
		};
		class FUEL_LIST: RscCombo
		{
			idc=16004;
			onLBSelChanged="_this call AlysiaClient_fnc_fuelStation_refuel_update;";
			colorBackground[]={0,0,0,1};

			x=0.391718 * safezoneW + safezoneX;
			y=0.434 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.022 * safezoneH;
		};

		class PRICE_FRAME: RscFrame
		{
			x=0.546406 * safezoneW + safezoneX;
			y=0.401 * safezoneH + safezoneY;
			w=0.0670312 * safezoneW;
			h=0.066 * safezoneH;
		};
		class PRICE_TEXT: RscStructuredText
		{
			text="Prix/L";
			colorBackground[]={0,0,0,0.8};

			x=0.546406 * safezoneW + safezoneX;
			y=0.401 * safezoneH + safezoneY;
			w=0.0670312 * safezoneW;
			h=0.022 * safezoneH;
		};
		class PRICE_INFO: RscStructuredText
		{
			idc=16008;
			colorBackground[]={0,0,0,0.6};

			x=0.546406 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.0670312 * safezoneW;
			h=0.044 * safezoneH;
		};

		class STOCK_FRAME: RscFrame
		{
			x=0.546406 * safezoneW + safezoneX;
			y=0.478 * safezoneH + safezoneY;
			w=0.0670312 * safezoneW;
			h=0.066 * safezoneH;
		};
		class STOCK_HEADER: RscStructuredText
		{
			text="Disponibilité";
			colorBackground[]={0,0,0,0.8};

			x=0.546406 * safezoneW + safezoneX;
			y=0.478 * safezoneH + safezoneY;
			w=0.0670312 * safezoneW;
			h=0.022 * safezoneH;
		};
		class STOCK_INFO: RscStructuredText
		{
			idc=16011;
			colorBackground[]={0,0,0,0.6};

			x=0.546406 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
			w=0.0670312 * safezoneW;
			h=0.044 * safezoneH;
		};

		class VALIDATE_BACKGROUND: RscStructuredText
		{
			idc=16013;
			colorBackground[]={0,0,0,0.6};

			x=0.407187 * safezoneW + safezoneX;
			y=0.478 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class VALIDATE_FRAME: RscFrame
		{
			idc=16014;

			x=0.407187 * safezoneW + safezoneX;
			y=0.478 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class VALIDATE_TEXT: RscStructuredText
		{
			idc=16016;
			text="<t align='center' size='1.5'>Remplir</t>";

			x=0.438125 * safezoneW + safezoneX;
			y=0.489 * safezoneH + safezoneY;
			w=0.0567187 * safezoneW;
			h=0.033 * safezoneH;
		};
		class VALIDATE_IMAGE: RscPicture
		{
			idc=16015;
			text="Alysia_Client_Texture\Data\global\validate.paa";

			x=0.413385 * safezoneW + safezoneX;
			y=0.486 * safezoneH + safezoneY;
			w=0.0216146 * safezoneW;
			h=0.0375186 * safezoneH;
		};
		class VALIDATE_BUTTON: RscButtonSilent
		{
			idc=16017;
			action="[] spawn AlysiaClient_fnc_fuelStation_refuel_action_vehicle;";
			onMouseEnter="ctrlShow[16014, false];ctrlSetText[16015, ""Alysia_Client_Texture\Data\global\validate_select.paa""];((findDisplay 16000) displayCtrl 16013) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 16000) displayCtrl 16016) ctrlSetStructuredText parseText ""<t align='center' size='1.5' color='#000000'>Remplir</t>"";";
			onMouseExit="ctrlShow[16014, true];ctrlSetText[16015, ""Alysia_Client_Texture\Data\global\validate.paa""];((findDisplay 16000) displayCtrl 16013) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 16000) displayCtrl 16016) ctrlSetStructuredText parseText ""<t align='center' size='1.5' color='#FFFFFF'>Remplir</t>"";";

			x=0.407187 * safezoneW + safezoneX;
			y=0.478 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};

class RscDisplayFuelRefuel: RscDisplayDefaultInteraction
{	
	idd=17000;
	name="RscDisplayFuelRefuel";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			text="Alysia_Client_Texture\Data\vehicle\background.jpg";

			x=0.37625 * safezoneW + safezoneX;
			y=0.39 * safezoneH + safezoneY;
			w=0.2475 * safezoneW;
			h=0.11 * safezoneH;
		};
		class FRAME: FRAME
		{
			x=0.37625 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=0.2475 * safezoneW;
			h=0.143 * safezoneH;
		};
	};
	
	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			text="<t size='1.5' align='center'>Pompe à essence</t>";
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME
		{
			x=0.345312 * safezoneW + safezoneX;
			y=0.379 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND
		{
			x=0.345312 * safezoneW + safezoneX;
			y=0.379 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE
		{
			x=0.352031 * safezoneW + safezoneX;
			y=0.389074 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON
		{
			x=0.345312 * safezoneW + safezoneX;
			y=0.379 * safezoneH + safezoneY;
		};

		class PRICE_FRAME: RscFrame
		{
			x=0.54125 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.061875 * safezoneW;
			h=0.066 * safezoneH;
		};
		class PRICE_TEXT: RscStructuredText
		{
			text="<t align='center'>Montant Total</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.54125 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.061875 * safezoneW;
			h=0.022 * safezoneH;
		};
		class PRICE_INFO: RscStructuredText
		{
			idc=17008;
			colorBackground[]={0,0,0,0.6};

			x=0.54125 * safezoneW + safezoneX;
			y=0.434 * safezoneH + safezoneY;
			w=0.061875 * safezoneW;
			h=0.044 * safezoneH;
		};

		class FUEL_HEADER: RscStructuredText
		{
			idc=17006;
			colorBackground[]={0,0,0,0.8};

			x=0.396875 * safezoneW + safezoneX;
			y=0.401 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};
		class STOCK_HEADER: RscStructuredText
		{
			text="Disponibilité";
			colorBackground[]={0,0,0,0.8};

			x=0.396875 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.061875 * safezoneW;
			h=0.022 * safezoneH;
		};
		class STOCK_INFO: RscStructuredText
		{
			idc=17010;
			colorBackground[]={0,0,0,0.6};

			x=0.45875 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.0670312 * safezoneW;
			h=0.022 * safezoneH;
		};
		
		class PROGRESS_BAR: RscProgress
		{
			idc=17013;

			x=0.396875 * safezoneW + safezoneX;
			y=0.467 * safezoneH + safezoneY;
			w=0.130989 * safezoneW;
			h=0.022 * safezoneH;
		};
		class PROGRESS_STATE: RscStructuredText
		{
			idc=17014;

			x=0.396875 * safezoneW + safezoneX;
			y=0.467 * safezoneH + safezoneY;
			w=0.130989 * safezoneW;
			h=0.022 * safezoneH;
		};
	};
};
