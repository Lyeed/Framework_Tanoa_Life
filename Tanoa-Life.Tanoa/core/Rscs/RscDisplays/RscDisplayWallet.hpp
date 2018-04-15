class RscDisplayWallet: RscDisplayDefaultInteraction
{
	idd=58000;
	name="RscDisplayWallet";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
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
			text="<t align='center' size='1.5'>Porte-feuille</t>";

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

		class LICENSES_TITLE: RscStructuredText
		{
			text="<t align='center'>Licenses</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.489687 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.180469 * safezoneW;
			h=0.022 * safezoneH;
		};
		class LICENSES_FRAME: RscFrame
		{
			x=0.489687 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.180469 * safezoneW;
			h=0.363 * safezoneH;
		};
		class LICENSES_LIST: RscListBox
		{
			idc=58001;

			x=0.489687 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.180469 * safezoneW;
			h=0.264 * safezoneH;
		};

		class PASSPORT_FRAME: RscFrame
		{
			x=0.329844 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.149531 * safezoneW;
			h=0.363 * safezoneH;
		};
		class PASSPORT_HEADER: RscStructuredText
		{
			text="<t align='center'>Passeport</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.329844 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.149531 * safezoneW;
			h=0.022 * safezoneH;
		};
		class PASSPORT_INFO: RscStructuredText
		{
			idc=58002;
			colorBackground[]={0,0,0,0.6};

			x=0.329844 * safezoneW + safezoneX;
			y=0.522 * safezoneH + safezoneY;
			w=0.149531 * safezoneW;
			h=0.187 * safezoneH;
		};

		class PASSEPORT_PICTURE_BACKGROUND: RscText
		{
			colorBackground[]={0,0,0,0.6};
			
			x=0.371094 * safezoneW + safezoneX;
			y=0.379 * safezoneH + safezoneY;
			w=0.061875 * safezoneW;
			h=0.132 * safezoneH;
		};
		class PASSEPORT_PICTURE: RscPicture
		{
			idc=58003;

			x=0.371094 * safezoneW + safezoneX;
			y=0.39 * safezoneH + safezoneY;
			w=0.061875 * safezoneW;
			h=0.11 * safezoneH;
		};

		class ACTION_BACKGROUND: RscText
		{
			idc=58004;
			colorBackground[]={0,0,0,0.6};

			x=0.530937 * safezoneW + safezoneX;
			y=0.643 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_FRAME: RscFrame
		{
			idc=58005;

			x=0.530937 * safezoneW + safezoneX;
			y=0.643 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_TEXT: RscStructuredText
		{
			idc=58006;
			text="<t align='left' size='1.3' color='#FFFFFF'>Retirer</t>";

			x=0.565587 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.047 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_IMAGE: RscPicture
		{
			idc=58007;
			text="Alysia_Client_Texture\Data\skull\take.paa";
			
			x=0.532907 * safezoneW + safezoneX;
			y=0.644934 * safezoneH + safezoneY;
			w=0.0257291 * safezoneW;
			h=0.0466666 * safezoneH;
		};
		class ACTION_BUTTON: RscButtonSilent
		{
			idc=58008;
			action="[(lbData[58001, (lbCurSel 58001)]), player] remoteExecCall [""AlysiaClient_fnc_license_revoke"", g_interaction_target];closeDialog 0;";
			onMouseEnter="ctrlSetText[58007,""Alysia_Client_Texture\Data\skull\take_select.paa""];ctrlShow[58005, false];((findDisplay 58000) displayCtrl 58004) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 58000) displayCtrl 58006) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Retirer</t>"";";
			onMouseExit="ctrlSetText[58007,""Alysia_Client_Texture\Data\skull\take.paa""];ctrlShow[58005, true];((findDisplay 58000) displayCtrl 58004) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 58000) displayCtrl 58006) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Retirer</t>"";";

			x=0.530937 * safezoneW + safezoneX;
			y=0.643 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
