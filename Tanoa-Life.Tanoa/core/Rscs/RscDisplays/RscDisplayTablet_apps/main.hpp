#define APP_1_IMAGE_IDC            7510
#define APP_1_BUTTON_IDC           7511
#define APP_1_TITLE_IDC            7512
#define APP_2_IMAGE_IDC            7513
#define APP_2_BUTTON_IDC           7514
#define APP_2_TITLE_IDC            7515
#define APP_3_IMAGE_IDC            7516
#define APP_3_BUTTON_IDC           7517
#define APP_3_TITLE_IDC            7518
#define APP_4_IMAGE_IDC            7519
#define APP_4_BUTTON_IDC           7520
#define APP_4_TITLE_IDC            7521
#define APP_5_IMAGE_IDC            7522
#define APP_5_BUTTON_IDC           7523
#define APP_5_TITLE_IDC            7524
#define APP_6_IMAGE_IDC            7525
#define APP_6_BUTTON_IDC           7526
#define APP_6_TITLE_IDC            7527
#define APP_7_IMAGE_IDC            7528
#define APP_7_BUTTON_IDC           7529
#define APP_7_TITLE_IDC            7530
#define APP_8_IMAGE_IDC            7531
#define APP_8_BUTTON_IDC           7532
#define APP_8_TITLE_IDC            7533
#define APP_9_IMAGE_IDC            7534
#define APP_9_BUTTON_IDC           7535
#define APP_9_TITLE_IDC            7536

#define APP_NEXT_IMAGE_IDC         7540
#define APP_NEXT_BUTTON_IDC        7541
#define APP_PREV_IMAGE_IDC         7542
#define APP_PREV_BUTTON_IDC        7543

#define APP_INFORMATIONS_IDC       7550

#define APP_BONUS_1_BACKGROUND_IDC 7560
#define APP_BONUS_1_IMAGE_IDC      7561
#define APP_BONUS_1_BUTTON_IDC     7562
#define APP_BONUS_2_BACKGROUND_IDC 7563
#define APP_BONUS_2_IMAGE_IDC      7564
#define APP_BONUS_2_BUTTON_IDC     7565
#define APP_BONUS_3_BACKGROUND_IDC 7566
#define APP_BONUS_3_IMAGE_IDC      7567
#define APP_BONUS_3_BUTTON_IDC     7568
#define APP_BONUS_4_BACKGROUND_IDC 7569
#define APP_BONUS_4_IMAGE_IDC      7570
#define APP_BONUS_4_BUTTON_IDC     7571
#define APP_BONUS_5_BACKGROUND_IDC 7572
#define APP_BONUS_5_IMAGE_IDC      7573
#define APP_BONUS_5_BUTTON_IDC     7574

MAIN_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
MAIN_IDCS[]=
{
	APP_INFORMATIONS_IDC
};

class APP_INFORMATIONS: RscStructuredText
{
	idc=APP_INFORMATIONS_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.52578 * safezoneW + safezoneX;
	y=0.39 * safezoneH + safezoneY;
	w=0.154687 * safezoneW;
	h=0.297 * safezoneH;
};

class APP_1_IMAGE: RscPicture
{
	idc=APP_1_IMAGE_IDC;

	x=0.340156 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_1_BUTTON: RscButtonSilent
{
	idc=APP_1_BUTTON_IDC;

	x=0.340156 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_1_TITLE: RscStructuredText
{
	idc=APP_1_TITLE_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.061875 * safezoneW;
	h=0.022 * safezoneH;
};

class APP_2_IMAGE: RscPicture
{
	idc=APP_2_IMAGE_IDC;

	x=0.407187 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_2_BUTTON: RscButtonSilent
{
	idc=APP_2_BUTTON_IDC;

	x=0.407187 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_2_TITLE: RscStructuredText
{
	idc=APP_2_TITLE_IDC;

	x=0.391719 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.061875 * safezoneW;
	h=0.022 * safezoneH;
};

class APP_3_IMAGE: RscPicture
{
	idc=APP_3_IMAGE_IDC;

	x=0.474219 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_3_BUTTON: RscButtonSilent
{
	idc=APP_3_BUTTON_IDC;

	x=0.474219 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_3_TITLE: RscStructuredText
{
	idc=APP_3_TITLE_IDC;

	x=0.45875 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.061875 * safezoneW;
	h=0.022 * safezoneH;
};

class APP_4_IMAGE: RscPicture
{
	idc=APP_4_IMAGE_IDC;

	x=0.340156 * safezoneW + safezoneX;
	y=0.489 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_4_BUTTON: RscButtonSilent
{
	idc=APP_4_BUTTON_IDC;

	x=0.340156 * safezoneW + safezoneX;
	y=0.489 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_4_TITLE: RscStructuredText
{
	idc=APP_4_TITLE_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.544 * safezoneH + safezoneY;
	w=0.061875 * safezoneW;
	h=0.022 * safezoneH;
};

class APP_5_IMAGE: RscPicture
{
	idc=APP_5_IMAGE_IDC;

	x=0.407187 * safezoneW + safezoneX;
	y=0.489 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_5_BUTTON: RscButtonSilent
{
	idc=APP_5_BUTTON_IDC;

	x=0.407187 * safezoneW + safezoneX;
	y=0.489 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_5_TITLE: RscStructuredText
{
	idc=APP_5_TITLE_IDC;

	x=0.391719 * safezoneW + safezoneX;
	y=0.544 * safezoneH + safezoneY;
	w=0.061875 * safezoneW;
	h=0.022 * safezoneH;
};

class APP_6_IMAGE: RscPicture
{
	idc=APP_6_IMAGE_IDC;

	x=0.474219 * safezoneW + safezoneX;
	y=0.489 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_6_BUTTON: RscButtonSilent
{
	idc=APP_6_BUTTON_IDC;

	x=0.474219 * safezoneW + safezoneX;
	y=0.489 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_6_TITLE: RscStructuredText
{
	idc=APP_6_TITLE_IDC;

	x=0.45875 * safezoneW + safezoneX;
	y=0.544 * safezoneH + safezoneY;
	w=0.061875 * safezoneW;
	h=0.022 * safezoneH;
};

class APP_7_IMAGE: RscPicture
{
	idc=APP_7_IMAGE_IDC;

	x=0.340156 * safezoneW + safezoneX;
	y=0.599 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_7_BUTTON: RscButtonSilent
{
	idc=APP_7_BUTTON_IDC;

	x=0.340156 * safezoneW + safezoneX;
	y=0.599 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_7_TITLE: RscStructuredText
{
	idc=APP_7_TITLE_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.654 * safezoneH + safezoneY;
	w=0.061875 * safezoneW;
	h=0.022 * safezoneH;
};

class APP_8_IMAGE: RscPicture
{
	idc=APP_8_IMAGE_IDC;

	x=0.407187 * safezoneW + safezoneX;
	y=0.599 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_8_BUTTON: RscButtonSilent
{
	idc=APP_8_BUTTON_IDC;

	x=0.407187 * safezoneW + safezoneX;
	y=0.599 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_8_TITLE: RscStructuredText
{
	idc=APP_8_TITLE_IDC;

	x=0.391719 * safezoneW + safezoneX;
	y=0.654 * safezoneH + safezoneY;
	w=0.061875 * safezoneW;
	h=0.022 * safezoneH;
};

class APP_9_IMAGE: RscPicture
{
	idc=APP_9_IMAGE_IDC;

	x=0.474219 * safezoneW + safezoneX;
	y=0.599 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_9_BUTTON: RscButtonSilent
{
	idc=APP_9_BUTTON_IDC;

	x=0.474219 * safezoneW + safezoneX;
	y=0.599 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class APP_9_TITLE: RscStructuredText
{
	idc=APP_9_TITLE_IDC;

	x=0.45875 * safezoneW + safezoneX;
	y=0.654 * safezoneH + safezoneY;
	w=0.061875 * safezoneW;
	h=0.022 * safezoneH;
};

class APP_NEXT_IMAGE: RscPicture
{
	idc=APP_NEXT_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\tablet\app_main\right_arrow.paa";

	x=0.427812 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.0103125 * safezoneW;
	h=0.022 * safezoneH;
};
class APP_NEXT_BUTTON: RscButtonSilent
{
	idc=APP_NEXT_BUTTON_IDC;
	action="uiNamespace setVariable ['main_status', (uiNamespace getVariable ['main_status', 0]) + 1];['MAIN'] spawn AlysiaClient_fnc_tabletApp;";
	onMouseEnter="ctrlSetText[7540,""Alysia_Client_Texture\Data\tablet\app_main\right_arrow_select.paa""];";
	onMouseExit="ctrlSetText[7540,""Alysia_Client_Texture\Data\tablet\app_main\right_arrow.paa""];";

	x=0.427812 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.0103125 * safezoneW;
	h=0.022 * safezoneH;
};

class APP_PREV_IMAGE: RscPicture
{
	idc=APP_PREV_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\tablet\app_main\left_arrow.paa";

	x=0.407187 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.0103125 * safezoneW;
	h=0.022 * safezoneH;
};
class APP_PREV_BUTTON: RscButtonSilent
{
	idc=APP_PREV_BUTTON_IDC;
	action="uiNamespace setVariable ['main_status', (uiNamespace getVariable ['main_status', 0]) - 1];['MAIN'] spawn AlysiaClient_fnc_tabletApp;";
	onMouseEnter="ctrlSetText[7542,""Alysia_Client_Texture\Data\tablet\app_main\left_arrow_select.paa""];";
	onMouseExit="ctrlSetText[7542,""Alysia_Client_Texture\Data\tablet\app_main\left_arrow.paa""];";

	x=0.407187 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.0103125 * safezoneW;
	h=0.022 * safezoneH;
};

class APP_BONUS_1_BACKGROUND: RscStructuredText
{
	idc=APP_BONUS_1_BACKGROUND_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.528229 * safezoneW + safezoneX;
	y=0.351518 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
class APP_BONUS_1_IMAGE: RscPicture
{
	idc=APP_BONUS_1_IMAGE_IDC;

	x=0.530937 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.0154688 * safezoneW;
	h=0.022 * safezoneH;
};
class APP_BONUS_1_BUTTON: RscButtonSilent
{
	idc=APP_BONUS_1_BUTTON_IDC;

	x=0.528229 * safezoneW + safezoneX;
	y=0.351518 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};

class APP_BONUS_2_BACKGROUND: RscStructuredText
{
	idc=APP_BONUS_2_BACKGROUND_IDC;
	colorBackground[]={0,0,0,0.6};
	
	x=0.559375 * safezoneW + safezoneX;
	y=0.351852 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
class APP_BONUS_2_IMAGE: RscPicture
{
	idc=APP_BONUS_2_IMAGE_IDC;

	x=0.561875 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.0154688 * safezoneW;
	h=0.022 * safezoneH;
};
class APP_BONUS_2_BUTTON: RscButtonSilent
{
	idc=APP_BONUS_2_BUTTON_IDC;

	x=0.559375 * safezoneW + safezoneX;
	y=0.351852 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};

class APP_BONUS_3_BACKGROUND: RscStructuredText
{
	idc=APP_BONUS_3_BACKGROUND_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.590105 * safezoneW + safezoneX;
	y=0.351852 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
class APP_BONUS_3_IMAGE: RscPicture
{
	idc=APP_BONUS_3_IMAGE_IDC;

	x=0.592812 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.0154688 * safezoneW;
	h=0.022 * safezoneH;
};
class APP_BONUS_3_BUTTON: RscButtonSilent
{
	idc=APP_BONUS_3_BUTTON_IDC;

	x=0.590105 * safezoneW + safezoneX;
	y=0.351852 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};

class APP_BONUS_4_BACKGROUND: RscStructuredText
{
	idc=APP_BONUS_4_BACKGROUND_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.621354 * safezoneW + safezoneX;
	y=0.352778 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
class APP_BONUS_4_IMAGE: RscPicture
{
	idc=APP_BONUS_4_IMAGE_IDC;

	x=0.62375 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.0154688 * safezoneW;
	h=0.022 * safezoneH;
};
class APP_BONUS_4_BUTTON: RscButtonSilent
{
	idc=APP_BONUS_4_BUTTON_IDC;

	x=0.621354 * safezoneW + safezoneX;
	y=0.352778 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};

class APP_BONUS_5_BACKGROUND: RscStructuredText
{
	idc=APP_BONUS_5_BACKGROUND_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.652083 * safezoneW + safezoneX;
	y=0.351852 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
class APP_BONUS_5_IMAGE: RscPicture
{
	idc=APP_BONUS_5_IMAGE_IDC;

	x=0.654688 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.0154688 * safezoneW;
	h=0.022 * safezoneH;
};
class APP_BONUS_5_BUTTON: RscButtonSilent
{
	idc=APP_BONUS_5_BUTTON_IDC;

	x=0.652083 * safezoneW + safezoneX;
	y=0.351852 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
