class RscDisplayATM: RscDisplayDefault
{	
	idd=15000;
	name="RscDisplayATM";
	
	class controlsBackground
	{
		class BACKGROUND: RscPicture
		{
			text="Alysia_Client_Texture\Data\atm\frame_atm.paa";
		  
			x=0.335 * safezoneW + safezoneX;
			y=0.203 * safezoneH + safezoneY;
			w=0.33 * safezoneW;
			h=0.605 * safezoneH;
		};
		
		class SCREEN: RscPicture
		{
			text="Alysia_Client_Texture\Data\atm\background.jpg";
		  
			x=0.389062 * safezoneW + safezoneX;
			y=0.346815 * safezoneH + safezoneY;
			w=0.224531 * safezoneW;
			h=0.307556 * safezoneH;
		};
	};
	
	class controls
	{	
		class TITLE_TEXT: RscStructuredText
		{
			idc=15001;
			text="<t align='center' size='1.5'>Distributeur</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.389656 * safezoneW + safezoneX;
			y=0.34688 * safezoneH + safezoneY;
			w=0.223749 * safezoneW;
			h=0.047815 * safezoneH;
		};
		
		class BALANCE_FRAME: RscFrame
		{
			x=0.396875 * safezoneW + safezoneX;
			y=0.412 * safezoneH + safezoneY;
			w=0.20625 * safezoneW;
			h=0.033 * safezoneH;
		};
		
		class BALANCE_TXT: RscStructuredText
		{
			idc=15002;
			colorBackground[]={0,0,0,0.6};
			text="<t align='left' size='1.2'>      Solde </t><t align='center' size='1.2'>... $</t>";
			
			x=0.438022 * safezoneW + safezoneX;
			y=0.41288 * safezoneH + safezoneY;
			w=0.164115 * safezoneW;
			h=0.0302223 * safezoneH;
		};

		class BALANCE_BACKGROUND: RscText
		{
			colorBackground[]={0,0,0,0.6};
			
			x=0.396875 * safezoneW + safezoneX;
			y=0.41288 * safezoneH + safezoneY;
			w=0.04125 * safezoneW;
			h=0.0302223 * safezoneH;
		};
		
		class ICON_BALANCE: RscPicture
		{			
			text="Alysia_Client_Texture\Data\atm\balance_logo.paa";

			x=0.408116 * safezoneW + safezoneX;
			y=0.41662 * safezoneH + safezoneY;
			w=0.0154167 * safezoneW;
			h=0.0218889 * safezoneH;
		};
		
		class ICON_CAMERA: RscPicture
		{
			text="Alysia_Client_Texture\Data\atm\camera_icon.paa";

			x=0.477828 * safezoneW + safezoneX;
			y=0.52948 * safezoneH + safezoneY;
			w=0.0360937 * safezoneW;
			h=0.055 * safezoneH;
		};
		
		class BTN_L1: RscButtonSilent
		{
			idc=15003;
			soundClick[]={"Alysia_Client_Son\Sons_Divers\click_atm.ogg",0.09,1};

			x=0.347375 * safezoneW + safezoneX;
			y=0.46238 * safezoneH + safezoneY;
			w=0.0154689 * safezoneW;
			h=0.022 * safezoneH;
		};
		
		class BTN_L2: RscButtonSilent
		{
			idc=15004;
			soundClick[]={"Alysia_Client_Son\Sons_Divers\click_atm.ogg",0.09,1};

			x=0.347891 * safezoneW + safezoneX;
			y=0.51584 * safezoneH + safezoneY;
			w=0.0154689 * safezoneW;
			h=0.022 * safezoneH;
		};
		
		class BTN_L3: RscButtonSilent
		{
			idc=15005;
			soundClick[]={"Alysia_Client_Son\Sons_Divers\click_atm.ogg",0.09,1};

			x=0.347891 * safezoneW + safezoneX;
			y=0.56842 * safezoneH + safezoneY;
			w=0.0154689 * safezoneW;
			h=0.022 * safezoneH;
		};
		
		class BTN_L4: RscButtonSilent
		{
			idc=15006;
			soundClick[]={"Alysia_Client_Son\Sons_Divers\click_atm.ogg",0.09,1};

			x=0.347891 * safezoneW + safezoneX;
			y=0.62122 * safezoneH + safezoneY;
			w=0.0154689 * safezoneW;
			h=0.022 * safezoneH;
		};
		
		class BTN_R1: RscButtonSilent
		{
			idc=15007;
			soundClick[]={"Alysia_Client_Son\Sons_Divers\click_atm.ogg",0.09,1};

			x=0.637466 * safezoneW + safezoneX;
			y=0.46194 * safezoneH + safezoneY;
			w=0.0154689 * safezoneW;
			h=0.022 * safezoneH;
		};
		
		class BTN_R2: RscButtonSilent
		{
			idc=15008;
			soundClick[]={"Alysia_Client_Son\Sons_Divers\click_atm.ogg",0.09,1};

			x=0.637466 * safezoneW + safezoneX;
			y=0.51474 * safezoneH + safezoneY;
			w=0.0154689 * safezoneW;
			h=0.022 * safezoneH;
		};
		
		class BTN_R3: RscButtonSilent
		{
			idc=15009;
			soundClick[]={"Alysia_Client_Son\Sons_Divers\click_atm.ogg",0.09,1};

			x=0.637466 * safezoneW + safezoneX;
			y=0.56842 * safezoneH + safezoneY;
			w=0.0154689 * safezoneW;
			h=0.022 * safezoneH;
		};
		
		class BTN_R4: RscButtonSilent
		{
			idc=15010;
			soundClick[]={"Alysia_Client_Son\Sons_Divers\click_atm.ogg",0.09,1};

			x=0.637466 * safezoneW + safezoneX;
			y=0.62122 * safezoneH + safezoneY;
			w=0.0154689 * safezoneW;
			h=0.022 * safezoneH;
		};
		
		class TXT_L1: RscStructuredText
		{
			idc=15011;
			
			x=0.393472 * safezoneW + safezoneX;
			y=0.4604 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.033 * safezoneH;
		};
		
		class TXT_L2: RscStructuredText
		{
			idc=15012;

			x=0.393266 * safezoneW + safezoneX;
			y=0.51386 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.033 * safezoneH;
		};
		
		class TXT_L3: RscStructuredText
		{
			idc=15013;
			
			x=0.392234 * safezoneW + safezoneX;
			y=0.56666 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.033 * safezoneH;
		};
		
		class TXT_L4: RscStructuredText
		{
			idc=15014;
			
			x=0.39275 * safezoneW + safezoneX;
			y=0.62034 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.033 * safezoneH;
		};
		
		class TXT_R1: RscStructuredText
		{
			idc=15015;

			x=0.518562 * safezoneW + safezoneX;
			y=0.46062 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.033 * safezoneH;
		};
		
		class TXT_R2: RscStructuredText
		{
			idc=15016;

			x=0.518872 * safezoneW + safezoneX;
			y=0.51452 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.033 * safezoneH;
		};
		
		class TXT_R3: RscStructuredText
		{
			idc=15017;

			x=0.519491 * safezoneW + safezoneX;
			y=0.566 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.033 * safezoneH;
		};
		
		class TXT_R4: RscStructuredText
		{
			idc=15018;
			
			x=0.519491 * safezoneW + safezoneX;
			y=0.62012 * safezoneH + safezoneY;
			w=0.0876563 * safezoneW;
			h=0.033 * safezoneH;
		};
		
		class EDIT: RscEdit
		{
			idc=15019;

			x=0.490719 * safezoneW + safezoneX;
			y=0.41816 * safezoneH + safezoneY;
			w=0.103125 * safezoneW;
			h=0.022 * safezoneH;
		};
	};
};
