class RscDisplayBasicLaunder: RscDisplayDefaultInteraction
{
	idd=72000;
	name="RscDisplayBasicLaunder";

	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND {};
		class FRAME: FRAME {};
	};

	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			text="<t size='1.5' align='center'>Blanchiment</t>";
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME {};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND {};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE {};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON {};

		class AMOUNT_HEADER: RscStructuredText
		{
			text="<t align='center'>Montant</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.396875 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.0515625 * safezoneW;
			h=0.022 * safezoneH;
		};
		class AMOUNT_EDIT: RscEdit
		{
			idc=72001;
			text="0";

			x=0.448438 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.0979687 * safezoneW;
			h=0.022 * safezoneH;
		};
		class AMOUNT_KN: RscStructuredText
		{
			colorBackground[]={0,0,0,0.8};
			text="<t align='center'>$</t>";

			x=0.546406 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.020625 * safezoneW;
			h=0.022 * safezoneH;
		};

		class ACTION_FRAME: RscFrame
		{
			idc=72002;

			x=0.448438 * safezoneW + safezoneX;
			y=0.566 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BACKGROUND: RscStructuredText
		{
			idc=72003;
			colorBackground[]={0,0,0,0.6};

			x=0.448438 * safezoneW + safezoneX;
			y=0.566 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_IMAGE: RscPicture
		{
			idc=72004;
			text="Alysia_Client_Texture\Data\global\validate.paa";

			x=0.452098 * safezoneW + safezoneX;
			y=0.571169 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class ACTION_TEXT: RscStructuredText
		{
			idc=72005;
			text="<t align='left' size='1.3'>Blanchir</t>";

			x=0.482448 * safezoneW + safezoneX;
			y=0.576889 * safezoneH + safezoneY;
			w=0.0721875 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_BUTTON: RscButtonSilent
		{
			idc=72206;
			onMouseEnter="ctrlSetText[72004,""Alysia_Client_Texture\Data\global\validate_select.paa""];ctrlShow[72002, false];((findDisplay 72000) displayCtrl 72003) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 72000) displayCtrl 70005) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Blanchir</t>"";";
			onMouseExit="ctrlSetText[72004,""Alysia_Client_Texture\Data\global\validate.paa""];ctrlShow[72002, true];((findDisplay 72000) displayCtrl 72003) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 72000) displayCtrl 70005) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Blanchir</t>"";";
			action="[g_interaction_target] spawn AlysiaClient_fnc_launder_action;";

			x=0.448438 * safezoneW + safezoneX;
			y=0.566 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};

class RscDisplayCompanyLaunder: RscDisplayDefaultInteraction
{
	idd=70000;
	name="RscDisplayCompanyLaunder";

	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			text="Alysia_Client_Texture\Data\companies\background.jpg";
		};
		class FRAME: FRAME {};
	};

	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			text="<t size='1.5' align='center'>Blanchiment</t>";
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME {};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND {};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE {};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON {};
		class OPTION_BACK_FRAME: OPTION_BACK_FRAME {};
		class OPTION_BACK_BACKGROUND: OPTION_BACK_BACKGROUND {};
		class OPTION_BACK_IMAGE: OPTION_BACK_IMAGE {};
		class OPTION_BACK_BUTTON: OPTION_BACK_BUTTON {};

		class AMOUNT_HEADER: RscStructuredText
		{
			text="<t align='center'>Montant</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.396875 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.0515625 * safezoneW;
			h=0.022 * safezoneH;
		};
		class AMOUNT_EDIT: RscEdit
		{
			idc=70002;
			text="0";

			x=0.448438 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.0979687 * safezoneW;
			h=0.022 * safezoneH;
		};
		class AMOUNT_KN: RscStructuredText
		{
			colorBackground[]={0,0,0,0.8};
			text="<t align='center'>$</t>";

			x=0.546406 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.020625 * safezoneW;
			h=0.022 * safezoneH;
		};

		class REASON_LIST: RscCombo
		{
			idc=70001;

			x=0.432969 * safezoneW + safezoneX;
			y=0.511 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.022 * safezoneH;
		};
		class REASON_HEADER: RscStructuredText
		{
			colorBackground[]={0,0,0,0.8};
			text="<t align='center'>Raison</t>";

			x=0.432969 * safezoneW + safezoneX;
			y=0.489 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.022 * safezoneH;
		};

		class ACTION_FRAME: RscFrame
		{
			idc=70003;

			x=0.448438 * safezoneW + safezoneX;
			y=0.566 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BACKGROUND: RscStructuredText
		{
			idc=70004;
			colorBackground[]={0,0,0,0.6};

			x=0.448438 * safezoneW + safezoneX;
			y=0.566 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_IMAGE: RscPicture
		{
			idc=70005;
			text="Alysia_Client_Texture\Data\global\validate.paa";

			x=0.452098 * safezoneW + safezoneX;
			y=0.571169 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class ACTION_TEXT: RscStructuredText
		{
			idc=70006;
			text="<t align='left' size='1.3'>Blanchir</t>";

			x=0.482448 * safezoneW + safezoneX;
			y=0.576889 * safezoneH + safezoneY;
			w=0.0721875 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_BUTTON: RscButtonSilent
		{
			idc=70007;
			onMouseEnter="ctrlSetText[70005,""Alysia_Client_Texture\Data\global\validate_select.paa""];ctrlShow[70003, false];((findDisplay 70000) displayCtrl 70004) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 70000) displayCtrl 70006) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Blanchir</t>"";";
			onMouseExit="ctrlSetText[70005,""Alysia_Client_Texture\Data\global\validate.paa""];ctrlShow[70003, true];((findDisplay 70000) displayCtrl 70004) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 70000) displayCtrl 70006) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Blanchir</t>"";";

			x=0.448438 * safezoneW + safezoneX;
			y=0.566 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
