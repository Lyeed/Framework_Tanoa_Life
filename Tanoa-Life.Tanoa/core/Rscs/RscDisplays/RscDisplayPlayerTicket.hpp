class RscDisplayPlayerTicket: RscDisplayDefaultInteraction
{
	idd=17000;
	name="RscDisplayPlayerTicket";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND {};
		class FRAME: FRAME {};
	};

	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			text="<t size='1.5' align='center'>Paiement</t>";
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME {};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND {};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE {};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON {};
		class OPTION_BACK_FRAME: OPTION_BACK_FRAME {};
		class OPTION_BACK_BACKGROUND: OPTION_BACK_BACKGROUND {};
		class OPTION_BACK_IMAGE: OPTION_BACK_IMAGE {};
		class OPTION_BACK_BUTTON: OPTION_BACK_BUTTON {};

		class PRICE_FRAME: RscFrame
		{
			x=0.386562 * safezoneW + safezoneX;
			y=0.566 * safezoneH + safezoneY;
			w=0.0928125 * safezoneW;
			h=0.044 * safezoneH;
		};
		class PRICE_HEADER: RscStructuredText
		{
			text="<t align='center'>Montant à payer</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.386562 * safezoneW + safezoneX;
			y=0.566 * safezoneH + safezoneY;
			w=0.0928125 * safezoneW;
			h=0.022 * safezoneH;
		};
		class PRICE_EDIT: RscEdit
		{
			idc=17001;
			text="100";

			x=0.386562 * safezoneW + safezoneX;
			y=0.588 * safezoneH + safezoneY;
			w=0.0928125 * safezoneW;
			h=0.022 * safezoneH;
		};

		class DESC_FRAME: RscFrame
		{
			x=0.386563 * safezoneW + safezoneX;
			y=0.401 * safezoneH + safezoneY;
			w=0.226875 * safezoneW;
			h=0.154 * safezoneH;
		};
		class DESC_HEADER: RscStructuredText
		{
			text="<t align='center'>Description</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.386562 * safezoneW + safezoneX;
			y=0.401 * safezoneH + safezoneY;
			w=0.226875 * safezoneW;
			h=0.022 * safezoneH;
		};
		class DESC_EDIT: RscEdit
		{
			idc=17002;
			style=16;
			
			x=0.386562 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.226875 * safezoneW;
			h=0.132 * safezoneH;
		};

		class ACTION_VALIDATE_FRAME: RscFrame
		{
			idc=17003;

			x=0.505156 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_VALIDATE_BACKGROUND: RscStructuredText
		{
			idc=17004;
			colorBackground[]={0,0,0,0.6};

			x=0.505156 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_VALIDATE_IMAGE: RscPicture
		{
			idc=17005;
			text="Alysia_Client_Texture\Data\interactions\player_to_player_basics\action_ticket.paa";

			x=0.508879 * safezoneW + safezoneX;
			y=0.582387 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class ACTION_VALIDATE_TEXT: RscStructuredText
		{
			idc=17006;
			text="<t align='left' size='1.3'>Valider</t>";

			x=0.536094 * safezoneW + safezoneX;
			y=0.588 * safezoneH + safezoneY;
			w=0.0721875 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_VALIDATE_BUTTON: RscButtonSilent
		{
			action="[] call AlysiaClient_fnc_interactionMenu_action_ticket_send;";
			onMouseEnter="ctrlSetText[17005,""Alysia_Client_Texture\Data\interactions\player_to_player_basics\action_ticket_select.paa""];ctrlShow[17003, false];((findDisplay 17000) displayCtrl 17004) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 17000) displayCtrl 17006) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Valider</t>"";";
			onMouseExit="ctrlSetText[17005,""Alysia_Client_Texture\Data\interactions\player_to_player_basics\action_ticket.paa""];ctrlShow[17003, true];((findDisplay 17000) displayCtrl 17004) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 17000) displayCtrl 17006) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Valider</t>"";";

			x=0.505156 * safezoneW + safezoneX;
			y=0.577 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
