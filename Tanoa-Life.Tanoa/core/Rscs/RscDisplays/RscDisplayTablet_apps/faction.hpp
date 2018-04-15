#define FACTION_HEADER_IMAGE_IDC           8700
#define FACTION_HEADER_TITLE_IDC           8701
#define FACTION_HEADER_FRAME_IDC           8702
#define FACTION_HEADER_BACKGROUND_IDC      8703
#define FACTION_RANK_LIST_IDC              8704
#define FACTION_RANK_HEADER_IDC            8705
#define FACTION_RANK_FRAME_IDC             8706
#define FACTION_DUTY_FRAME_IDC             8707
#define FACTION_DUTY_HEADER_IDC            8708
#define FACTION_DUTY_LIST_IDC              8709
#define FACTION_OFFICE_BUTTON_IDC          8710

FACTION_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
FACTION_IDCS[]=
{
	FACTION_HEADER_IMAGE_IDC,
	FACTION_HEADER_TITLE_IDC,
	FACTION_HEADER_FRAME_IDC,
	FACTION_HEADER_BACKGROUND_IDC,
	FACTION_RANK_LIST_IDC,
	FACTION_RANK_HEADER_IDC,
	FACTION_RANK_FRAME_IDC,
	FACTION_DUTY_FRAME_IDC,
	FACTION_DUTY_HEADER_IDC,
	FACTION_DUTY_LIST_IDC,
	FACTION_OFFICE_BUTTON_IDC
};

class FACTION_HEADER_FRAME: RscFrame
{
	idc=FACTION_HEADER_FRAME_IDC;
	colorText[]={0,0,0,0.8};
	
	x=0.335 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.33 * safezoneW;
	h=0.066 * safezoneH;
};
class FACTION_HEADER_BACKGROUND: RscText
{
	idc=FACTION_HEADER_BACKGROUND_IDC;
	colorBackground[]={0,0,0,0.6};
	
	x=0.335 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.33 * safezoneW;
	h=0.066 * safezoneH;
};
class FACTION_HEADER_IMAGE: RscPicture
{
	idc=FACTION_HEADER_IMAGE_IDC;
	text="";
	
	x=0.335 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.04125 * safezoneW;
	h=0.066 * safezoneH;
};
class FACTION_HEADER_TITLE: RscStructuredText
{
	idc=FACTION_HEADER_TITLE_IDC;
	text="";
	colorBackground[]={0,0,0,0};
	
	x=0.379323 * safezoneW + safezoneX;
	y=0.37263 * safezoneH + safezoneY;
	w=0.268125 * safezoneW;
	h=0.033 * safezoneH;
};

class FACTION_RANK_FRAME: RscFrame
{
	idc=FACTION_RANK_FRAME_IDC;
	colorText[]={0,0,0,0.8};
	
	x=0.335 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.12375 * safezoneW;
	h=0.242 * safezoneH;
};
class FACTION_RANK_LIST: RscListbox
{
	idc=FACTION_RANK_LIST_IDC;
	colorBackground[]={0,0,0,0.6};
	
	x=0.335 * safezoneW + safezoneX;
	y=0.456 * safezoneH + safezoneY;
	w=0.12375 * safezoneW;
	h=0.22 * safezoneH;
};
class FACTION_RANK_HEADER: RscStructuredText
{
	idc=FACTION_RANK_HEADER_IDC;
	text="<t align='center'>Grades</t>";
	colorBackground[]={0,0,0,0.8};
	
	x=0.335 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.12375 * safezoneW;
	h=0.022 * safezoneH;
};

class FACTION_DUTY_FRAME: RscFrame
{
	idc=FACTION_DUTY_FRAME_IDC;

	x=0.479375 * safezoneW + safezoneX;
	y=0.489 * safezoneH + safezoneY;
	w=0.175313 * safezoneW;
	h=0.187 * safezoneH;
};
class FACTION_DUTY_HEADER: RscStructuredText
{
	idc=FACTION_DUTY_HEADER_IDC;
	text="<t align='center'>En service</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.479375 * safezoneW + safezoneX;
	y=0.489 * safezoneH + safezoneY;
	w=0.175313 * safezoneW;
	h=0.022 * safezoneH;
};
class FACTION_DUTY_LIST: RscListbox
{
	idc=FACTION_DUTY_LIST_IDC;

	x=0.479375 * safezoneW + safezoneX;
	y=0.511 * safezoneH + safezoneY;
	w=0.175313 * safezoneW;
	h=0.165 * safezoneH;
};

class FACTION_OFFICE_BUTTON: RscButtonMenu
{
	idc=FACTION_OFFICE_BUTTON_IDC;
	text="Bureau";
	colorBackground[]={0,0,0,0.8};
	action="ctrlEnable[8710, false];[] call AlysiaClient_fnc_APP_faction_leader_office;";
	tooltip="Réservé aux hauts gradés";

	x=0.530937 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.0721875 * safezoneW;
	h=0.022 * safezoneH;
};

#define FACTION_LEADER_OFFICE_CIVILIAN_FRAME_IDC    8730
#define FACTION_LEADER_OFFICE_CIVILIAN_HEADER_IDC   8731
#define FACTION_LEADER_OFFICE_CIVILIAN_LIST_IDC     8732
#define FACTION_LEADER_OFFICE_CIVILIAN_INVITE_IDC   8733
#define FACTION_LEADER_OFFICE_FACTION_FRAME_IDC     8734
#define FACTION_LEADER_OFFICE_FACTION_HEADER_IDC    8735
#define FACTION_LEADER_OFFICE_FACTION_LIST_IDC      8736
#define FACTION_LEADER_OFFICE_FACTION_EDIT_IDC      8737
#define FACTION_LEADER_OFFICE_FACTION_ACTION_IDC    8738
#define FACTION_LEADER_OFFICE_FACTION_HISTORY_IDC   8739
#define FACTION_LEADER_OFFICE_BACK_IMAGE_IDC        8740
#define FACTION_LEADER_OFFICE_BACK_BUTTON_IDC       8741

FACTION_LEADER_OFFICE_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
FACTION_LEADER_OFFICE_IDCS[]=
{
	FACTION_LEADER_OFFICE_CIVILIAN_FRAME_IDC,
	FACTION_LEADER_OFFICE_CIVILIAN_HEADER_IDC,
	FACTION_LEADER_OFFICE_CIVILIAN_LIST_IDC,
	FACTION_LEADER_OFFICE_CIVILIAN_INVITE_IDC,
	FACTION_LEADER_OFFICE_FACTION_FRAME_IDC,
	FACTION_LEADER_OFFICE_FACTION_HEADER_IDC,
	FACTION_LEADER_OFFICE_FACTION_LIST_IDC,
	FACTION_LEADER_OFFICE_FACTION_EDIT_IDC,
	FACTION_LEADER_OFFICE_FACTION_ACTION_IDC,
	FACTION_LEADER_OFFICE_FACTION_HISTORY_IDC,
	FACTION_LEADER_OFFICE_BACK_IMAGE_IDC,
	FACTION_LEADER_OFFICE_BACK_BUTTON_IDC
};

class FACTION_LEADER_OFFICE_CIVILIAN_FRAME: RscFrame
{
	idc=FACTION_LEADER_OFFICE_CIVILIAN_FRAME_IDC;
	colorText[]={0,0,0,0.6};
	
	x=0.329844 * safezoneW + safezoneX;
	y=0.401 * safezoneH + safezoneY;
	w=0.144375 * safezoneW;
	h=0.275 * safezoneH;
};
class FACTION_LEADER_OFFICE_CIVILIAN_HEADER: RscStructuredText
{
	idc=FACTION_LEADER_OFFICE_CIVILIAN_HEADER_IDC;
	text="<t align='center'>Civils</t>";
	colorBackground[]={0,0,0,0.8};
	
	x=0.329844 * safezoneW + safezoneX;
	y=0.401 * safezoneH + safezoneY;
	w=0.144375 * safezoneW;
	h=0.022 * safezoneH;
};
class FACTION_LEADER_OFFICE_CIVILIAN_LIST: RscListbox
{
	idc=FACTION_LEADER_OFFICE_CIVILIAN_LIST_IDC;
	colorBackground[]={0,0,0,0.6};
	
	x=0.329844 * safezoneW + safezoneX;
	y=0.423 * safezoneH + safezoneY;
	w=0.144375 * safezoneW;
	h=0.209 * safezoneH;
};
class FACTION_LEADER_OFFICE_CIVILIAN_INVITE: RscButtonMenu
{
	idc=FACTION_LEADER_OFFICE_CIVILIAN_INVITE_IDC;
	text="Recruter";
	onButtonClick="[] call AlysiaClient_fnc_APP_faction_leader_office_invite;";
	
	x=0.371094 * safezoneW + safezoneX;
	y=0.643 * safezoneH + safezoneY;
	w=0.0567187 * safezoneW;
	h=0.022 * safezoneH;
};

class FACTION_LEADER_OFFICE_FACTION_FRAME: RscFrame
{
	idc=FACTION_LEADER_OFFICE_FACTION_FRAME_IDC;
	colorText[]={0,0,0,0.6};
	
	x=0.479375 * safezoneW + safezoneX;
	y=0.401 * safezoneH + safezoneY;
	w=0.195937 * safezoneW;
	h=0.275 * safezoneH;
};
class FACTION_LEADER_OFFICE_FACTION_HEADER: RscStructuredText
{
	idc=FACTION_LEADER_OFFICE_FACTION_HEADER_IDC;
	text="<t align='center'>Membres actuels</t>";
	colorBackground[]={0,0,0,0.8};
	
	x=0.479375 * safezoneW + safezoneX;
	y=0.401 * safezoneH + safezoneY;
	w=0.195937 * safezoneW;
	h=0.022 * safezoneH;
};
class FACTION_LEADER_OFFICE_FACTION_LIST: RscListbox
{
	idc=FACTION_LEADER_OFFICE_FACTION_LIST_IDC;
	colorBackground[]={0,0,0,0.6};
	
	x=0.479375 * safezoneW + safezoneX;
	y=0.423 * safezoneH + safezoneY;
	w=0.195937 * safezoneW;
	h=0.209 * safezoneH;
};
class FACTION_LEADER_OFFICE_FACTION_EDIT: RscCombo
{
	idc=FACTION_LEADER_OFFICE_FACTION_EDIT_IDC;

	x=0.484531 * safezoneW + safezoneX;
	y=0.643 * safezoneH + safezoneY;
	w=0.12375 * safezoneW;
	h=0.022 * safezoneH;
};
class FACTION_LEADER_OFFICE_FACTION_ACTION: RscButtonMenu
{
	idc=FACTION_LEADER_OFFICE_FACTION_ACTION_IDC;
	text="Appliquer";
	onButtonClick="[] call AlysiaClient_fnc_APP_faction_leader_office_edit;";
	
	x=0.613437 * safezoneW + safezoneX;
	y=0.643 * safezoneH + safezoneY;
	w=0.0567187 * safezoneW;
	h=0.022 * safezoneH;
};

class FACTION_LEADER_OFFICE_FACTION_HISTORY: RscButtonMenu
{
	idc=FACTION_LEADER_OFFICE_FACTION_HISTORY_IDC;
	text="Historique d'achat";
	onButtonClick="ctrlEnable[8739, false];[player] remoteExecCall [""AlysiaServer_fnc_factionHistoryGet"", 2];";

	x=0.551562 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.108281 * safezoneW;
	h=0.022 * safezoneH;
};

class FACTION_LEADER_OFFICE_BACK_IMAGE: RscPicture
{
	idc=FACTION_LEADER_OFFICE_BACK_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\global\option_back.paa";

	x=0.321927 * safezoneW + safezoneX;
	y=0.350852 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
class FACTION_LEADER_OFFICE_BACK_BUTTON: RscButtonSilent
{
	idc=FACTION_LEADER_OFFICE_BACK_BUTTON_IDC;
	action="[""faction""] spawn AlysiaClient_fnc_tabletApp;";
	tooltip="Retour";

	x=0.321927 * safezoneW + safezoneX;
	y=0.350852 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};

#define FACTION_LEADER_HISTORY_LIST_IDC        8750
#define FACTION_LEADER_HISTORY_HEADER_IDC      8751
#define FACTION_LEADER_HISTORY_FRAME_IDC       8752
#define FACTION_LEADER_HISTORY_DELETEALL_IDC   8753
#define FACTION_LEADER_HISTORY_BACK_IMAGE_IDC  8754
#define FACTION_LEADER_HISTORY_BACK_BUTTON_IDC 8755

FACTION_LEADER_HISTORY_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
FACTION_LEADER_HISTORY_IDCS[]=
{
	FACTION_LEADER_HISTORY_LIST_IDC,
	FACTION_LEADER_HISTORY_HEADER_IDC,
	FACTION_LEADER_HISTORY_FRAME_IDC,
	FACTION_LEADER_HISTORY_DELETEALL_IDC,
	FACTION_LEADER_HISTORY_BACK_IMAGE_IDC,
	FACTION_LEADER_HISTORY_BACK_BUTTON_IDC
};

class FACTION_LEADER_HISTORY_LIST: RscListbox
{
	idc=FACTION_LEADER_HISTORY_LIST_IDC;
	colorBackground[]={0,0,0,0.6};
	
	x=0.329844 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.345469 * safezoneW;
	h=0.22 * safezoneH;
};
class FACTION_LEADER_HISTORY_HEADER: RscStructuredText
{
	idc=FACTION_LEADER_HISTORY_HEADER_IDC;
	text="<t align='center'>Historique</t>";
	colorBackground[]={0,0,0,0.8};
	
	x=0.329844 * safezoneW + safezoneX;
	y=0.39 * safezoneH + safezoneY;
	w=0.345469 * safezoneW;
	h=0.022 * safezoneH;
};
class FACTION_LEADER_HISTORY_FRAME: RscFrame
{
	idc=FACTION_LEADER_HISTORY_FRAME_IDC;
	colorText[]={0,0,0,0.8};
	
	x=0.329844 * safezoneW + safezoneX;
	y=0.39 * safezoneH + safezoneY;
	w=0.345469 * safezoneW;
	h=0.286 * safezoneH;
};
class FACTION_LEADER_HISTORY_DELETEALL: RscButtonMenu
{
	idc=FACTION_LEADER_HISTORY_DELETEALL_IDC;
	text="Tout supprimer";
	onButtonClick="[""FACTION""] spawn AlysiaClient_fnc_tabletApp;[player] remoteExecCall [""AlysiaServer_fnc_factionHistoryClean"", 2];";
	
	x=0.463906 * safezoneW + safezoneX;
	y=0.643 * safezoneH + safezoneY;
	w=0.0876563 * safezoneW;
	h=0.022 * safezoneH;
};

class FACTION_LEADER_HISTORY_BACK_IMAGE: RscPicture
{
	idc=FACTION_LEADER_HISTORY_BACK_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\global\option_back.paa";

	x=0.323124 * safezoneW + safezoneX;
	y=0.35237 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
class FACTION_LEADER_HISTORY_BACK_BUTTON: RscButtonSilent
{
	idc=FACTION_LEADER_HISTORY_BACK_BUTTON_IDC;
	action="ctrlEnable[8755, false];[] call AlysiaClient_fnc_APP_faction_leader_office;";
	tooltip="Retour";

	x=0.323124 * safezoneW + safezoneX;
	y=0.35237 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
