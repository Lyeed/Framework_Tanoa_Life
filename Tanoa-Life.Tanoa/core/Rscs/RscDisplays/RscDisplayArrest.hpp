class RscDisplayArrest: RscDisplayDefaultInteraction
{	
	idd=20000;
	name="RscDisplayArrest";
	
	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			x=0.386562 * safezoneW + safezoneX;
			y=0.313 * safezoneH + safezoneY;
			w=0.228437 * safezoneW;
			h=0.374 * safezoneH;
		};
		class FRAME: FRAME
		{
			x=0.386562 * safezoneW + safezoneX;
			y=0.313 * safezoneH + safezoneY;
			w=0.228437 * safezoneW;
			h=0.374 * safezoneH;
		};
	};

	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			text="<t align='center' size='1.5'>Arrestation</t>";

			x=0.386562 * safezoneW + safezoneX;
			y=0.313 * safezoneH + safezoneY;
			w=0.227917 * safezoneW;
			h=0.033 * safezoneH;
 		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME
		{
			x=0.355625 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND
		{
			x=0.355625 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE
		{
			x=0.362864 * safezoneW + safezoneX;
			y=0.379 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON
		{
			x=0.355625 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
		};

		class OPTION_BACK_FRAME: OPTION_BACK_FRAME
		{
			x=0.355625 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
		};
		class OPTION_BACK_BACKGROUND: OPTION_BACK_BACKGROUND
		{
			x=0.355625 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
		};
		class OPTION_BACK_IMAGE: OPTION_BACK_IMAGE
		{
			x=0.363385 * safezoneW + safezoneX;
			y=0.433074 * safezoneH + safezoneY;
		};
		class OPTION_BACK_BUTTON: OPTION_BACK_BUTTON
		{
			x=0.355625 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
		};

		class CELLULE_TXT: RscStructuredText
		{
			idc=20001;
			text="<t align='left' size='1'>Cellule</t>";
			colorBackground[]={0,0,0,0.6};

			x=0.402031 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.0928125 * safezoneW;
			h=0.022 * safezoneH;
		};
		class TIME_TXT: RscStructuredText
		{
			idc=20002;
			text="<t align='left' size='1'>Durée</t>";
			colorBackground[]={0,0,0,0.6};

			x=0.402031 * safezoneW + safezoneX;
			y=0.445 * safezoneH + safezoneY;
			w=0.0928125 * safezoneW;
			h=0.022 * safezoneH;
		};
		class BAIL_TXT: RscStructuredText
		{
			idc=20003;
			text="<t align='left' size='1'>Caution</t>";
			colorBackground[]={0,0,0,0.6};

			x=0.402031 * safezoneW + safezoneX;
			y=0.478 * safezoneH + safezoneY;
			w=0.0928125 * safezoneW;
			h=0.022 * safezoneH;
		};
		class CELLULE_LISTBOX: RscCombo
		{
			idc=20006;
			colorBackground[]={0,0,0,1};

			x=0.494844 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.103125 * safezoneW;
			h=0.022 * safezoneH;
		};
		class TIME_FRAME: RscFrame
		{
			idc=20007;

			x=0.402031 * safezoneW + safezoneX;
			y=0.445 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.022 * safezoneH;
		};
		class BAIL_FRAME: RscFrame
		{
			idc=20008;

			x=0.402031 * safezoneW + safezoneX;
			y=0.478 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.022 * safezoneH;
		};
		class CELLULE_FRAME: RscFrame
		{
			idc=20009;

			x=0.402031 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.022 * safezoneH;
		};
		class TIME_EDIT: RscEdit
		{
			idc=20010;
			text="0";

			x=0.494844 * safezoneW + safezoneX;
			y=0.445 * safezoneH + safezoneY;
			w=0.103125 * safezoneW;
			h=0.022 * safezoneH;
		};
		class BAIL_EDIT: RscEdit
		{
			idc=20011;
			text="0";

			x=0.494844 * safezoneW + safezoneX;
			y=0.478 * safezoneH + safezoneY;
			w=0.103125 * safezoneW;
			h=0.022 * safezoneH;
		};
		class REASON_EDIT: RscEdit
		{
			idc=20012;
			text="Aucune";

			x=0.402031 * safezoneW + safezoneX;
			y=0.544 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.044 * safezoneH;
		};
		class REASON_TITLE_FRAME: RscFrame
		{
			idc=20013;

			x=0.402031 * safezoneW + safezoneX;
			y=0.511 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.022 * safezoneH;
		};
		class REASON_TITLE: RscStructuredText
		{
			idc=20014;
			text="<t align='center' size='1'>Raison</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.402031 * safezoneW + safezoneX;
			y=0.511 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.022 * safezoneH;
		};
		class REASON_EDIT_FRAME: RscFrame
		{
			idc=20015;

			x=0.402031 * safezoneW + safezoneX;
			y=0.544 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.044 * safezoneH;
		};
		class VALIDATE_BACKGROUND: RscStructuredText
		{
			idc=20016;
			colorBackground[]={0,0,0,0.6};

			x=0.448438 * safezoneW + safezoneX;
			y=0.61 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class VALIDATE_FRAME: RscFrame
		{
			idc=20017;

			x=0.448438 * safezoneW + safezoneX;
			y=0.61 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class VALIDATE_IMAGE: RscPicture
		{
			idc=20018;
			text="Alysia_Client_Texture\Data\interactions\player_to_player_basics\action_arrest.paa";

			x=0.453594 * safezoneW + safezoneX;
			y=0.61858 * safezoneH + safezoneY;
			w=0.0216146 * safezoneW;
			h=0.0375186 * safezoneH;
		};
		class VALIDATE_TEXT: RscStructuredText
		{
			idc=20019;
			text="<t align='center' size='1.5'>Arrêter</t>";

			x=0.484531 * safezoneW + safezoneX;
			y=0.621 * safezoneH + safezoneY;
			w=0.0567187 * safezoneW;
			h=0.033 * safezoneH;
		};
		class VALIDATE_BUTTON: RscButtonSilent
		{
			idc=20020;
			action="[] call AlysiaClient_fnc_prison_arrest_action;";
			onMouseEnter="ctrlShow[20017, false];ctrlSetText[20018,""Alysia_Client_Texture\Data\interactions\player_to_player_basics\action_arrest_select.paa""];((findDisplay 20000) displayCtrl 20016) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 20000) displayCtrl 20019) ctrlSetStructuredText parseText ""<t align='center' size='1.5' color='#000000'>Arrêter</t>"";";
			onMouseExit="ctrlShow[20017, true];ctrlSetText[20018,""Alysia_Client_Texture\Data\interactions\player_to_player_basics\action_arrest.paa""];((findDisplay 20000) displayCtrl 20016) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 20000) displayCtrl 20019) ctrlSetStructuredText parseText ""<t align='center' size='1.5' color='#FFFFFF'>Arrêter</t>"";";

			x=0.448438 * safezoneW + safezoneX;
			y=0.61 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
