#define VEHICLES_DATA_PICTURE_IDC        7700
#define VEHICLES_DATA_FRAME_IDC          7701
#define VEHICLES_DATA_MAP_IDC            7702
#define VEHICLES_LIST_FRAME_IDC          7703
#define VEHICLES_LIST_HEADER_IDC         7704
#define VEHICLES_LIST_INFO_IDC           7705
#define VEHICLES_DISTANCE_FRAME_IDC      7706
#define VEHICLES_DISTANCE_HEADER_IDC     7707
#define VEHICLES_DISTANCE_INFO_IDC       7708

VEHICLES_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
VEHICLES_IDCS[] =
{
	VEHICLES_LIST_FRAME_IDC,
	VEHICLES_LIST_HEADER_IDC,
	VEHICLES_LIST_INFO_IDC
};

class VEHICLES_DATA_PICTURE: RscPicture
{
	idc=VEHICLES_DATA_PICTURE_IDC;
	text="Alysia_Client_Texture\Data\tablet\backgrounds\vehicles_noSignal.jpg";

	x=0.494844 * safezoneW + safezoneX;
	y=0.456 * safezoneH + safezoneY;
	w=0.180469 * safezoneW;
	h=0.22 * safezoneH;
};
class VEHICLES_DATA_FRAME: RscFrame
{
	idc=VEHICLES_DATA_FRAME_IDC;

	x=0.494844 * safezoneW + safezoneX;
	y=0.456 * safezoneH + safezoneY;
	w=0.180469 * safezoneW;
	h=0.22 * safezoneH;
};
class VEHICLES_DATA_MAP: RscMapControl
{
	idc=VEHICLES_DATA_MAP_IDC;

	x=0.494844 * safezoneW + safezoneX;
	y=0.456 * safezoneH + safezoneY;
	w=0.180469 * safezoneW;
	h=0.22 * safezoneH;
};

class VEHICLES_LIST_FRAME: RscFrame
{
	idc=VEHICLES_LIST_FRAME_IDC;

	x=0.319531 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.170156 * safezoneW;
	h=0.33 * safezoneH;
};
class VEHICLES_LIST_HEADER: RscStructuredText
{
	idc=VEHICLES_LIST_HEADER_IDC;
	text="<t align='center'>Vos clefs</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.319531 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.170156 * safezoneW;
	h=0.022 * safezoneH;
};
class VEHICLES_LIST_INFO: RscListbox
{
	idc=VEHICLES_LIST_INFO_IDC;
	rowHeight=0.05;
	onLBSelChanged="_this spawn AlysiaClient_fnc_APP_vehicles_update;";

	x=0.319531 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.170156 * safezoneW;
	h=0.308 * safezoneH;
};

class VEHICLES_DISTANCE_FRAME: RscFrame
{
	idc=VEHICLES_DISTANCE_FRAME_IDC;

	x=0.536094 * safezoneW + safezoneX;
	y=0.368 * safezoneH + safezoneY;
	w=0.0928125 * safezoneW;
	h=0.077 * safezoneH;
};
class VEHICLES_DISTANCE_HEADER: RscStructuredText
{
	idc=VEHICLES_DISTANCE_HEADER_IDC;
	text="<t align='center'>Distance</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.536094 * safezoneW + safezoneX;
	y=0.368 * safezoneH + safezoneY;
	w=0.0928125 * safezoneW;
	h=0.022 * safezoneH;
};
class VEHICLES_DISTANCE_INFO: RscStructuredText
{
	idc=VEHICLES_DISTANCE_INFO_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.536094 * safezoneW + safezoneX;
	y=0.39 * safezoneH + safezoneY;
	w=0.0928125 * safezoneW;
	h=0.055 * safezoneH;
};
