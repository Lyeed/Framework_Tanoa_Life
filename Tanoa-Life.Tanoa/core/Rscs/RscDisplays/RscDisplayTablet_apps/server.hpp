#define SERVER_SERVER_HEADER_IDC			7900
#define SERVER_SERVER_TIME_INFO_IDC			7901
#define SERVER_SERVER_NEXT_HEADER_IDC		7902
#define SERVER_SERVER_NEXT_INFO_IDC			7903
#define SERVER_SERVER_REBOOT_HEADER_IDC		7904
#define SERVER_SERVER_REBOOT_INFO_IDC		7905
#define SERVER_PLAYER_CONNECTED_HEADER_IDC	7906
#define SERVER_PLAYER_CONNECTED_INFO_IDC	7907
#define SERVER_SERVER_PLAYERS_HEADER_IDC	7908
#define SERVER_SERVER_PLAYERS_INFO_IDC		7909
#define SERVER_SERVER_FRAME_IDC				7910
#define SERVER_SERVER_TIME_HEADER_IDC		7911
#define SERVER_SERVER_BACKGROUND_IDC		7912
#define SERVER_PLAYER_HEADER_IDC			7913
#define SERVER_PLAYER_FRAME_IDC				7914

SERVER_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
SERVER_IDCS[] =
{
	SERVER_SERVER_HEADER_IDC,
	SERVER_SERVER_TIME_INFO_IDC,
	SERVER_SERVER_NEXT_HEADER_IDC,
	SERVER_SERVER_NEXT_INFO_IDC,
	SERVER_SERVER_REBOOT_HEADER_IDC,
	SERVER_SERVER_REBOOT_INFO_IDC,
	SERVER_PLAYER_CONNECTED_HEADER_IDC,
	SERVER_PLAYER_CONNECTED_INFO_IDC,
	SERVER_SERVER_PLAYERS_HEADER_IDC,
	SERVER_SERVER_PLAYERS_INFO_IDC,
	SERVER_SERVER_FRAME_IDC,
	SERVER_SERVER_TIME_HEADER_IDC,
	SERVER_SERVER_BACKGROUND_IDC,
	SERVER_PLAYER_HEADER_IDC,
	SERVER_PLAYER_FRAME_IDC
};

class SERVER_SERVER_HEADER: RscStructuredText
{
	idc=SERVER_SERVER_HEADER_IDC;
	text="<t align='center'>SERVEUR</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.381406 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.242344 * safezoneW;
	h=0.022 * safezoneH;
};
class SERVER_SERVER_FRAME: RscFrame
{
	idc=SERVER_SERVER_FRAME_IDC;

	x=0.381406 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.242344 * safezoneW;
	h=0.22 * safezoneH;
};
class SERVER_SERVER_BACKGROUND: RscText
{
	idc=SERVER_SERVER_BACKGROUND_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.381406 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.242344 * safezoneW;
	h=0.198 * safezoneH;
};

class SERVER_SERVER_TIME_HEADER: RscStructuredText
{
	idc=SERVER_SERVER_TIME_HEADER_IDC;
	text="<t align='center'>Démarré depuis</t>";

	x=0.381406 * safezoneW + safezoneX;
	y=0.401 * safezoneH + safezoneY;
	w=0.12375 * safezoneW;
	h=0.022 * safezoneH;
};
class SERVER_SERVER_TIME_INFO: RscStructuredText
{
	idc=SERVER_SERVER_TIME_INFO_IDC;

	x=0.505156 * safezoneW + safezoneX;
	y=0.401 * safezoneH + safezoneY;
	w=0.118594 * safezoneW;
	h=0.022 * safezoneH;
};

class SERVER_SERVER_NEXT_HEADER: RscStructuredText
{
	idc=SERVER_SERVER_NEXT_HEADER_IDC;
	text="<t align='center'>Prochain redémarrage</t>";

	x=0.381406 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.12375 * safezoneW;
	h=0.022 * safezoneH;
};
class SERVER_SERVER_NEXT_INFO: RscStructuredText
{
	idc=SERVER_SERVER_NEXT_INFO_IDC;

	x=0.505156 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.118594 * safezoneW;
	h=0.022 * safezoneH;
};

class SERVER_SERVER_REBOOT_HEADER: RscStructuredText
{
	idc=SERVER_SERVER_REBOOT_HEADER_IDC;
	text="<t align='center'>Heures de redémarrage</t>";

	x=0.381406 * safezoneW + safezoneX;
	y=0.489 * safezoneH + safezoneY;
	w=0.12375 * safezoneW;
	h=0.022 * safezoneH;
};
class SERVER_SERVER_REBOOT_INFO: RscStructuredText
{
	idc=SERVER_SERVER_REBOOT_INFO_IDC;

	x=0.505156 * safezoneW + safezoneX;
	y=0.489 * safezoneH + safezoneY;
	w=0.118594 * safezoneW;
	h=0.022 * safezoneH;
};

class SERVER_SERVER_PLAYERS_HEADER: RscStructuredText
{
	idc=SERVER_SERVER_PLAYERS_HEADER_IDC;
	text="<t align='center'>Joueurs connectés</t>";

	x=0.381406 * safezoneW + safezoneX;
	y=0.533 * safezoneH + safezoneY;
	w=0.12375 * safezoneW;
	h=0.022 * safezoneH;
};
class SERVER_SERVER_PLAYERS_INFO: RscStructuredText
{
	idc=SERVER_SERVER_PLAYERS_INFO_IDC;

	x=0.505156 * safezoneW + safezoneX;
	y=0.533 * safezoneH + safezoneY;
	w=0.118594 * safezoneW;
	h=0.022 * safezoneH;
};

class SERVER_PLAYER_HEADER: RscStructuredText
{
	idc=SERVER_PLAYER_HEADER_IDC;
	text="<t align='center'>VOUS</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.4175 * safezoneW + safezoneX;
	y=0.61 * safezoneH + safezoneY;
	w=0.165 * safezoneW;
	h=0.022 * safezoneH;
};
class SERVER_PLAYER_FRAME: RscFrame
{
	idc=SERVER_PLAYER_FRAME_IDC;

	x=0.4175 * safezoneW + safezoneX;
	y=0.61 * safezoneH + safezoneY;
	w=0.165 * safezoneW;
	h=0.044 * safezoneH;
};

class SERVER_PLAYER_CONNECTED_HEADER: RscStructuredText
{
	idc=SERVER_PLAYER_CONNECTED_HEADER_IDC;
	text="<t align='center'>Connecté depuis</t>";
	colorBackground[]={0,0,0,0.6};

	x=0.4175 * safezoneW + safezoneX;
	y=0.632 * safezoneH + safezoneY;
	w=0.0876563 * safezoneW;
	h=0.022 * safezoneH;
};
class SERVER_PLAYER_CONNECTED_INFO: RscStructuredText
{
	idc=SERVER_PLAYER_CONNECTED_INFO_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.505156 * safezoneW + safezoneX;
	y=0.632 * safezoneH + safezoneY;
	w=0.0773437 * safezoneW;
	h=0.022 * safezoneH;
};
