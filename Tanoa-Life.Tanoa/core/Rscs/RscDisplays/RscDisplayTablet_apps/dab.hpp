#define DAB_LIST_IDC              9900
#define DAB_HEADER_IDC            9901
#define DAB_MAP_IMAGE_IDC         9902
#define DAB_MAP_FRAME_IDC         9903
#define DAB_MAP_IDC               9904
#define DAB_SELECT_FRAME_IDC      9905
#define DAB_SELECT_HEADER_IDC     9906
#define DAB_SELECT_TEXT_IDC       9907
#define DAB_DISTANCE_FRAME_IDC    9908
#define DAB_DISTANCE_HEADER_IDC   9909
#define DAB_DISTANCE_INFO_IDC     9910

DAB_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
DAB_IDCS[]=
{
	DAB_LIST_IDC,
	DAB_HEADER_IDC
};

class DAB_LIST: RscCombo
{
	idc=DAB_LIST_IDC;
	onLBSelChanged="_this spawn AlysiaClient_fnc_APP_dab_update;";

	x=0.324687 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.022 * safezoneH;
};
class DAB_HEADER: RscStructuredText
{
	idc=DAB_HEADER_IDC;
	colorBackground[]={0,0,0,0.8};
	text="<t align='center'>Distributeurs</t>";

	x=0.324687 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.022 * safezoneH;
};

class DAB_MAP_IMAGE: RscPicture
{
	idc=DAB_MAP_IMAGE_IDC;

	text="Alysia_Client_Texture\Data\tablet\backgrounds\vehicles_noSignal.jpg";
	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.264 * safezoneH;
};
class DAB_MAP_FRAME: RscFrame
{
	idc=DAB_MAP_FRAME_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.264 * safezoneH;
};
class DAB_MAP: RscMapControl
{
	idc=DAB_MAP_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.264 * safezoneH;
};

class DAB_SELECT_FRAME: RscFrame
{
	idc=DAB_SELECT_FRAME_IDC;

	x=0.525781 * safezoneW + safezoneX;
	y=0.5 * safezoneH + safezoneY;
	w=0.139219 * safezoneW;
	h=0.143 * safezoneH;
};
class DAB_SELECT_HEADER: RscStructuredText
{
	idc=DAB_SELECT_HEADER_IDC;
	text="<t align='center'>Informations</t>";
	colorBackground[]={0,0,0,1};

	x=0.525781 * safezoneW + safezoneX;
	y=0.5 * safezoneH + safezoneY;
	w=0.139219 * safezoneW;
	h=0.022 * safezoneH;
};
class DAB_SELECT_TEXT: RscStructuredText
{
	idc=DAB_SELECT_TEXT_IDC;
	colorBackground[]={0,0,0,0.8};

	x=0.525781 * safezoneW + safezoneX;
	y=0.522 * safezoneH + safezoneY;
	w=0.139219 * safezoneW;
	h=0.121 * safezoneH;
};

class DAB_DISTANCE_FRAME: RscFrame
{
	idc=DAB_DISTANCE_FRAME_IDC;

	x=0.536094 * safezoneW + safezoneX;
	y=0.423 * safezoneH + safezoneY;
	w=0.118594 * safezoneW;
	h=0.044 * safezoneH;
};
class DAB_DISTANCE_HEADER: RscStructuredText
{
	idc=DAB_DISTANCE_HEADER_IDC;
	text="<t align='center'>Distance</t>";
	colorBackground[]={0,0,0,1};

	x=0.536094 * safezoneW + safezoneX;
	y=0.423 * safezoneH + safezoneY;
	w=0.118594 * safezoneW;
	h=0.022 * safezoneH;
};
class DAB_DISTANCE_INFO: RscStructuredText
{
	idc=DAB_DISTANCE_INFO_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.536094 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.118594 * safezoneW;
	h=0.022 * safezoneH;
};
