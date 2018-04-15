#define HEADER_COLOR \
{ \
	"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", \
	"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", \
	"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", \
	"(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])" \
}

class RscDisplayWelcomeCharacter: RscDisplayDefault
{
	idd=1500;
	name= "RscDisplayWelcomeCharacter";

	class controlsBackground {};
	class controls
	{
		class CHAR_BACKGROUND: RscText
		{
			colorBackground[]={0,0,0,0.6};

			x=0.324687 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.350625 * safezoneW;
			h=0.275 * safezoneH;
		};
		class CHAR_FRAME: RscFrame
		{
			x=0.324687 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.350625 * safezoneW;
			h=0.319 * safezoneH;
		};
		class CHAR_HEADER: RscStructuredText
		{
			text="<t align='center' size='2px'>Informations de votre personnage</t>";
			colorBackground[]=HEADER_COLOR;

			x=0.324687 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.350625 * safezoneW;
			h=0.044 * safezoneH;
		};

		class CHAR_FIRSTNAME_HEADER: RscStructuredText
		{
			text="<t align='center'>Prénom</t>";
			colorBackground[]=HEADER_COLOR;

			x=0.360781 * safezoneW + safezoneX;
			y=0.434 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.01925 * safezoneH;
		};
		class CHAR_FIRSTNAME_EDIT: RscEdit
		{
			idc=1501;
			tooltip="Prénom de votre personnage";

			x=0.360781 * safezoneW + safezoneX;
			y=0.456 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.022 * safezoneH;
		};

		class CHAR_LASTNAME_HEADER: RscStructuredText
		{
			text="<t align='center'>Nom</t>";
			colorBackground[]=HEADER_COLOR;

			x=0.505156 * safezoneW + safezoneX;
			y=0.434 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.022 * safezoneH;
		};
		class CHAR_LASTNAME_EDIT: RscEdit
		{
			idc=1502;
			tooltip="Nom de votre personnage";

			x=0.505156 * safezoneW + safezoneX;
			y=0.456 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.022 * safezoneH;
		};

		class CHAR_BIRTH_HEADER: RscStructuredText
		{
			text="<t align='center'>Date de naissance</t>";
			colorBackground[]=HEADER_COLOR;

			x=0.360781 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.022 * safezoneH;
		};
		class CHAR_BIRTH_YEAR: RscCombo
		{
			idc=1503;
			tooltip="Année de naissance";

			x=0.443281 * safezoneW + safezoneX;
			y=0.522 * safezoneH + safezoneY;
			w=0.0515625 * safezoneW;
			h=0.022 * safezoneH;
		};
		class CHAR_BIRTH_MONTH: RscCombo
		{
			idc=1509;
			tooltip="Mois de naissance";

			x=0.402031 * safezoneW + safezoneX;
			y=0.522 * safezoneH + safezoneY;
			w=0.04125 * safezoneW;
			h=0.022 * safezoneH;
		};
		class CHAR_BIRTH_DAY: RscCombo
		{
			idc=1510;
			tooltip="Jour de naissance";

			x=0.360781 * safezoneW + safezoneX;
			y=0.522 * safezoneH + safezoneY;
			w=0.04125 * safezoneW;
			h=0.022 * safezoneH;
		};

		class CHAR_ORIGIN_HEADER: RscStructuredText
		{
			text="<t align='center'>Origine</t>";
			colorBackground[]=HEADER_COLOR;

			x=0.505156 * safezoneW + safezoneX;
			y=0.5 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.022 * safezoneH;
		};
		class CHAR_ORIGIN_LIST: RscCombo
		{
			idc=1504;
			tooltip="origine de votre personnage";

			x=0.505156 * safezoneW + safezoneX;
			y=0.522 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.022 * safezoneH;
		};

		class CHAR_SEXE_HEADER: RscStructuredText
		{
			text="<t align='center'>Sexe</t>";
			colorBackground[]=HEADER_COLOR;

			x=0.360781 * safezoneW + safezoneX;
			y=0.566 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.022 * safezoneH;
		};
		class CHAR_SEXE_LIST: RscCombo
		{
			idc=1505;
			tooltip="Sexe de votre personnage";

			h=0.022 * safezoneH;
			x=0.360781 * safezoneW + safezoneX;
			y=0.588 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
		};

		class VALIDATE_BUTTON: RscButtonMenu
		{
			text="VALIDER";
			onButtonClick="[] spawn AlysiaClient_fnc_welcomeMenu_Proceed;";
			colorBackground[]=HEADER_COLOR;

			x=0.536094 * safezoneW + safezoneX;
			y=0.555 * safezoneH + safezoneY;
			w=0.0773437 * safezoneW;
			h=0.022 * safezoneH;
		};
		class EXIT_BUTTON: RscButtonMenu
		{
			text="QUITTER";
			onButtonClick="['Annulation de la création de profil.'] spawn AlysiaClient_fnc_errorExit;";
			colorBackground[]=HEADER_COLOR;

			x=0.536094 * safezoneW + safezoneX;
			y=0.588 * safezoneH + safezoneY;
			w=0.0773437 * safezoneW;
			h=0.022 * safezoneH;
		};

		class ERROR_DISPLAY: RscStructuredText
		{
			idc=1508;
			colorBackground[]={0,0,0,0};

			x=0.332656 * safezoneW + safezoneX;
			y=0.621 * safezoneH + safezoneY;
			w=0.335156 * safezoneW;
			h=0.044 * safezoneH;
		};

		class INFO_BACKGROUND: RscText
		{
			colorBackground[]={0,0,0,0.6};

			x=0.123594 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=0.170156 * safezoneW;
			h=0.154 * safezoneH;
		};
		class INFO_FRAME: RscFrame
		{
			x=0.123594 * safezoneW + safezoneX;
			y=0.335 * safezoneH + safezoneY;
			w=0.170156 * safezoneW;
			h=0.176 * safezoneH;
		};
		class INFO_HEADER: RscStructuredText
		{
			text="<t align='center'>Informations de l'île</t>";
			colorBackground[]=HEADER_COLOR;

			x=0.123594 * safezoneW + safezoneX;
			y=0.335 * safezoneH + safezoneY;
			w=0.170156 * safezoneW;
			h=0.022 * safezoneH;
		};

		class INFO_DATE_HEADER: RscStructuredText
		{
			text="<t align='center'>Date</t>";
			colorBackground[]=HEADER_COLOR;

			x=0.154531 * safezoneW + safezoneX;
			y=0.39 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.01925 * safezoneH;
		};
		class INFO_DATE_INFO: RscStructuredText
		{
			idc=1506;

			x=0.154531 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.033 * safezoneH;
		};

		class INFO_TIME_HEADER: RscStructuredText
		{
			text="<t align='center'>Heure</t>";
			colorBackground[]=HEADER_COLOR;

			x=0.154531 * safezoneW + safezoneX;
			y=0.445 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.01925 * safezoneH;
		};
		class INFO_TIME_INFO: RscStructuredText
		{
			idc=1507;

			x=0.154531 * safezoneW + safezoneX;
			y=0.467 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.033 * safezoneH;
		};
	};
};

#undef HEADER_COLOR
