#define COMPAGNIES_LIST_IDC                  13000
#define COMPAGNIES_HEADER_IDC                13001
#define COMPAGNIES_MAP_IMAGE_IDC             13002
#define COMPAGNIES_MAP_FRAME_IDC             13003
#define COMPAGNIES_MAP_IDC                   13004
#define COMPAGNIES_SELECT_HEADER_IDC         13005
#define COMPAGNIES_SELECT_INFO_IDC           13006
#define COMPAGNIES_MYCOMPANY_IDC             13007
#define COMPAGNIES_SELECT_MEMBERS_HEADER_IDC 13008
#define COMPAGNIES_SELECT_MEMBERS_LIST_IDC   13009
#define COMPAGNIES_INFORMATIONS_IDC			 13010

COMPAGNIES_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
COMPAGNIES_IDCS[]=
{
	COMPAGNIES_LIST_IDC,
	COMPAGNIES_HEADER_IDC,
	COMPAGNIES_INFORMATIONS_IDC
};

class COMPAGNIES_LIST: RscCombo
{
	idc=COMPAGNIES_LIST_IDC;
	onLBSelChanged="_this spawn AlysiaClient_fnc_APP_compagnies_update;";
	colorBackground[]={0,0,0,1};

	x=0.324687 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.022 * safezoneH;
};
class COMPAGNIES_HEADER: RscStructuredText
{
	idc=COMPAGNIES_HEADER_IDC;
	text="<t align='center'>Entreprises</t>";
	colorBackground[]={0,0,0,0.8};
	
	x=0.324687 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.022 * safezoneH;
};

class COMPAGNIES_MAP_IMAGE: RscPicture
{
	idc=COMPAGNIES_MAP_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\tablet\backgrounds\vehicles_noSignal.jpg";

	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.264 * safezoneH;
};
class COMPAGNIES_MAP_FRAME: RscFrame
{
	idc=COMPAGNIES_MAP_FRAME_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.264 * safezoneH;
};
class COMPAGNIES_MAP: RscMapControl
{
	idc=COMPAGNIES_MAP_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.264 * safezoneH;
};

class COMPAGNIES_SELECT_HEADER: RscStructuredText
{
	idc=COMPAGNIES_SELECT_HEADER_IDC;
	colorBackground[]={0,0,0,0.8};

	x=0.515469 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.159844 * safezoneW;
	h=0.022 * safezoneH;
};
class COMPAGNIES_SELECT_INFO: RscStructuredText
{
	idc=COMPAGNIES_SELECT_INFO_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.515469 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.159844 * safezoneW;
	h=0.132 * safezoneH;
};
class COMPAGNIES_MYCOMPANY: RscButtonMenu
{
	idc=COMPAGNIES_MYCOMPANY_IDC;
	text="Mon entreprise";
	action="['COMPANY'] spawn AlysiaClient_fnc_tabletApp;";

	x=0.515469 * safezoneW + safezoneX;
	y=0.654 * safezoneH + safezoneY;
	w=0.0876563 * safezoneW;
	h=0.022 * safezoneH;
};
class COMPAGNIES_INFORMATIONS: RscButtonMenu
{
	idc=COMPAGNIES_INFORMATIONS_IDC;
	text="Informations";
	action="['COMPAGNIES_INFOLIST'] spawn AlysiaClient_fnc_tabletApp;";

	x=0.608281 * safezoneW + safezoneX;
	y=0.654 * safezoneH + safezoneY;
	w=0.0721875 * safezoneW;
	h=0.022 * safezoneH;
};

class COMPAGNIES_SELECT_MEMBERS_HEADER: RscStructuredText
{
	idc=COMPAGNIES_SELECT_MEMBERS_HEADER_IDC;
	colorBackground[]={0,0,0,0.8};

	x=0.515469 * safezoneW + safezoneX;
	y=0.522 * safezoneH + safezoneY;
	w=0.159844 * safezoneW;
	h=0.022 * safezoneH;
};
class COMPAGNIES_SELECT_MEMBERS_LIST: RscListbox
{
	idc=COMPAGNIES_SELECT_MEMBERS_LIST_IDC;
	onLBDblClick="[] spawn AlysiaClient_fnc_APP_compagnies_call;";

	x=0.515469 * safezoneW + safezoneX;
	y=0.544 * safezoneH + safezoneY;
	w=0.159844 * safezoneW;
	h=0.099 * safezoneH;
};

#define COMPANY_HEADER_FRAME_IDC            9600
#define COMPANY_HEADER_BACKGROUND_IDC       9601
#define COMPANY_HEADER_IMAGE_IDC            9602
#define COMPANY_HEADER_TITLE_IDC            9603
#define COMPANY_MEMBERS_FRAME_IDC           9604
#define COMPANY_MEMBERS_HEADER_IDC          9605
#define COMPANY_MEMBERS_LIST_IDC            9606
#define COMPANY_ACTION_HIRE_IMAGE_IDC       9607
#define COMPANY_ACTION_HIRE_BUTTON_IDC      9608
#define COMPANY_ACTION_LICENSE_IMAGE_IDC    9609
#define COMPANY_ACTION_LICENSE_BUTTON_IDC   9610
#define COMPANY_ACTION_PROMOTE_IMAGE_IDC    9611
#define COMPANY_ACTION_PROMOTE_BUTTON_IDC   9612
#define COMPANY_CAPITAL_FRAME_IDC           9613
#define COMPANY_CAPITAL_HEADER_IDC          9614
#define COMPANY_CAPITAL_INFO_IDC            9615
#define COMPANY_LEAVE_TEXT_IDC              9616
#define COMPANY_LEAVE_IMAGE_IDC             9617
#define COMPANY_LEAVE_BUTTON_IDC            9618
#define COMPANY_SELLPERCENTAGE_EDIT_IDC		9619
#define COMPANY_SELLPERCENTAGE_HEADER_IDC	9620
#define COMPANY_SELLPERCENTAGE_FRAME_IDC	9621
#define COMPANY_SELLPERCENTAGE_BUTTON_IDC   9622

COMPANY_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
COMPANY_IDCS[]=
{
	COMPANY_HEADER_FRAME_IDC,
	COMPANY_HEADER_BACKGROUND_IDC,
	COMPANY_HEADER_IMAGE_IDC,
	COMPANY_HEADER_TITLE_IDC,
	COMPANY_MEMBERS_FRAME_IDC,
	COMPANY_MEMBERS_HEADER_IDC,
	COMPANY_MEMBERS_LIST_IDC
};

class COMPANY_HEADER_FRAME: RscFrame
{
	idc=COMPANY_HEADER_FRAME_IDC;
	
	x=0.335 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.33 * safezoneW;
	h=0.066 * safezoneH;
};
class COMPANY_HEADER_BACKGROUND: RscText
{
	idc=COMPANY_HEADER_BACKGROUND_IDC;
	colorBackground[]={0,0,0,0.6};
	
	x=0.335 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.33 * safezoneW;
	h=0.066 * safezoneH;
};
class COMPANY_HEADER_IMAGE: RscPicture
{
	idc=COMPANY_HEADER_IMAGE_IDC;
	
	x=0.335 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.04125 * safezoneW;
	h=0.066 * safezoneH;
};
class COMPANY_HEADER_TITLE: RscStructuredText
{
	idc=COMPANY_HEADER_TITLE_IDC;
	
	x=0.379323 * safezoneW + safezoneX;
	y=0.37263 * safezoneH + safezoneY;
	w=0.268125 * safezoneW;
	h=0.033 * safezoneH;
};

class COMPANY_MEMBERS_FRAME: RscFrame
{
	idc=COMPANY_MEMBERS_FRAME_IDC;

	x=0.355625 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.221719 * safezoneW;
	h=0.231 * safezoneH;
};
class COMPANY_MEMBERS_HEADER: RscStructuredText
{
	idc=COMPANY_MEMBERS_HEADER_IDC;
	colorBackground[]={0,0,0,0.8};

	x=0.355625 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.221719 * safezoneW;
	h=0.022 * safezoneH;
};
class COMPANY_MEMBERS_LIST: RscListbox
{
	idc=COMPANY_MEMBERS_LIST_IDC;

	x=0.355625 * safezoneW + safezoneX;
	y=0.467 * safezoneH + safezoneY;
	w=0.221719 * safezoneW;
	h=0.209 * safezoneH;
};

class COMPANY_ACTION_HIRE_IMAGE: RscPicture
{
	idc=COMPANY_ACTION_HIRE_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\tablet\company\action_company_hire.paa";

	x=0.324687 * safezoneW + safezoneX;
	y=0.467 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class COMPANY_ACTION_HIRE_BUTTON: RscButtonSilent
{
	idc=COMPANY_ACTION_HIRE_BUTTON_IDC;
	action="ctrlShow[9607,false];ctrlShow[9608,false];[g_company, lbData[9606, lbCurSel 9606]] call AlysiaClient_fnc_company_member_kick;['COMPANY'] spawn AlysiaClient_fnc_tabletApp;";
	onMouseEnter="ctrlSetText[9607,'Alysia_Client_Texture\Data\tablet\company\action_company_hire_select.paa'];";
	onMouseExit="ctrlSetText[9607,'Alysia_Client_Texture\Data\tablet\company\action_company_hire.paa'];";
	tooltip="Renvoyer";

	x=0.324687 * safezoneW + safezoneX;
	y=0.467 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class COMPANY_ACTION_LICENSE_IMAGE: RscPicture
{
	idc=COMPANY_ACTION_LICENSE_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\tablet\company\action_license.paa";

	x=0.324687 * safezoneW + safezoneX;
	y=0.522 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class COMPANY_ACTION_LICENSE_BUTTON: RscButtonSilent
{
	idc=COMPANY_ACTION_LICENSE_BUTTON_IDC;
	action="ctrlShow[9609,false];ctrlShow[9610,false];[g_company, lbData[9606, lbCurSel 9606]] spawn AlysiaClient_fnc_company_member_license_give;['COMPANY'] spawn AlysiaClient_fnc_tabletApp;";
	onMouseEnter="ctrlSetText[9609,'Alysia_Client_Texture\Data\tablet\company\action_license_select.paa'];";
	onMouseExit="ctrlSetText[9609,'Alysia_Client_Texture\Data\tablet\company\action_license.paa'];";
	tooltip="Payer la license d'entreprise";

	x=0.324687 * safezoneW + safezoneX;
	y=0.522 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class COMPANY_ACTION_PROMOTE_IMAGE: RscPicture
{
	idc=COMPANY_ACTION_PROMOTE_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\tablet\company\action_promote.paa";

	x=0.324687 * safezoneW + safezoneX;
	y=0.577 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class COMPANY_ACTION_PROMOTE_BUTTON: RscButtonSilent
{
	idc=COMPANY_ACTION_PROMOTE_BUTTON_IDC;
	action="ctrlShow[9611,false];ctrlShow[9612,false];[g_company, lbData[9606, lbCurSel 9606]] call AlysiaClient_fnc_company_member_promote;['COMPANY'] spawn AlysiaClient_fnc_tabletApp;";
	onMouseEnter="ctrlSetText[9611,'Alysia_Client_Texture\Data\tablet\company\action_promote_select.paa'];";
	onMouseExit="ctrlSetText[9611,'Alysia_Client_Texture\Data\tablet\company\action_promote.paa'];";
	tooltip="Nommer DG de l'entreprise";

	x=0.324687 * safezoneW + safezoneX;
	y=0.577 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class COMPANY_CAPITAL_FRAME: RscFrame
{
	idc=COMPANY_CAPITAL_FRAME_IDC;

	x=0.592812 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.0825 * safezoneW;
	h=0.044 * safezoneH;
};
class COMPANY_CAPITAL_HEADER: RscStructuredText
{
	idc=COMPANY_CAPITAL_HEADER_IDC;
	text="<t align='center'>Compte</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.592812 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.0825 * safezoneW;
	h=0.022 * safezoneH;
};
class COMPANY_CAPITAL_INFO: RscStructuredText
{
	idc=COMPANY_CAPITAL_INFO_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.592812 * safezoneW + safezoneX;
	y=0.467 * safezoneH + safezoneY;
	w=0.0825 * safezoneW;
	h=0.022 * safezoneH;
};

class COMPANY_LEAVE_TEXT: RscStructuredText
{
	idc=COMPANY_LEAVE_TEXT_IDC;
	text="Démissionner";

	x=0.592812 * safezoneW + safezoneX;
	y=0.654 * safezoneH + safezoneY;
	w=0.0567187 * safezoneW;
	h=0.022 * safezoneH;
};
class COMPANY_LEAVE_IMAGE: RscPicture
{
	idc=COMPANY_LEAVE_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\global\option_exit.paa";

	x=0.649531 * safezoneW + safezoneX;
	y=0.643 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class COMPANY_LEAVE_BUTTON: RscButtonSilent
{
	idc=COMPANY_LEAVE_BUTTON_IDC;
	action="[] spawn AlysiaClient_fnc_APP_company_leave;";
	onMouseEnter="ctrlSetText[9617,'Alysia_Client_Texture\Data\global\option_exit_select.paa'];";
	onMouseExit="ctrlSetText[9617,'Alysia_Client_Texture\Data\global\option_exit.paa'];";

	x=0.649531 * safezoneW + safezoneX;
	y=0.643 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class COMPANY_SELLPERCENTAGE_FRAME: RscFrame
{
	idc=COMPANY_SELLPERCENTAGE_FRAME_IDC;

	x=0.592812 * safezoneW + safezoneX;
	y=0.5 * safezoneH + safezoneY;
	w=0.0825 * safezoneW;
	h=0.066 * safezoneH;
};
class COMPANY_SELLPERCENTAGE_HEADER: RscStructuredText
{
	idc=COMPANY_SELLPERCENTAGE_HEADER_IDC;
	colorBackground[]={0,0,0,0.8};
	text="<t align='center'>% de revente</t>";

	x=0.592812 * safezoneW + safezoneX;
	y=0.5 * safezoneH + safezoneY;
	w=0.0825 * safezoneW;
	h=0.022 * safezoneH;
};
class COMPANY_SELLPERCENTAGE_EDIT: RscEdit
{
	idc=COMPANY_SELLPERCENTAGE_EDIT_IDC;
	text="-1";

	x=0.592812 * safezoneW + safezoneX;
	y=0.522 * safezoneH + safezoneY;
	w=0.0825 * safezoneW;
	h=0.022 * safezoneH;
};
class COMPANY_SELLPERCENTAGE_BUTTON: RscButtonMenu
{
	idc=COMPANY_SELLPERCENTAGE_BUTTON_IDC;
	text="Appliquer";
	action="[parseNumber(ctrlText 9619)] call AlysiaClient_fnc_company_link_percentage_change;";

	x=0.592812 * safezoneW + safezoneX;
	y=0.544 * safezoneH + safezoneY;
	w=0.0825 * safezoneW;
	h=0.022 * safezoneH;
};

#define COMPAGNIES_INFOLIST_ICONE_IDC	94700
#define COMPAGNIES_INFOLIST_TITLE_IDC	94701
#define COMPAGNIES_INFOLIST_LIST_IDC	94702

COMPAGNIES_INFOLIST_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
COMPAGNIES_INFOLIST_IDCS[] =
{
	COMPAGNIES_INFOLIST_ICONE_IDC,
	COMPAGNIES_INFOLIST_TITLE_IDC,
	COMPAGNIES_INFOLIST_LIST_IDC
};

class COMPAGNIES_INFOLIST_ICONE: RscPicture
{
	idc=COMPAGNIES_INFOLIST_ICONE_IDC;
	text="Alysia_Client_Texture\Data\tablet\company\action_license.paa";

	x=0.324687 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class COMPAGNIES_INFOLIST_TITLE: RscStructuredText
{
	idc=COMPAGNIES_INFOLIST_TITLE_IDC;
	text="<t size='1.5'>Entreprises</t>";

	x=0.352969 * safezoneW + safezoneX;
	y=0.361519 * safezoneH + safezoneY;
	w=0.319688 * safezoneW;
	h=0.033 * safezoneH;
};
class COMPAGNIES_INFOLIST_LIST: RscListbox
{
	idc=COMPAGNIES_INFOLIST_LIST_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.350625 * safezoneW;
	h=0.275 * safezoneH;
};
