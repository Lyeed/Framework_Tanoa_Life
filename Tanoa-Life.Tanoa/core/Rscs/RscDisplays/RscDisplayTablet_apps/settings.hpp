#define SETTINGS_FPS_HEADER_IDC					7800
#define SETTINGS_FPS_INFO_IDC					7801
#define SETTINGS_TASKFORCE_BACKGROUND_IDC		7817
#define SETTINGS_TASKFORCE_FRAME_IDC			7818
#define SETTINGS_TASKFORCE_SLIDER_IDC			7819
#define SETTINGS_TASKFORCE_HEADER_IDC			7820
#define SETTINGS_TASKFORCE_INFO_IDC				7821
#define SETTINGS_FPS_FRAME_IDC					7825
#define SETTINGS_TABLET_ANIMATION_HEADER_IDC    7826
#define SETTINGS_TABLET_ANIMATION_CHECKBOX_IDC  7827
#define SETTINGS_TABLET_ANIMATION_FRAME_IDC     7828
#define SETTINGS_FIX_CLOTHING_IDC               7829
#define SETTINGS_TABLET_HUD_HEADER_IDC          7830
#define SETTINGS_TABLET_HUD_FRAME_IDC           7831
#define SETTINGS_TABLET_HUD_CHECKBOX_IDC        7832

SETTINGS_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
SETTINGS_IDCS[] =
{
	SETTINGS_FPS_HEADER_IDC,
	SETTINGS_FPS_INFO_IDC,
	SETTINGS_FPS_FRAME_IDC,
	SETTINGS_TASKFORCE_BACKGROUND_IDC,
	SETTINGS_TASKFORCE_FRAME_IDC,
	SETTINGS_TASKFORCE_SLIDER_IDC,
	SETTINGS_TASKFORCE_HEADER_IDC,
	SETTINGS_TASKFORCE_INFO_IDC,
	SETTINGS_TABLET_ANIMATION_HEADER_IDC,
	SETTINGS_TABLET_ANIMATION_CHECKBOX_IDC,
	SETTINGS_TABLET_ANIMATION_FRAME_IDC,
	SETTINGS_TABLET_HUD_HEADER_IDC,
	SETTINGS_TABLET_HUD_FRAME_IDC,
	SETTINGS_TABLET_HUD_CHECKBOX_IDC
};

class SETTINGS_FPS_HEADER: RscStructuredText
{
	idc=SETTINGS_FPS_HEADER_IDC;
	font="PuristaSemiBold";
	text="<t align='center'>IPS</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.649531 * safezoneW + safezoneX;
	y=0.566 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.022 * safezoneH;
};
class SETTINGS_FPS_INFO: RscStructuredText
{
	idc=SETTINGS_FPS_INFO_IDC;
	font="PuristaSemiBold";
	colorBackground[]={0,0,0,0.6};

	x=0.649531 * safezoneW + safezoneX;
	y=0.588 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.022 * safezoneH;
};
class SETTINGS_FPS_FRAME: RscFrame
{
	idc=SETTINGS_FPS_FRAME_IDC;
	colorText[]={0,0,0,0.8};

	x=0.649531 * safezoneW + safezoneX;
	y=0.566 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.044 * safezoneH;
};

class SETTINGS_TASKFORCE_BACKGROUND: RscText
{
	idc=SETTINGS_TASKFORCE_BACKGROUND_IDC;
	colorBackground[]={0,0,0,0.6};
	
	x=0.4175 * safezoneW + safezoneX;
	y=0.577 * safezoneH + safezoneY;
	w=0.221719 * safezoneW;
	h=0.044 * safezoneH;
};
class SETTINGS_TASKFORCE_FRAME: RscFrame
{
	idc=SETTINGS_TASKFORCE_FRAME_IDC;
	colorText[]={0,0,0,0.8};

	x=0.4175 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.221719 * safezoneW;
	h=0.066 * safezoneH;
};
class SETTINGS_TASKFORCE_SLIDER: RscSlider
{
	idc=SETTINGS_TASKFORCE_SLIDER_IDC;
	onSliderPosChanged="player setVariable ['tf_globalVolume', ((_this select 1) / 100)];";

	x=0.422656 * safezoneW + safezoneX;
	y=0.588 * safezoneH + safezoneY;
	w=0.170156 * safezoneW;
	h=0.022 * safezoneH;
};
class SETTINGS_TASKFORCE_HEADER: RscStructuredText
{
	idc=SETTINGS_TASKFORCE_HEADER_IDC;
	font="PuristaSemiBold";
	text="<t align='center'>Volume des voix TaskForceRadio</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.4175 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.221719 * safezoneW;
	h=0.022 * safezoneH;
};
class SETTINGS_TASKFORCE_INFO: RscStructuredText
{
	idc=SETTINGS_TASKFORCE_INFO_IDC;
	font="PuristaSemiBold";
	colorBackground[]={0,0,0,0};

	x=0.597969 * safezoneW + safezoneX;
	y=0.588 * safezoneH + safezoneY;
	w=0.04125 * safezoneW;
	h=0.022 * safezoneH;
};

class SETTINGS_TABLET_ANIMATION_HEADER: RscStructuredText
{
	idc=SETTINGS_TABLET_ANIMATION_HEADER_IDC;
	text="<t align='center'>Animations tablette</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.324687 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.0876563 * safezoneW;
	h=0.022 * safezoneH;
};
class SETTINGS_TABLET_ANIMATION_FRAME: RscFrame
{
	idc=SETTINGS_TABLET_ANIMATION_FRAME_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.0876563 * safezoneW;
	h=0.055 * safezoneH;
};
class SETTINGS_TABLET_ANIMATION_CHECKBOX: RscCheckBox
{
	idc=SETTINGS_TABLET_ANIMATION_CHECKBOX_IDC;
	tooltip="Activer/désactiver les animations sur la tablette";

	x=0.355625 * safezoneW + safezoneX;
	y=0.577 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};

class SETTINGS_FIX_CLOTHING: RscButtonMenu
{
	idc=SETTINGS_FIX_CLOTHING_IDC;
	text="Fix tenue";
	action="[] spawn AlysiaClient_fnc_fixClothing;";

	x=0.324687 * safezoneW + safezoneX;
	y=0.522 * safezoneH + safezoneY;
	w=0.0876563 * safezoneW;
	h=0.022 * safezoneH;
};

class SETTINGS_TABLET_HUD_HEADER: RscStructuredText
{
	idc=SETTINGS_TABLET_HUD_HEADER_IDC;
	text="<t align='center' >Afficher l'interface</t>";
	colorBackground[]={0,0,0,0.8};
	
	x=0.324687 * safezoneW + safezoneX;
	y=0.621 * safezoneH + safezoneY;
	w=0.0876563 * safezoneW;
	h=0.022 * safezoneH;
};
class SETTINGS_TABLET_HUD_FRAME: RscFrame
{
	idc=SETTINGS_TABLET_HUD_FRAME_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.621 * safezoneH + safezoneY;
	w=0.0876563 * safezoneW;
	h=0.055 * safezoneH;
};
class SETTINGS_TABLET_HUD_CHECKBOX: RscCheckBox
{
	idc=SETTINGS_TABLET_HUD_CHECKBOX_IDC;
	tooltip="Activer/désactiver l'interface du jeu";

	x=0.355625 * safezoneW + safezoneX;
	y=0.643 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
