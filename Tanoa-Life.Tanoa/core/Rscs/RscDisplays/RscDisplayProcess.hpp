class RscDisplayProcess: RscDisplayDefaultInteraction
{
	idd=53000;
	name="RscDisplayProcess";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			text="Alysia_Client_Texture\Data\process\background.jpg";

			x=0.340156 * safezoneW + safezoneX;
			y=0.313 * safezoneH + safezoneY;
			w=0.319688 * safezoneW;
			h=0.352 * safezoneH;
		};
		class FRAME: FRAME
		{
			x=0.340156 * safezoneW + safezoneX;
			y=0.28 * safezoneH + safezoneY;
			w=0.319687 * safezoneW;
			h=0.385 * safezoneH;
		};
	};

	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			idc=53001;

			x=0.340156 * safezoneW + safezoneX;
			y=0.28 * safezoneH + safezoneY;
			w=0.319688 * safezoneW;
			h=0.033 * safezoneH;		
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME
		{
			x=0.309219 * safezoneW + safezoneX;
			y=0.302 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND
		{
			x=0.309219 * safezoneW + safezoneX;
			y=0.302 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE
		{
			x=0.316458 * safezoneW + safezoneX;
			y=0.314296 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON
		{
			x=0.309219 * safezoneW + safezoneX;
			y=0.302 * safezoneH + safezoneY;
		};

		class REQUIERE_FRAME: RscFrame
		{
			idc=53024;

			x=0.345312 * safezoneW + safezoneX;
			y=0.445 * safezoneH + safezoneY;
			w=0.144375 * safezoneW;
			h=0.209 * safezoneH;
		};
		class REQUIERE_LIST: RscListbox
		{
			idc=53005;

			x=0.345312 * safezoneW + safezoneX;
			y=0.445 * safezoneH + safezoneY;
			w=0.144375 * safezoneW;
			h=0.209 * safezoneH;
		};

		class RECEIVE_FRAME: RscFrame
		{
			idc=53016;

			x=0.510312 * safezoneW + safezoneX;
			y=0.445 * safezoneH + safezoneY;
			w=0.144375 * safezoneW;
			h=0.209 * safezoneH;
		};
		class RECEIVE_LIST: RscListbox
		{
			idc=53014;

			x=0.510312 * safezoneW + safezoneX;
			y=0.445 * safezoneH + safezoneY;
			w=0.144375 * safezoneW;
			h=0.209 * safezoneH;
		};

		class AMOUNT_FRAME: RscFrame
		{
			idc=53017;

			x=0.345312 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.0928125 * safezoneW;
			h=0.066 * safezoneH;
		};
		class AMOUNT_HEADER: RscStructuredText
		{
			idc=53018;
			text="<t align='center'>Montant</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.350469 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.022 * safezoneH;
		};
		class AMOUNT_EDIT: RscEdit
		{
			idc=53006;

			x=0.350469 * safezoneW + safezoneX;
			y=0.379 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.022 * safezoneH;
		};

		class WEIGHT_HEADER: RscStructuredText
		{
			idc=53019;
			text="<img image='Alysia_Client_Texture\Data\process\weight.paa'/> Poids";
			colorBackground[]={0,0,0,0.8};
			
			x=0.448438 * safezoneW + safezoneX;
			y=0.379 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.022 * safezoneH;
		};
		class WEIGHT_INFO: RscStructuredText
		{
			idc=53013;
			colorBackground[]={0,0,0,0.6};
			
			x=0.448438 * safezoneW + safezoneX;
			y=0.401 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.022 * safezoneH;
		};
		class WEIGHT_FRAME: RscFrame
		{
			idc=53020;

			x=0.448438 * safezoneW + safezoneX;
			y=0.379 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.044 * safezoneH;
		};

		class TIMER_FRAME: RscFrame
		{
			idc=53021;

			x=0.448438 * safezoneW + safezoneX;
			y=0.324 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.044 * safezoneH;
		};
		class TIME_HEADER: RscStructuredText
		{
			idc=53022;
			text="<img image='Alysia_Client_Texture\Data\process\timer.paa'/> Temps approximatif";
			colorBackground[]={0,0,0,0.8};
			
			x=0.448438 * safezoneW + safezoneX;
			y=0.324 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.022 * safezoneH;
		};
		class TIME_INFO: RscStructuredText
		{
			idc=53007;
			colorBackground[]={0,0,0,0.6};
			
			x=0.448438 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.022 * safezoneH;
		};

		class ACTION_FRAME: RscFrame
		{
			idc=53008;

			x=0.561875 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.0928125 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BACKGROUND: RscStructuredText
		{
			idc=53009;
			colorBackground[]={0,0,0,0.6};

			x=0.561875 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.0928125 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_TEXT: RscStructuredText
		{
			idc=53010;
			text="<t align='left' size='1.3' color='#FFFFFF'>Traiter</t>";

			x=0.593021 * safezoneW + safezoneX;
			y=0.357074 * safezoneH + safezoneY;
			w=0.061875 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_IMAGE: RscPicture
		{
			idc=53011;
			text="Alysia_Client_Texture\Data\process\action_process.paa";

			x=0.564404 * safezoneW + safezoneX;
			y=0.35184 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class ACTION_BUTTON: RscButtonSilent
		{
			idc=53012;
			action="closedialog 0;[g_interaction_process_type,parseNumber(ctrlText 53006),g_interaction_target] spawn AlysiaClient_fnc_process_action;";
			onMouseEnter="ctrlSetText[53011,""Alysia_Client_Texture\Data\process\action_process_select.paa""];ctrlShow[53008, false];((findDisplay 53000) displayCtrl 53009) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 53000) displayCtrl 53010) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Traiter</t>"";";
			onMouseExit="ctrlSetText[53011,""Alysia_Client_Texture\Data\process\action_process.paa""];ctrlShow[53008, true];((findDisplay 53000) displayCtrl 53009) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 53000) displayCtrl 53010) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Traiter</t>"";";

			x=0.561875 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.0928125 * safezoneW;
			h=0.055 * safezoneH;
		};

		class DECO: RscPicture
		{
			idc=53023;
			text="Alysia_Client_Texture\Data\process\process.paa";

			x=0.484531 * safezoneW + safezoneX;
			y=0.522 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.055 * safezoneH;
		};

		class ERROR_TEXT: RscStructuredText
		{
			idc=53015;

			x=0.37625 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=0.2475 * safezoneW;
			h=0.264 * safezoneH;
		};
	};
};

class RscDisplayProcessMultiple: RscDisplayDefaultInteraction
{
	idd=53100;
	name="RscDisplayProcessMultiple";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			text="Alysia_Client_Texture\Data\process\background.jpg";
		};
		class FRAME: FRAME {};
	};

	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			text="<t size='1.5' align='center'>Choix du traitement</t>";
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
			idc=53101;
			colorBackground[]={0,0,0,1};
			
			x=0.438125 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.022 * safezoneH;
		};

		class ACTION_BACKGROUND: RscText
		{
			idc=53102;
			colorBackground[]={0,0,0,0.6};
			
			x=0.463906 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_FRAME: RscFrame
		{
			idc=53103;
			
			x=0.463906 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_TEXT: RscStructuredText
		{
			idc=53104;
			text="<t align='left' size='1.3' color='#FFFFFF'>Accéder</t>";
			
			x=0.489687 * safezoneW + safezoneX;
			y=0.588 * safezoneH + safezoneY;
			w=0.0567187 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_IMAGE: RscPicture
		{
			idc=53105;
			text="Alysia_Client_Texture\Data\process\action_process.paa";
			
			x=0.4665 * safezoneW + safezoneX;
			y=0.583465 * safezoneH + safezoneY;
			w=0.02625 * safezoneW;
			h=0.0429629 * safezoneH;
		};
		class ACTION_BUTTON: RscButtonSilent
		{
			idc=53106;
			action="[] call AlysiaClient_fnc_process_choice_action;";
			onMouseEnter="ctrlSetText[53105,""Alysia_Client_Texture\Data\process\action_process_select.paa""];ctrlShow[53103, false];((findDisplay 53100) displayCtrl 53102) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 53100) displayCtrl 53104) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Accéder</t>"";";
			onMouseExit="ctrlSetText[53105,""Alysia_Client_Texture\Data\process\action_process.paa""];if (ctrlVisible 53105) then {ctrlShow[53103, true];};((findDisplay 53100) displayCtrl 53102) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 53100) displayCtrl 53104) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Accéder</t>"";";

			x=0.463906 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
