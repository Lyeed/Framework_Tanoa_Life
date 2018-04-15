#define ANNOUNCES_CATEGORY_SHOW_TITLE_IDC   9500
#define ANNOUNCES_CATEGORY_SHOW_IMAGE_IDC   9501
#define ANNOUNCES_CATEGORY_SHOW_BUTTON_IDC  9502
#define ANNOUNCES_CATEGORY_WRITE_TITLE_IDC  9503
#define ANNOUNCES_CATEGORY_WRITE_IMAGE_IDC  9504
#define ANNOUNCES_CATEGORY_WRITE_BUTTON_IDC 9505

ANNOUNCES_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
ANNOUNCES_IDCS[]=
{
	ANNOUNCES_CATEGORY_SHOW_TITLE_IDC,
	ANNOUNCES_CATEGORY_SHOW_IMAGE_IDC,
	ANNOUNCES_CATEGORY_SHOW_BUTTON_IDC,
	ANNOUNCES_CATEGORY_WRITE_TITLE_IDC,
	ANNOUNCES_CATEGORY_WRITE_IMAGE_IDC,
	ANNOUNCES_CATEGORY_WRITE_BUTTON_IDC
};

class ANNOUNCES_CATEGORY_SHOW_TITLE: RscStructuredText
{
	idc=ANNOUNCES_CATEGORY_SHOW_TITLE_IDC;
	text="<t align='center' size='1.6'>Consulter les<br/>annonces</t>";

	x=0.37625 * safezoneW + safezoneX;
	y=0.544 * safezoneH + safezoneY;
	w=0.134062 * safezoneW;
	h=0.088 * safezoneH;
};
class ANNOUNCES_CATEGORY_SHOW_IMAGE: RscPicture
{
	idc=ANNOUNCES_CATEGORY_SHOW_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\tablet\announces\action_announces_show.paa";

	x=0.4175 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.0515625 * safezoneW;
	h=0.088 * safezoneH;
};
class ANNOUNCES_CATEGORY_SHOW_BUTTON: RscButtonSilent
{
	idc=ANNOUNCES_CATEGORY_SHOW_BUTTON_IDC;
	action="['ANNOUNCES_SHOW'] spawn AlysiaClient_fnc_tabletApp;";
	onMouseEnter="ctrlSetText[9501,""Alysia_Client_Texture\Data\tablet\announces\action_announces_show_select.paa""];";
	onMouseExit="ctrlSetText[9501,""Alysia_Client_Texture\Data\tablet\announces\action_announces_show.paa""];";

	x=0.4175 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.0515625 * safezoneW;
	h=0.088 * safezoneH;
};

class ANNOUNCES_CATEGORY_WRITE_TITLE: RscStructuredText
{
	idc=ANNOUNCES_CATEGORY_WRITE_TITLE_IDC;
	text="<t align='center' size='1.6'>Ecrire une<br/>annonce</t>";

	x=0.505156 * safezoneW + safezoneX;
	y=0.544 * safezoneH + safezoneY;
	w=0.134062 * safezoneW;
	h=0.088 * safezoneH;
};
class ANNOUNCES_CATEGORY_WRITE_IMAGE: RscPicture
{
	idc=ANNOUNCES_CATEGORY_WRITE_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\tablet\announces\action_announces_write.paa";

	x=0.551562 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.0515625 * safezoneW;
	h=0.088 * safezoneH;
};
class ANNOUNCES_CATEGORY_WRITE_BUTTON: RscButtonSilent
{
	idc=ANNOUNCES_CATEGORY_WRITE_BUTTON_IDC;
	action="['ANNOUNCES_WRITE'] spawn AlysiaClient_fnc_tabletApp;";
	onMouseEnter="ctrlSetText[9504,""Alysia_Client_Texture\Data\tablet\announces\action_announces_write_select.paa""];";
	onMouseExit="ctrlSetText[9504,""Alysia_Client_Texture\Data\tablet\announces\action_announces_write.paa""];";

	x=0.551562 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.0515625 * safezoneW;
	h=0.088 * safezoneH;
};

#define ANNOUNCES_BACK_IMAGE_IDC  9510
#define ANNOUNCES_BACK_BUTTON_IDC 9511

class ANNOUNCES_BACK_IMAGE: RscPicture
{
	idc=ANNOUNCES_BACK_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\global\option_back.paa";

	x=0.324687 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
class ANNOUNCES_BACK_BUTTON: RscButtonSilent
{
	idc=ANNOUNCES_BACK_BUTTON_IDC;
	action="['ANNOUNCES'] spawn AlysiaClient_fnc_tabletApp;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\global\option_back_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\global\option_back.paa""];";
	tooltip="Retour";

	x=0.324687 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};

#define ANNOUNCES_WRITE_TITLE_IDC          9520
#define ANNOUNCES_WRITE_INFOS_IDC          9521
#define ANNOUNCES_WRITE_PSEUDO_HEADER_IDC  9522
#define ANNOUNCES_WRITE_PSEUDO_EDIT_IDC    9523
#define ANNOUNCES_WRITE_MESSAGE_HEADER_IDC 9524
#define ANNOUNCES_WRITE_MESSAGE_EDIT_IDC   9525
#define ANNOUNCES_WRITE_ACTION_TITLE_IDC   9526
#define ANNOUNCES_WRITE_ACTION_IMAGE_IDC   9527
#define ANNOUNCES_WRITE_ACTION_BUTTON_IDC  9528
#define ANNOUNCES_WRITE_TITLE_HEADER_IDC   9529
#define ANNOUNCES_WRITE_TITLE_EDIT_IDC     9530

ANNOUNCES_WRITE_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
ANNOUNCES_WRITE_IDCS[]=
{
	ANNOUNCES_BACK_IMAGE_IDC,
	ANNOUNCES_BACK_BUTTON_IDC,
	ANNOUNCES_WRITE_TITLE_IDC,
	ANNOUNCES_WRITE_INFOS_IDC,
	ANNOUNCES_WRITE_PSEUDO_HEADER_IDC,
	ANNOUNCES_WRITE_PSEUDO_EDIT_IDC,
	ANNOUNCES_WRITE_MESSAGE_HEADER_IDC,
	ANNOUNCES_WRITE_MESSAGE_EDIT_IDC,
	ANNOUNCES_WRITE_TITLE_HEADER_IDC,
	ANNOUNCES_WRITE_TITLE_EDIT_IDC
};

class ANNOUNCES_WRITE_TITLE: RscStructuredText
{
	idc=ANNOUNCES_WRITE_TITLE_IDC;
	text="<t font='PuristaBold' size='2.5'>Ecrire une annonce</t>";

	x=0.412344 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.257813 * safezoneW;
	h=0.066 * safezoneH;
};
class ANNOUNCES_WRITE_INFOS: RscStructuredText
{
	idc=ANNOUNCES_WRITE_INFOS_IDC;

	x=0.396875 * safezoneW + safezoneX;
	y=0.423 * safezoneH + safezoneY;
	w=0.278437 * safezoneW;
	h=0.055 * safezoneH;
};

class ANNOUNCES_WRITE_PSEUDO_HEADER: RscStructuredText
{
	idc=ANNOUNCES_WRITE_PSEUDO_HEADER_IDC;
	text="<t font='PuristaBold' size='1.5'>Pseudo";

	x=0.453594 * safezoneW + safezoneX;
	y=0.467 * safezoneH + safezoneY;
	w=0.061875 * safezoneW;
	h=0.044 * safezoneH;
};
class ANNOUNCES_WRITE_PSEUDO_EDIT: RscEdit
{
	idc=ANNOUNCES_WRITE_PSEUDO_EDIT_IDC;

	x=0.515469 * safezoneW + safezoneX;
	y=0.478 * safezoneH + safezoneY;
	w=0.144375 * safezoneW;
	h=0.022 * safezoneH;
};

class ANNOUNCES_WRITE_MESSAGE_HEADER: RscStructuredText
{
	idc=ANNOUNCES_WRITE_MESSAGE_HEADER_IDC;
	text="<t font='PuristaBold' size='1.5'>Message";

	x=0.324687 * safezoneW + safezoneX;
	y=0.511 * safezoneH + safezoneY;
	w=0.108281 * safezoneW;
	h=0.044 * safezoneH;
};
class ANNOUNCES_WRITE_MESSAGE_EDIT: RscEdit
{
	idc=ANNOUNCES_WRITE_MESSAGE_EDIT_IDC;
	style=16;

	x=0.324688 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.273281 * safezoneW;
	h=0.121 * safezoneH;
};

class ANNOUNCES_WRITE_TITLE_HEADER: RscStructuredText
{
	idc=ANNOUNCES_WRITE_TITLE_HEADER_IDC;
	text="<t font='PuristaBold' size='1.5'>Titre";

	x=0.453594 * safezoneW + safezoneX;
	y=0.511 * safezoneH + safezoneY;
	w=0.061875 * safezoneW;
	h=0.044 * safezoneH;
};
class ANNOUNCES_WRITE_TITLE_EDIT: RscEdit
{
	idc=ANNOUNCES_WRITE_TITLE_EDIT_IDC;

	x=0.515469 * safezoneW + safezoneX;
	y=0.522 * safezoneH + safezoneY;
	w=0.144375 * safezoneW;
	h=0.022 * safezoneH;
};

class ANNOUNCES_WRITE_ACTION_TITLE: RscStructuredText
{
	idc=ANNOUNCES_WRITE_ACTION_TITLE_IDC;
	text="<t size='1.5'>Envoyer</t>";

	x=0.603125 * safezoneW + safezoneX;
	y=0.643 * safezoneH + safezoneY;
	w=0.0670312 * safezoneW;
	h=0.044 * safezoneH;
};
class ANNOUNCES_WRITE_ACTION_IMAGE: RscPicture
{
	idc=ANNOUNCES_WRITE_ACTION_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\tablet\announces\action_announces_write.paa";

	x=0.613437 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.0567187 * safezoneW;
	h=0.088 * safezoneH;
};
class ANNOUNCES_WRITE_ACTION_BUTTON: RscButtonSilent
{
	idc=ANNOUNCES_WRITE_ACTION_BUTTON_IDC;
	action="[] call AlysiaClient_fnc_APP_announces_write_action;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\tablet\announces\action_announces_write_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\tablet\announces\action_announces_write.paa""];";

	x=0.613437 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.0567187 * safezoneW;
	h=0.088 * safezoneH;
};

#define ANNOUNCES_SHOW_TITLE_IDC 9550
#define ANNOUNCES_SHOW_LIST_IDC  9551
#define ANNOUNCES_SHOW_INFO_IDC  9552

ANNOUNCES_SHOW_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
ANNOUNCES_SHOW_IDCS[]=
{
	ANNOUNCES_BACK_IMAGE_IDC,
	ANNOUNCES_BACK_BUTTON_IDC,
	ANNOUNCES_SHOW_TITLE_IDC,
	ANNOUNCES_SHOW_LIST_IDC
};

class ANNOUNCES_SHOW_TITLE: RscStructuredText
{
	idc=ANNOUNCES_SHOW_TITLE_IDC;
	text="<t font='PuristaBold' size='2.5'>Lire les annonces</t>";

	x=0.432969 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.237187 * safezoneW;
	h=0.055 * safezoneH;
};
class ANNOUNCES_SHOW_LIST: RscListbox
{
	idc=ANNOUNCES_SHOW_LIST_IDC;
	onLBSelChanged="_this call AlysiaClient_fnc_APP_announces_show_update;";

	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.350625 * safezoneW;
	h=0.132 * safezoneH;
};
class ANNOUNCES_SHOW_INFO: RscStructuredText
{
	idc=ANNOUNCES_SHOW_INFO_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.350625 * safezoneW;
	h=0.132 * safezoneH;
};
