#define LICENSES_LIST_IDC    8600
#define LICENSES_HEADER_IDC  8601
#define LICENSES_FRAME_IDC   8602

LICENSES_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
LICENSES_IDCS[]=
{
	LICENSES_LIST_IDC,
	LICENSES_HEADER_IDC,
	LICENSES_FRAME_IDC
};

class LICENSES_LIST: RscListbox
{
	idc=LICENSES_LIST_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.412344 * safezoneW + safezoneX;
	y=0.401 * safezoneH + safezoneY;
	w=0.159844 * safezoneW;
	h=0.275 * safezoneH;
};
class LICENSES_HEADER: RscStructuredText
{
	idc=LICENSES_HEADER_IDC;
	text="<t align='center'>Licenses</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.412344 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.159844 * safezoneW;
	h=0.022 * safezoneH;
};
class LICENSES_FRAME: RscFrame
{
	idc=LICENSES_FRAME_IDC;
	colorText[]={0,0,0,0.8};

	x=0.412344 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.159844 * safezoneW;
	h=0.297 * safezoneH;
};