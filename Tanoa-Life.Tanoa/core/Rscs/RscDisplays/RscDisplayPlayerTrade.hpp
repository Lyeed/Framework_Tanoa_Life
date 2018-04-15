class RscDisplayPlayerTrade: RscDisplayDefaultInteraction
{
	idd=10000;
	name="RscDisplayPlayerTrade";

	class controlsBackground: DEFAULT_controlsBackground
	{
		class BACKGROUND: BACKGROUND
		{
			x=0.262812 * safezoneW + safezoneX;
			y=0.269 * safezoneH + safezoneY;
			w=0.474375 * safezoneW;
			h=0.561 * safezoneH;
		};
		class FRAME: FRAME
		{
			x=0.262812 * safezoneW + safezoneX;
			y=0.236 * safezoneH + safezoneY;
			w=0.474375 * safezoneW;
			h=0.594 * safezoneH;
		};
	};

	class controls: DEFAULT_controls
	{
		class TITLE: TITLE
		{
			text="<t size='1.5' align='center'>Echange</t>";

			x=0.262813 * safezoneW + safezoneX;
			y=0.236 * safezoneH + safezoneY;
			w=0.474375 * safezoneW;
			h=0.033 * safezoneH;
		};

		class OPTION_EXIT_FRAME: OPTION_EXIT_FRAME
		{
			x=0.231875 * safezoneW + safezoneX;
			y=0.28 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BACKGROUND: OPTION_EXIT_BACKGROUND
		{
			x=0.231875 * safezoneW + safezoneX;
			y=0.28 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_IMAGE: OPTION_EXIT_IMAGE
		{
			x=0.239614 * safezoneW + safezoneX;
			y=0.290664 * safezoneH + safezoneY;
		};
		class OPTION_EXIT_BUTTON: OPTION_EXIT_BUTTON
		{
			x=0.231875 * safezoneW + safezoneX;
			y=0.28 * safezoneH + safezoneY;
		};

		class OPTION_BACK_FRAME: OPTION_BACK_FRAME
		{
			x=0.231875 * safezoneW + safezoneX;
			y=0.335 * safezoneH + safezoneY;
		};
		class OPTION_BACK_BACKGROUND: OPTION_BACK_BACKGROUND
		{
			x=0.231875 * safezoneW + safezoneX;
			y=0.335 * safezoneH + safezoneY;
		};
		class OPTION_BACK_IMAGE: OPTION_BACK_IMAGE
		{
			x=0.239304 * safezoneW + safezoneX;
			y=0.34505 * safezoneH + safezoneY;
		};
		class OPTION_BACK_BUTTON: OPTION_BACK_BUTTON
		{
			x=0.231875 * safezoneW + safezoneX;
			y=0.335 * safezoneH + safezoneY;
		};

		class PLAYER_FRAME: RscFrame
		{
			x=0.278281 * safezoneW + safezoneX;
			y=0.28 * safezoneH + safezoneY;
			w=0.216563 * safezoneW;
			h=0.539 * safezoneH;
		};
		class PLAYER_HEADER: RscStructuredText
		{
			text="<t align='center'>Vous</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.278281 * safezoneW + safezoneX;
			y=0.28 * safezoneH + safezoneY;
			w=0.216563 * safezoneW;
			h=0.022 * safezoneH;
		};

		class PLAYER_INVENTORY_FRAME: RscFrame
		{
			x=0.283437 * safezoneW + safezoneX;
			y=0.313 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.198 * safezoneH;
		};
		class PLAYER_INVENTORY_HEADER: RscStructuredText
		{
			text="<t align='center'>Inventaire</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.283437 * safezoneW + safezoneX;
			y=0.313 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.022 * safezoneH;
		};
		class PLAYER_INVENTORY_LIST: RscListbox
		{
			idc=10019;

			x=0.283437 * safezoneW + safezoneX;
			y=0.335 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.176 * safezoneH;
		};
		class PLAYER_INVENTORY_ACTION_ADD_SINGLE_IMAGE: RscPicture
		{
			idc=10001;
			text="Alysia_Client_Texture\Data\trade\inventory_add_single.paa";

			x=0.432969 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class PLAYER_INVENTORY_ACTION_ADD_SINGLE_BUTTON: RscButtonSilent
		{
			idc=10002;
			action="[false] call AlysiaClient_fnc_interactionMenu_action_trade_add_inventory;";
			onMouseEnter="ctrlSetText[10001,""Alysia_Client_Texture\Data\trade\inventory_add_single_select.paa""];";
			onMouseExit="ctrlSetText[10001,""Alysia_Client_Texture\Data\trade\inventory_add_single.paa""];";

			x=0.432969 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class PLAYER_INVENTORY_ACTION_ADD_DOUBLE_IMAGE: RscPicture
		{
			idc=10003;
			text="Alysia_Client_Texture\Data\trade\inventory_add_double.paa";

			x=0.432969 * safezoneW + safezoneX;
			y=0.434 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class PLAYER_INVENTORY_ACTION_ADD_DOUBLE_BUTTON: RscButtonSilent
		{
			idc=10004;
			action="[true] call AlysiaClient_fnc_interactionMenu_action_trade_add_inventory;";
			onMouseEnter="ctrlSetText[10003,""Alysia_Client_Texture\Data\trade\inventory_add_double_select.paa""];";
			onMouseExit="ctrlSetText[10003,""Alysia_Client_Texture\Data\trade\inventory_add_double.paa""];";

			x=0.432969 * safezoneW + safezoneX;
			y=0.434 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};

		class PLAYER_KEY_BUILDING_FRAME: RscFrame
		{
			x=0.283437 * safezoneW + safezoneX;
			y=0.621 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.088 * safezoneH;
		};
		class PLAYER_KEY_BUILDING_HEADER: RscStructuredText
		{
			text="<t align='center'>Clefs batiments</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.283437 * safezoneW + safezoneX;
			y=0.621 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.022 * safezoneH;
		};
		class PLAYER_KEY_BUILDING_LIST: RscListbox
		{
			idc=10020;

			x=0.283437 * safezoneW + safezoneX;
			y=0.643 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.066 * safezoneH;
		};
		class PLAYER_KEY_BUILDING_ACTION_ADD_IMAGE: RscPicture
		{
			idc=10021;
			text="Alysia_Client_Texture\Data\trade\add.paa";

			x=0.432969 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class PLAYER_KEY_BUILDING_ACTION_ADD_BUTTON: RscButtonSilent
		{
			idc=10022;
			action="[] call AlysiaClient_fnc_interactionMenu_action_trade_add_key_buildings;";
			onMouseEnter="ctrlSetText[10022,'Alysia_Client_Texture\Data\trade\add_select.paa'];";
			onMouseExit="ctrlSetText[10022,'Alysia_Client_Texture\Data\trade\add.paa'];";

			x=0.432969 * safezoneW + safezoneX;
			y=0.654 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};

		class PLAYER_KEY_VEHICLES_FRAME: RscFrame
		{
			x=0.283437 * safezoneW + safezoneX;
			y=0.522 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.088 * safezoneH;
		};
		class PLAYER_KEY_VEHICLES_HEADER: RscStructuredText
		{
			text="<t align='center'>Clefs</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.283437 * safezoneW + safezoneX;
			y=0.522 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.022 * safezoneH;
		};
		class PLAYER_KEY_VEHICLES_LIST: RscListbox
		{
			idc=10005;

			x=0.283437 * safezoneW + safezoneX;
			y=0.544 * safezoneH + safezoneY;
			w=0.134062 * safezoneW;
			h=0.066 * safezoneH;
		};
		class PLAYER_KEY_VEHICLES_ACTION_ADD_IMAGE: RscPicture
		{
			idc=10006;
			text="Alysia_Client_Texture\Data\trade\add.paa";

			x=0.432969 * safezoneW + safezoneX;
			y=0.555 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class PLAYER_KEY_VEHICLES_ACTION_ADD_BUTTON: RscButtonSilent
		{
			idc=10007;
			action="[] call AlysiaClient_fnc_interactionMenu_action_trade_add_key_vehicles;";
			onMouseEnter="ctrlSetText[10006,'Alysia_Client_Texture\Data\trade\add_select.paa'];";
			onMouseExit="ctrlSetText[10006,'Alysia_Client_Texture\Data\trade\add.paa'];";

			x=0.432969 * safezoneW + safezoneX;
			y=0.555 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};

		class PLAYER_MONEY_FRAME: RscFrame
		{
			x=0.283437 * safezoneW + safezoneX;
			y=0.72 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.088 * safezoneH;
		};
		class PLAYER_MONEY_HEADER: RscStructuredText
		{
			text="<t align='center'>Porte feuille</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.283437 * safezoneW + safezoneX;
			y=0.72 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.022 * safezoneH;
		};
		class PLAYER_MONEY_EDIT: RscEdit
		{
			idc=10008;
			text="0";

			x=0.298906 * safezoneW + safezoneX;
			y=0.764 * safezoneH + safezoneY;
			w=0.118594 * safezoneW;
			h=0.022 * safezoneH;
		};
		class PLAYER_MONEY_ACTION_ADD_IMAGE: RscPicture
		{
			idc=10009;
			text="Alysia_Client_Texture\Data\trade\add.paa";

			x=0.432969 * safezoneW + safezoneX;
			y=0.753 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class PLAYER_MONEY_ACTION_ADD_BUTTON: RscButtonSilent
		{
			idc=10010;
			action="[] call AlysiaClient_fnc_interactionMenu_action_trade_add_money;";
			onMouseEnter="ctrlSetText[10009,""Alysia_Client_Texture\Data\trade\add_select.paa""];";
			onMouseExit="ctrlSetText[10009,""Alysia_Client_Texture\Data\trade\add.paa""];";

			x=0.432969 * safezoneW + safezoneX;
			y=0.753 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};

		class TRADE_FRAME: RscFrame
		{
			x=0.510312 * safezoneW + safezoneX;
			y=0.302 * safezoneH + safezoneY;
			w=0.216563 * safezoneW;
			h=0.44 * safezoneH;
		};
		class TRADE_HEADER: RscStructuredText
		{
			text="<t align='center'>A échanger</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.510312 * safezoneW + safezoneX;
			y=0.302 * safezoneH + safezoneY;
			w=0.216563 * safezoneW;
			h=0.022 * safezoneH;
		};

		class TRADE_LIST_FRAME: RscFrame
		{
			x=0.515469 * safezoneW + safezoneX;
			y=0.335 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.308 * safezoneH;
		};
		class TRADE_LIST_HEADER: RscStructuredText
		{
			text="<t align='center'>Liste</t>";
			colorBackground[]={0,0,0,0.8};
			
			x=0.515469 * safezoneW + safezoneX;
			y=0.335 * safezoneH + safezoneY;
			w=0.195937 * safezoneW;
			h=0.022 * safezoneH;
		};
		class TRADE_LIST_LIST: RscListbox
		{
			idc=10011;

			x=0.515469 * safezoneW + safezoneX;
			y=0.357 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.286 * safezoneH;
		};
		class TRADE_LIST_ACTION_REMOVE_IMAGE: RscPicture
		{
			idc=10012;
			text="Alysia_Client_Texture\Data\trade\delete.paa";

			x=0.670156 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class TRADE_LIST_ACTION_REMOVE_BUTTON: RscButtonSilent
		{
			idc=10013;
			action="[] call AlysiaClient_fnc_interactionMenu_action_trade_remove;";
			onMouseEnter="ctrlSetText[10012,""Alysia_Client_Texture\Data\trade\delete_select.paa""];";
			onMouseExit="ctrlSetText[10012,""Alysia_Client_Texture\Data\trade\delete.paa""];";

			x=0.670156 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};

		class ACTION_FRAME: RscFrame
		{
			idc=10014;

			x=0.561875 * safezoneW + safezoneX;
			y=0.676 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_BACKGROUND: RscStructuredText
		{
			idc=10015;
			colorBackground[]={0,0,0,0.6};

			x=0.561875 * safezoneW + safezoneX;
			y=0.676 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
		class ACTION_IMAGE: RscPicture
		{
			idc=10016;
			text="Alysia_Client_Texture\Data\interactions\player_to_player_basics\action_trade.paa";

			x=0.565119 * safezoneW + safezoneX;
			y=0.681354 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class ACTION_TEXT: RscStructuredText
		{
			idc=10017;
			text="<t align='left' size='1.3'>Echanger</t>";

			x=0.593907 * safezoneW + safezoneX;
			y=0.685222 * safezoneH + safezoneY;
			w=0.0721875 * safezoneW;
			h=0.033 * safezoneH;
		};
		class ACTION_BUTTON: RscButtonSilent
		{
			idc=10018;
			action="[] call AlysiaClient_fnc_interactionMenu_action_trade_propose;";
			onMouseEnter="ctrlSetText[10016,""Alysia_Client_Texture\Data\interactions\player_to_player_basics\action_trade_select.paa""];ctrlShow[10014, false];((findDisplay 10000) displayCtrl 10015) ctrlSetBackgroundColor [1,1,1,1];((findDisplay 10000) displayCtrl 10017) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Echanger</t>"";";
			onMouseExit="ctrlSetText[10016,""Alysia_Client_Texture\Data\interactions\player_to_player_basics\action_trade.paa""];ctrlShow[10014, true];((findDisplay 10000) displayCtrl 10015) ctrlSetBackgroundColor [0,0,0,0.6];((findDisplay 10000) displayCtrl 10017) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Echanger</t>"";";

			x=0.561875 * safezoneW + safezoneX;
			y=0.676 * safezoneH + safezoneY;
			w=0.108281 * safezoneW;
			h=0.055 * safezoneH;
		};
	};
};
