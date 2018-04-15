#define HELP_ACTIONS_HEADER_IDC	8200
#define HELP_ACTIONS_INFO_IDC	8201
#define HELP_ACTIONS_FRAME_IDC	8202
#define HELP_COMMAND_HEADER_IDC	8203
#define HELP_COMMAND_INFO_IDC	8204
#define HELP_COMMAND_FRAME_IDC	8205

HELP_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
HELP_IDCS[] =
{
	HELP_ACTIONS_HEADER_IDC,
	HELP_ACTIONS_INFO_IDC,
	HELP_ACTIONS_FRAME_IDC,
	HELP_COMMAND_HEADER_IDC,
	HELP_COMMAND_INFO_IDC,
	HELP_COMMAND_FRAME_IDC
};

class HELP_ACTIONS_HEADER: RscStructuredText
{
	idc=HELP_ACTIONS_HEADER_IDC;
	font="PuristaSemiBold";
	text="<t align='center'>Actions</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.324687 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.237187 * safezoneW;
	h=0.022 * safezoneH;
};
class HELP_ACTIONS_INFO: RscListbox
{
	idc=HELP_ACTIONS_INFO_IDC;
	colorBackground[]={0,0,0,0.6};
	onLBSelChanged="((findDisplay 7500) displayCtrl 8204) ctrlSetStructuredText parseText format[""<t align='center'>%1</t>"", (_this select 0) lbData (_this select 1)];";

	x=0.324687 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.237187 * safezoneW;
	h=0.297 * safezoneH;
};
class HELP_ACTIONS_FRAME: RscFrame
{
	idc=HELP_ACTIONS_FRAME_IDC;
	colorText[]={0,0,0,0.8};

	x=0.324687 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.237187 * safezoneW;
	h=0.319 * safezoneH;
};
class HELP_COMMAND_HEADER: RscStructuredText
{
	idc=HELP_COMMAND_HEADER_IDC;
	text="<t align='center'>Raccourcis</t>";
	colorBackground[]={0,0,0,0.8};
	
	x=0.5825 * safezoneW + safezoneX;
	y=0.467 * safezoneH + safezoneY;
	w=0.0876563 * safezoneW;
	h=0.022 * safezoneH;
};
class HELP_COMMAND_INFO: RscStructuredText
{
	idc=HELP_COMMAND_INFO_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.5825 * safezoneW + safezoneX;
	y=0.489 * safezoneH + safezoneY;
	w=0.0876563 * safezoneW;
	h=0.022 * safezoneH;
};
class HELP_COMMAND_FRAME: RscFrame
{
	idc=HELP_COMMAND_FRAME_IDC;
	colorText[]={0,0,0,0.8};
	
	x=0.5825 * safezoneW + safezoneX;
	y=0.467 * safezoneH + safezoneY;
	w=0.0876563 * safezoneW;
	h=0.044 * safezoneH;
};
