class RscDisplayVirtualReduce: RscDisplayDefaultInteraction
{
	idd=91000;
	name="RscDisplayVirtualReduce";
	
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
			text="<t align='center' size='1.5'>Matériaux</t>";

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

		class REQUIRE_FRAME: RscFrame
		{
			x=0.329844 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.363 * safezoneH;
		};
		class REQUIRE_HEADER: RscStructuredText
		{
			text="<t align='center'>Types</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.329844 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.022 * safezoneH;
		};
		class REQUIRE_LIST: RscListbox
		{
			idc=91001;

			x=0.329844 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.341 * safezoneH;
		};

		class INVENTORY_FRAME: RscFrame
		{
			x=0.520625 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.363 * safezoneH;
		};
		class INVENTORY_HEADER: RscStructuredText
		{
			text="<t align='center'>Inventaire</t>";
			colorBackground[]={0,0,0,0.8};

			x=0.520625 * safezoneW + safezoneX;
			y=0.346 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.022 * safezoneH;
		};
		class INVENTORY_LIST: RscListbox
		{
			idc=91002;

			x=0.520625 * safezoneW + safezoneX;
			y=0.368 * safezoneH + safezoneY;
			w=0.139219 * safezoneW;
			h=0.341 * safezoneH;
		};

		class ACTION_IMAGE: RscPicture
		{
			idc=91003;
			text="Alysia_Client_Texture\Data\virtual_reduce\arrow_left.paa";

			x=0.479375 * safezoneW + safezoneX;
			y=0.489 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
		class ACTION_BUTTON: RscButtonSilent
		{
			idc=91004;
			action="[] call AlysiaClient_fnc_virtual_menu_reduce_action;";
			onMouseEnter="ctrlSetText[91003,""Alysia_Client_Texture\Data\virtual_reduce\arrow_left_select.paa""];";
			onMouseExit="ctrlSetText[91003,""Alysia_Client_Texture\Data\virtual_reduce\arrow_left.paa""];";

			x=0.479375 * safezoneW + safezoneX;
			y=0.489 * safezoneH + safezoneY;
			w=0.0257812 * safezoneW;
			h=0.044 * safezoneH;
		};
	};
};
