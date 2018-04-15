class RscDisplayShopVirtual: RscDisplayDefaultInteraction
{
	idd=2400;
	name="RscDisplayShopVirtual";

	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			text="Alysia_Client_Texture\Data\shops\background.jpg";

			x=0.242187 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=0.510469 * safezoneW;
			h=0.418 * safezoneH;
		};
		class FRAME: FRAME
		{
			x=0.242187 * safezoneW + safezoneX;
			y=0.313 * safezoneH + safezoneY;
			w=0.510469 * safezoneW;
			h=0.462 * safezoneH;
		};
	};
	
	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			idc=2401;

			x=0.242187 * safezoneW + safezoneX;
			y=0.313 * safezoneH + safezoneY;
			w=0.510469 * safezoneW;
			h=0.044 * safezoneH;
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME
		{
			x=0.21125 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND
		{
			x=0.21125 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE
		{
			x=0.218751 * safezoneW + safezoneX;
			y=0.356481 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON
		{
			action="if (!g_shop_active) then {closedialog 0};";

			x=0.21125 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
		};

		class BUYSELL_LIST_HEADER: RscStructuredText
		{
			idc=2402;
			colorBackground[]={0,0,0,1};
			
			x=0.2525 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.170156 * safezoneW;
			h=0.022 * safezoneH;
		};
		class BUYSELL_INFO_HEADER: RscStructuredText
		{
			idc=2403;
			colorBackground[]={0,0,0,1};

			x=0.252501 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.170156 * safezoneW;
			h=0.022 * safezoneH;
		};
		class BUYSELL_INFO: RscStructuredText
		{
			idc=2404;
			colorBackground[]={0,0,0,0.8};

			x=0.2525 * safezoneW + safezoneX;
			y=0.676 * safezoneH + safezoneY;
			w=0.170156 * safezoneW;
			h=0.088 * safezoneH;
		};
		class BUYSELL_FRAME: RscFrame
		{
			colorText[]={0,0,0,1};

			x=0.2525 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.170156 * safezoneW;
			h=0.396 * safezoneH;
		};
		class BUYSELL_LIST: RscListBox
		{
			idc=2405;
			onLBSelChanged="_this call AlysiaClient_fnc_shop_virtual_update_list_info;";

			x=0.2525 * safezoneW + safezoneX;
			y=0.39 * safezoneH + safezoneY;
			w=0.170156 * safezoneW;
			h=0.264 * safezoneH;
		};

		class TMP_HEADER: RscStructuredText
		{
			text="<t align='center'>Panier</t>";
			colorBackground[]={0,0,0,1};

			x=0.469062 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.273281 * safezoneW;
			h=0.022 * safezoneH;
		};
		class TMP_FRAME: RscFrame
		{
			colorText[]={0,0,0,1};

			x=0.469062 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.273281 * safezoneW;
			h=0.231 * safezoneH;
		};
		class TMP_LIST: RscListBox
		{
			idc=2406;
			onLBDblClick="_this spawn AlysiaClient_fnc_shop_virtual_remove;";

			x=0.469062 * safezoneW + safezoneX;
			y=0.39 * safezoneH + safezoneY;
			w=0.273281 * safezoneW;
			h=0.209 * safezoneH;
		};

		class TARGET_ADD_SINGLE_IMAGE: RscPicture
		{
			idc=2407;
			text="Alysia_Client_Texture\Data\shops\actions\action_target_single.paa";

			x=0.432969 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class TARGET_ADD_SINGLE_BUTTON: RscButtonSilent
		{
			idc=2408;
			action="[g_shop_mod,false,lbCurSel 2405] call AlysiaClient_fnc_shop_virtual_add;";
			onMouseEnter="ctrlSetText[2407,""Alysia_Client_Texture\Data\shops\actions\action_target_single_select.paa""];";
			onMouseExit="ctrlSetText[2407,""Alysia_Client_Texture\Data\shops\actions\action_target_single.paa""];";

			x=0.432969 * safezoneW + safezoneX;
			y=0.423 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class TARGET_ADD_DOUBLE_IMAGE: RscPicture
		{
			idc=2409;
			text="Alysia_Client_Texture\Data\shops\actions\action_target_double.paa";

			x=0.432969 * safezoneW + safezoneX;
			y=0.489 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class TARGET_ADD_DOUBLE_BUTTON: RscButtonSilent
		{
			idc=2410;
			action="[g_shop_mod,true,lbCurSel 2405] call AlysiaClient_fnc_shop_virtual_add;";
			onMouseEnter="ctrlSetText[2409,""Alysia_Client_Texture\Data\shops\actions\action_target_double_select.paa""];";
			onMouseExit="ctrlSetText[2409,""Alysia_Client_Texture\Data\shops\actions\action_target_double.paa""];";

			x=0.432969 * safezoneW + safezoneX;
			y=0.489 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};

		class MONEYWEIGHT_FRAME: RscFrame
		{
			colorText[]={0,0,0,1};

			x=0.427812 * safezoneW + safezoneX;
			y=0.61 * safezoneH + safezoneY;
			w=0.175313 * safezoneW;
			h=0.154 * safezoneH;
		};

		class MONEY_HEADER: RscStructuredText
		{
			text="<t align='center'>Informations monétaires</t>";
			colorBackground[]={0,0,0,1};

			x=0.427812 * safezoneW + safezoneX;
			y=0.61 * safezoneH + safezoneY;
			w=0.175313 * safezoneW;
			h=0.022 * safezoneH;
		};
		class MONEY_TYPES: RscStructuredText
		{
			text="Balance<br/>Bénéfice<br/>Perte";
			colorBackground[]={0,0,0,1};

			x=0.427812 * safezoneW + safezoneX;
			y=0.632 * safezoneH + safezoneY;
			w=0.0469271 * safezoneW;
			h=0.066 * safezoneH;
		};
		class MONEY_INFO: RscStructuredText
		{
			idc=2411;
			colorBackground[]={0,0,0,0.8};

			x=0.474219 * safezoneW + safezoneX;
			y=0.632 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.066 * safezoneH;
		};

		class WEIGHT_HEADER: RscStructuredText
		{
			text="<t align='center'>Informations sur votre poids</t>";
			colorBackground[]={0,0,0,1};

			x=0.427812 * safezoneW + safezoneX;
			y=0.698 * safezoneH + safezoneY;
			w=0.175313 * safezoneW;
			h=0.022 * safezoneH;
		};
		class WEIGHT_TYPES: RscStructuredText
		{
			text="Actuel<br/>Max";
			colorBackground[]={0,0,0,1};

			x=0.427812 * safezoneW + safezoneX;
			y=0.72 * safezoneH + safezoneY;
			w=0.0469271 * safezoneW;
			h=0.044 * safezoneH;
		};
		class WEIGHT_INFO: RscStructuredText
		{
			idc=2419;
			colorBackground[]={0,0,0,0.8};

			x=0.474219 * safezoneW + safezoneX;
			y=0.72 * safezoneH + safezoneY;
			w=0.128906 * safezoneW;
			h=0.044 * safezoneH;
		};

		class CATEGORY_BUY_TEXT: RscStructuredText
		{
			idc=2412;
			text="<t align='center' size='2' color='#FFFFFF'>Acheter</t>";
			colorBackground[]={0,0,0,1};

			x=0.149375 * safezoneW + safezoneX;
			y=0.434 * safezoneH + safezoneY;
			w=0.0928125 * safezoneW;
			h=0.044 * safezoneH;
		};
		class CATEGORY_BUY_BUTTON: RscButtonSilent
		{
			action="if (g_shop_active) exitWith {}; [0] call AlysiaClient_fnc_shop_virtual_update_mod;";
			onMouseEnter="((findDisplay 2400) displayCtrl 2412) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 2400) displayCtrl 2412) ctrlSetStructuredText parseText ""<t align='center' size='2' color='#000000'>Acheter</t>"";";
			onMouseExit="if (g_shop_mod != 0) then {((findDisplay 2400) displayCtrl 2412) ctrlSetBackgroundColor [0,0,0,1];((findDisplay 2400) displayCtrl 2412) ctrlSetStructuredText parseText ""<t align='center' size='2' color='#FFFFFF'>Acheter</t>"";}";

			x=0.149375 * safezoneW + safezoneX;
			y=0.434 * safezoneH + safezoneY;
			w=0.0928125 * safezoneW;
			h=0.044 * safezoneH;
		};

		class CATEGORY_SELL_TEXT: RscStructuredText
		{
			idc=2413;
			text="<t align='center' size='2'>Vendre</t>";
			colorBackground[]={0,0,0,1};

			x=0.149375 * safezoneW + safezoneX;
			y=0.489 * safezoneH + safezoneY;
			w=0.0928125 * safezoneW;
			h=0.044 * safezoneH;
		};
		class CATEGORY_SELL_BUTTON: RscButtonSilent
		{
			action="if (g_shop_active) exitWith {}; [1] call AlysiaClient_fnc_shop_virtual_update_mod;";
			onMouseEnter="((findDisplay 2400) displayCtrl 2413) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 2400) displayCtrl 2413) ctrlSetStructuredText parseText ""<t align='center' size='2' color='#000000'>Vendre</t>"";";
			onMouseExit="if (g_shop_mod != 1) then {((findDisplay 2400) displayCtrl 2413) ctrlSetBackgroundColor [0,0,0,1];((findDisplay 2400) displayCtrl 2413) ctrlSetStructuredText parseText ""<t align='center' size='2' color='#FFFFFF'>Vendre</t>"";}";

			x=0.149375 * safezoneW + safezoneX;
			y=0.489 * safezoneH + safezoneY;
			w=0.0928125 * safezoneW;
			h=0.044 * safezoneH;
		};

		class ACTION_VALIDATE_BACKGROUND: RscText
		{
			idc=2414;
			colorBackground[]={0,0,0,0.6};
			
			x=0.634062 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_VALIDATE_FRAME: RscFrame
		{
			idc=2415;
			
			x=0.634062 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_VALIDATE_TEXT: RscStructuredText
		{
			idc=2416;
			text="<t align='left' size='1.3' color='#FFFFFF'>Valider</t>";
			
			x=0.668229 * safezoneW + safezoneX;
			y=0.663852 * safezoneH + safezoneY;
			w=0.0464063 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_VALIDATE_IMAGE: RscPicture
		{
			idc=2417;
			text="Alysia_Client_Texture\Data\global\action_buy.paa";
			
			x=0.637188 * safezoneW + safezoneX;
			y=0.659148 * safezoneH + safezoneY;
			w=0.02625 * safezoneW;
			h=0.042963 * safezoneH;
		};
		class ACTION_VALIDATE_BUTTON: RscButtonSilent
		{
			idc=2418;
			action="[] spawn AlysiaClient_fnc_shop_virtual_buysell;";
			onMouseEnter="ctrlSetText[2417,""Alysia_Client_Texture\Data\global\action_buy_select.paa""];ctrlShow[2415,false];((findDisplay 2400) displayCtrl 2414) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 2400) displayCtrl 2416) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Valider</t>"";";
			onMouseExit="ctrlSetText[2417,""Alysia_Client_Texture\Data\global\action_buy.paa""];if (ctrlVisible 2417) then {ctrlShow[2415,true];};((findDisplay 2400) displayCtrl 2414) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 2400) displayCtrl 2416) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Valider</t>"";";

			x=0.634062 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.0825 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
