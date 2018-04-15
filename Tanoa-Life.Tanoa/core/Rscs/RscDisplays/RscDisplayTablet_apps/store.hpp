// Categories
#define STORE_CATEGORY_HEADER_IDC   8100
#define STORE_CATEGORY_INFO_IDC     8101
#define STORE_CATEGORY_FRAME_IDC    8102

STORE_BACKGROUND="Alysia_Client_Texture\Data\tablet\store\background.jpg";
STORE_IDCS[] =
{
	STORE_CATEGORY_HEADER_IDC,
	STORE_CATEGORY_INFO_IDC,
	STORE_CATEGORY_FRAME_IDC
};

class STORE_CATEGORY_HEADER: RscStructuredText
{
	idc=STORE_CATEGORY_HEADER_IDC;
	text="<t align='center'>Catégories</t";
	colorBackground[]={0,0,0,0.8};

	x=0.412344 * safezoneW + safezoneX;
	y=0.401 * safezoneH + safezoneY;
	w=0.165 * safezoneW;
	h=0.022 * safezoneH;
};
class STORE_CATEGORY_INFO: RscListbox
{
	idc=STORE_CATEGORY_INFO_IDC;
	colorPictureRightSelected[]={0, 0, 0, 1};
	onLBSelChanged="[(_this select 0) lbData (_this select 1)] spawn AlysiaClient_fnc_tabletApp;";
	rowHeight=0.1;

	x=0.412344 * safezoneW + safezoneX;
	y=0.423 * safezoneH + safezoneY;
	w=0.165 * safezoneW;
	h=0.209 * safezoneH;
};
class STORE_CATEGORY_FRAME: RscFrame
{
	idc=STORE_CATEGORY_FRAME_IDC;

	x=0.412344 * safezoneW + safezoneX;
	y=0.401 * safezoneH + safezoneY;
	w=0.165 * safezoneW;
	h=0.231 * safezoneH;
};

// Buy
#define STORE_BACK_IMAGE_IDC    8105
#define STORE_BACK_BUTTON_IDC   8106
#define STORE_TITLE_IDC         8107
#define STORE_ACTION_IMAGE_IDC  8108
#define STORE_ACTION_BUTTON_IDC 8109
#define STORE_LIST_IDC          8110
#define STORE_SELECTED_IDC      8111

class STORE_BACK_IMAGE: RscPicture
{
	idc=STORE_BACK_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\global\option_back.paa";

	x=0.324687 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
class STORE_BACK_BUTTON: RscButtonSilent
{
	idc=STORE_BACK_BUTTON_IDC;
	action="[""STORE""] spawn AlysiaClient_fnc_tabletApp;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\global\option_back_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\global\option_back.paa""];";
	tooltip="Retour";

	x=0.324687 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};

class STORE_TITLE: RscStructuredText
{
	idc=STORE_TITLE_IDC;

	x=0.355625 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.165 * safezoneW;
	h=0.066 * safezoneH;
};

class STORE_ACTION_IMAGE: RscPicture
{
	idc=STORE_ACTION_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\tablet\store\action_buy.paa";

	x=0.5825 * safezoneW + safezoneX;
	y=0.621 * safezoneH + safezoneY;
	w=0.0360937 * safezoneW;
	h=0.055 * safezoneH;
};
class STORE_ACTION_BUTTON: RscButtonSilent
{
	idc=STORE_ACTION_BUTTON_IDC;
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1, ""Alysia_Client_Texture\Data\tablet\store\action_buy_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1, ""Alysia_Client_Texture\Data\tablet\store\action_buy.paa""];";
	tooltip="Acheter";

	x=0.5825 * safezoneW + safezoneX;
	y=0.621 * safezoneH + safezoneY;
	w=0.0360937 * safezoneW;
	h=0.055 * safezoneH;
};
class STORE_LIST: RscListbox
{
	idc=STORE_LIST_IDC;
	colorBackground[]={1,1,1,0.2};
	rowHeight=0.05;

	x=0.360781 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.154687 * safezoneW;
	h=0.242 * safezoneH;
};

class STORE_SELECTED: RscStructuredText
{
	idc=STORE_SELECTED_IDC;

	x=0.525781 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.149531 * safezoneW;
	h=0.253 * safezoneH;
};

//Licences
STORE_LICENSES_BACKGROUND="Alysia_Client_Texture\Data\tablet\store\background.jpg";
STORE_LICENSES_IDCS[] =
{
	STORE_BACK_IMAGE_IDC,
	STORE_BACK_BUTTON_IDC,
	STORE_TITLE_IDC,
	STORE_LIST_IDC
};

//Applications
STORE_APPLICATIONS_BACKGROUND="Alysia_Client_Texture\Data\tablet\store\background.jpg";
STORE_APPLICATIONS_IDCS[] =
{
	STORE_BACK_IMAGE_IDC,
	STORE_BACK_BUTTON_IDC,
	STORE_TITLE_IDC,
	STORE_LIST_IDC
};

//Forfaits
STORE_FORFAIT_BACKGROUND="Alysia_Client_Texture\Data\tablet\store\background.jpg";
STORE_FORFAIT_IDCS[] =
{
	STORE_BACK_IMAGE_IDC,
	STORE_BACK_BUTTON_IDC,
	STORE_TITLE_IDC,
	STORE_LIST_IDC
};
