#define GOV_IMAGE_IDC        9700
#define GOV_TITLE_IDC        9701
#define GOV_INFO_IDC         9702
#define GOV_ACTION_TAXES_IDC 9703

GOV_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
GOV_IDCS[]=
{
	GOV_IMAGE_IDC,
	GOV_TITLE_IDC,
	GOV_INFO_IDC,
	GOV_ACTION_TAXES_IDC
};

class GOV_IMAGE: RscPicture
{
	idc=GOV_IMAGE_IDC;

	x=0.314375 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.0773437 * safezoneW;
	h=0.132 * safezoneH;
};

class GOV_TITLE: RscStructuredText
{
	idc=GOV_TITLE_IDC;

	x=0.391719 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.283594 * safezoneW;
	h=0.11 * safezoneH;
};

class GOV_INFO: RscStructuredText
{
	idc=GOV_INFO_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.478 * safezoneH + safezoneY;
	w=0.350625 * safezoneW;
	h=0.176 * safezoneH;
};

class GOV_ACTION_TAXES: RscButtonMenu
{
	idc=GOV_ACTION_TAXES_IDC;
	text="Gestions des taxes";
	action="['gov_taxes'] spawn AlysiaClient_fnc_tabletApp;";

	x=0.319531 * safezoneW + safezoneX;
	y=0.665 * safezoneH + safezoneY;
	w=0.108281 * safezoneW;
	h=0.022 * safezoneH;
};

#define GOV_TAXES_TITLE_IDC    9800
#define GOV_TAXES_LIST_IDC     9801
#define GOV_TAXES_EDIT_IDC     9802
#define GOV_TAXES_HEADER_IDC   9803
#define GOV_TAXES_BUTTON_IDC   9804

GOV_TAXES_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
GOV_TAXES_IDCS[]=
{
	GOV_TAXES_TITLE_IDC,
	GOV_TAXES_LIST_IDC,
	GOV_TAXES_EDIT_IDC,
	GOV_TAXES_HEADER_IDC,
	GOV_TAXES_BUTTON_IDC
};

class GOV_TAXES_TITLE: RscStructuredText
{
	idc=GOV_TAXES_TITLE_IDC;
	text="<t align='left' size='2.8' font='PuristaMedium'>Gestion des taxes</t>";

	x=0.324687 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.350625 * safezoneW;
	h=0.066 * safezoneH;
};
class GOV_TAXES_LIST: RscListbox
{
	idc=GOV_TAXES_LIST_IDC;
	colorBackground[]={0,0,0,0};
	onLBSelChanged="_this call AlysiaClient_fnc_APP_gov_taxes_update;";

	x=0.324687 * safezoneW + safezoneX;
	y=0.423 * safezoneH + safezoneY;
	w=0.195937 * safezoneW;
	h=0.264 * safezoneH;
};
class GOV_TAXES_EDIT: RscEdit
{
	idc=GOV_TAXES_EDIT_IDC;

	x=0.567031 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.0670312 * safezoneW;
	h=0.022 * safezoneH;
};
class GOV_TAXES_HEADER: RscStructuredText
{
	idc=GOV_TAXES_HEADER_IDC;
	text="<t align='center' size='1.8' font='PuristaMedium'>Modifier</t>";

	x=0.556719 * safezoneW + safezoneX;
	y=0.511 * safezoneH + safezoneY;
	w=0.0825 * safezoneW;
	h=0.033 * safezoneH;
};
class GOV_TAXES_BUTTON: RscButtonMenu
{
	idc=GOV_TAXES_BUTTON_IDC;
	text="Sauvegarder";
	action="[] call AlysiaClient_fnc_APP_gov_taxes_modify;";

	x=0.561874 * safezoneW + safezoneX;
	y=0.588 * safezoneH + safezoneY;
	w=0.0773437 * safezoneW;
	h=0.022 * safezoneH;
};
