class RscDisplayCompanyCreate: RscDisplayDefaultInteraction
{
	idd=90000;
	name="RscDisplayCompanyCreate";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			text="Alysia_Client_Texture\Data\companies\background.jpg";

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
			text="<t align='center' size='1.5'>Création d'entreprise</t>";

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

		class ACTION_BACKGROUND: RscText
		{
			idc=90001;
			colorBackground[]={0,0,0,0.6};

			x=0.530937 * safezoneW + safezoneX;
			y=0.643 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_FRAME: RscFrame
		{
			idc=90002;

			x=0.530937 * safezoneW + safezoneX;
			y=0.643 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_TEXT: RscStructuredText
		{
			idc=90003;
			text="<t align='left' size='1.3' color='#FFFFFF'>Créer</t>";

			x=0.565587 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.0464063 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_IMAGE: RscPicture
		{
			idc=90004;
			text="Alysia_Client_Texture\Data\companies\action_company.paa";

			x=0.532907 * safezoneW + safezoneX;
			y=0.644934 * safezoneH + safezoneY;
			w=0.0257291 * safezoneW;
			h=0.0466666 * safezoneH;
		};
		class ACTION_BUTTON: RscButtonSilent
		{
			idc=90005;
			action="[] spawn AlysiaClient_fnc_company_create_action;";
			onMouseEnter="ctrlSetText[90004,""Alysia_Client_Texture\Data\companies\action_company_select.paa""];ctrlShow[90002, false];((findDisplay 90000) displayCtrl 90001) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 90000) displayCtrl 90003) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Créer</t>"";";
			onMouseExit="ctrlSetText[90004,""Alysia_Client_Texture\Data\companies\action_company.paa""];if (ctrlVisible 90004) then {ctrlShow[90002, true];};((findDisplay 90000) displayCtrl 90001) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 90000) displayCtrl 90003) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Créer</t>"";";

			x=0.530937 * safezoneW + safezoneX;
			y=0.643 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.055 * safezoneH;
		};

		class TYPES_FRAME: RscFrame
		{
			x=0.329844 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.363 * safezoneH;
		};
		class TYPES_HEADER: RscStructuredText
		{
			text="<t align='center'>Types</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.329844 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.022 * safezoneH;
		};
		class TYPES_LIST: RscListbox
		{
			idc=90006;
			onLBSelChanged="_this call AlysiaClient_fnc_company_create_update;";
			rowHeight=0.05;

			x=0.329844 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.341 * safezoneH;
		};

		class SELECT_FRAME: RscFrame
		{
			idc=90007;

			x=0.484531 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.180469 * safezoneW;
			h=0.275 * safezoneH;
		};
		class SELECT_TITLE: RscStructuredText
		{
			idc=90008;
			colorBackground[]={0,0,0,0.8};

			x=0.484531 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.180469 * safezoneW;
			h=0.022 * safezoneH;
		};
		class SELECT_INFO: RscStructuredText
		{
			idc=90009;
			colorBackground[]={0,0,0,0.6};

			x=0.484531 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.180469 * safezoneW;
			h=0.209 * safezoneH;
		};

		class SELECT_EDIT_HEADER: RscStructuredText
		{
			idc=90010;
			text="<t align='center'>Nom de l'entreprise</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.484531 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.180469 * safezoneW;
			h=0.022 * safezoneH;
		};
		class SELECT_EDIT: RscEdit
		{
			idc=90011;

			x=0.484531 * safezoneW + safezoneX;
			y=0.599 * safezoneH + safezoneY;
			w=0.180469 * safezoneW;
			h=0.022 * safezoneH;
		};
	};
};
