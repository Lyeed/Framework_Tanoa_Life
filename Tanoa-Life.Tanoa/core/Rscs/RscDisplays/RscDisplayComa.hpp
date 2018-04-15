class RscDisplayComa: RscDisplayDefault
{
	idd=350;
	name="RscDisplayComa";

	class controlsBackground 
	{
		class BACKGROUND: RscText
		{
			colorBackground[]={0,0,0,1};
			
			x=0 * safezoneW + safezoneX;
			y=0 * safezoneH + safezoneY;
			w=1 * safezoneW;
			h=1 * safezoneH;
		};
	};

	class controls
	{
		class TITLE: RscStructuredText
		{
			text="<t align='center' size='3'>Vous êtes inconscient</t>";
			
			x=-0.000156274 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=1.00031 * safezoneW;
			h=0.077 * safezoneH;
		};

		class PEOPLE_NEAR: RscStructuredText
		{
			idc=359;

			x=-0.00015652 * safezoneW + safezoneX;
			y=0.214 * safezoneH + safezoneY;
			w=1.00031 * safezoneW;
			h=0.033 * safezoneH;
		};

		class TIME_LEFT: RscStructuredText
		{
			idc=351;
			
			x=-0.000156274 * safezoneW + safezoneX;
			y=0.456 * safezoneH + safezoneY;
			w=1.00031 * safezoneW;
			h=0.033 * safezoneH;
		};

		class MEDIC_FRAME: RscFrame
		{
			colorText[]={1,1,1,1};

			x=0.432969 * safezoneW + safezoneX;
			y=0.016 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.176 * safezoneH;
		};
		class MEDIC_IMAGE: RscPicture
		{
			idc=356;
			text="Alysia_Client_Texture\Data\death\samu.paa";

			x=0.469062 * safezoneW + safezoneX;
			y=0.06 * safezoneH + safezoneY;
			w=0.0567187 * safezoneW;
			h=0.088 * safezoneH;
		};
		class MEDIC_CONTACT: RscStructuredText
		{
			text="<t align='center'>Contacter le SAMU ?</t>";
			
			x=0.432968 * safezoneW + safezoneX;
			y=0.027 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.022 * safezoneH;
		};
		class MEDIC_MEMBERS: RscStructuredText
		{
			idc=358;

			x=0.432968 * safezoneW + safezoneX;
			y=0.159 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.022 * safezoneH;
		};
		class MEDIC_BUTTON: RscButtonSilent
		{
			idc=357;
			action="[] call AlysiaClient_fnc_action_medic_request;";
			onMouseEnter="ctrlSetText[356,'Alysia_Client_Texture\Data\death\samu_select.paa'];";
			onMouseExit="ctrlSetText[356,'Alysia_Client_Texture\Data\death\samu.paa'];";

			x=0.432968 * safezoneW + safezoneX;
			y=0.016 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.176 * safezoneH;
		};

		class SUICIDE_IMAGE: RscPicture
		{
			idc=352;
			text="Alysia_Client_Texture\Data\death\suicide.paa";

			x=0.469062 * safezoneW + safezoneX;
			y=0.709 * safezoneH + safezoneY;
			w=0.0567187 * safezoneW;
			h=0.088 * safezoneH;
		};
		class SUICIDE_FRAME: RscFrame
		{
			idc=360;
			colorText[]={1,1,1,1};
			
			x=0.432969 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.176 * safezoneH;
		};
		class SUICIDE_TEXT: RscStructuredText
		{
			idc=353;
			text="<t align='center'>Aller en soin intensif</t>";

			x=0.432969 * safezoneW + safezoneX;
			y=0.665 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.022 * safezoneH;
		};
		class SUICIDE_BUTTON: RscButtonSilent
		{
			idc=354;
			action="[] call AlysiaClient_fnc_action_suicide;";
			onMouseEnter="ctrlSetText[352,'Alysia_Client_Texture\Data\death\suicide_select.paa'];";
			onMouseExit="ctrlSetText[352,'Alysia_Client_Texture\Data\death\suicide.paa'];";

			x=0.432969 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.176 * safezoneH;
		};
		class SUICIDE_LEFT: RscStructuredText
		{
			idc=355;

			x=-0.000158758 * safezoneW + safezoneX;
			y=0.72 * safezoneH + safezoneY;
			w=1.00031 * safezoneW;
			h=0.044 * safezoneH;
		};
	};
};
