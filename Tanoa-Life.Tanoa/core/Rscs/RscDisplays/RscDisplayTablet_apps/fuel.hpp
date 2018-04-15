#define FUEL_STATIONS_LIST_IDC            9400
#define FUEL_STATIONS_HEADER_IDC          9401
#define FUEL_MAP_FRAME_IDC                9402
#define FUEL_SELECT_DATA_FRAME_IDC        9403
#define FUEL_SELECT_DATA_HEADER_IDC       9404
#define FUEL_SELECT_DATA_INFO_IDC         9405
#define FUEL_SELECT_DATA_TEXT_IDC         9411
#define FUEL_SELECT_DISTANCE_FRAME_IDC    9406
#define FUEL_SELECT_DISTANCE_HEADER_IDC   9407
#define FUEL_SELECT_DISTANCE_INFO_IDC     9408
#define FUEL_MAP_IDC                      9409
#define FUEL_MAP_IMAGE_IDC                9410

FUEL_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
FUEL_IDCS[]=
{
	FUEL_STATIONS_LIST_IDC,
	FUEL_STATIONS_HEADER_IDC
};

class FUEL_STATIONS_LIST: RscCombo
{
	idc=FUEL_STATIONS_LIST_IDC;
	onLBSelChanged="_this spawn AlysiaClient_fnc_APP_fuel_update;";
	colorBackground[]={0,0,0,1};

	x=0.324687 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.022 * safezoneH;
};
class FUEL_STATIONS_HEADER: RscStructuredText
{
	idc=FUEL_STATIONS_HEADER_IDC;
	text="<t align='center'>Stations services</t>";
	colorBackground[]={0,0,0,0.8};
	
	x=0.324687 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.022 * safezoneH;
};

class FUEL_MAP_IMAGE: RscPicture
{
	idc=FUEL_MAP_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\tablet\backgrounds\vehicles_noSignal.jpg";

	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.264 * safezoneH;
};
class FUEL_MAP_FRAME: RscFrame
{
	idc=FUEL_MAP_FRAME_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.264 * safezoneH;
};
class FUEL_MAP: RscMapControl
{
	idc=FUEL_MAP_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.264 * safezoneH;
};

class FUEL_SELECT_DATA_FRAME: RscFrame
{
	idc=FUEL_SELECT_DATA_FRAME_IDC;

	x=0.525781 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.139219 * safezoneW;
	h=0.143 * safezoneH;
};
class FUEL_SELECT_DATA_HEADER: RscStructuredText
{
	idc=FUEL_SELECT_DATA_HEADER_IDC;
	text="<t align='center'>Essences</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.525781 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.139219 * safezoneW;
	h=0.022 * safezoneH;
};
class FUEL_SELECT_DATA_INFO: RscCombo
{
	idc=FUEL_SELECT_DATA_INFO_IDC;
	onLBSelChanged="_this call AlysiaClient_fnc_APP_fuel_update_info;";
	colorBackground[]={0,0,0,1};

	x=0.525781 * safezoneW + safezoneX;
	y=0.467 * safezoneH + safezoneY;
	w=0.139219 * safezoneW;
	h=0.022 * safezoneH;
};
class FUEL_SELECT_DATA_TEXT: RscStructuredText
{
	idc=FUEL_SELECT_DATA_TEXT_IDC;
	colorBackground[]={0,0,0,0.8};
	
	x=0.525781 * safezoneW + safezoneX;
	y=0.489 * safezoneH + safezoneY;
	w=0.139219 * safezoneW;
	h=0.099 * safezoneH;
};

class FUEL_SELECT_DISTANCE_FRAME: RscFrame
{
	idc=FUEL_SELECT_DISTANCE_FRAME_IDC;

	x=0.536094 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.118594 * safezoneW;
	h=0.044 * safezoneH;
};
class FUEL_SELECT_DISTANCE_HEADER: RscStructuredText
{
	idc=FUEL_SELECT_DISTANCE_HEADER_IDC;
	text="<t align='center'>Distance</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.536094 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.118594 * safezoneW;
	h=0.022 * safezoneH;
};
class FUEL_SELECT_DISTANCE_INFO: RscStructuredText
{
	idc=FUEL_SELECT_DISTANCE_INFO_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.536094 * safezoneW + safezoneX;
	y=0.401 * safezoneH + safezoneY;
	w=0.118594 * safezoneW;
	h=0.022 * safezoneH;
};
