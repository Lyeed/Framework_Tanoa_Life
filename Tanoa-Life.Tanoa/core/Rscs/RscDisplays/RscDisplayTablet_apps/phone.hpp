#define PHONE_BACKGROUND                      "Alysia_Client_Texture\Data\phone\background_1.jpg"

#define PHONE_RETURN_IMAGE_IDC                8520
#define PHONE_RETURN_BUTTON_IDC               8521

class PHONE_RETURN_IMAGE: RscPicture
{
	idc=PHONE_RETURN_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\global\option_back.paa";

	x=0.324687 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
class PHONE_RETURN_BUTTON: RscButtonSilent
{
	idc=PHONE_RETURN_BUTTON_IDC;
	action="[""PHONE_CATEGORY""] spawn AlysiaClient_fnc_tabletApp;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\global\option_back_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\global\option_back.paa""];";
	tooltip="Retour";

	x=0.324687 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};

// =======================================[Main]=======================================
#define PHONE_CATEGORY_NUMBER_IDC           8500
#define PHONE_CATEGORY_FORFAIT_IDC          8501
#define PHONE_CATEGORY_APP_1_PICTURE_IDC 	8502
#define PHONE_CATEGORY_APP_1_BUTTON_IDC 	8503
#define PHONE_CATEGORY_APP_2_PICTURE_IDC 	8504
#define PHONE_CATEGORY_APP_2_BUTTON_IDC 	8505
#define PHONE_CATEGORY_APP_3_PICTURE_IDC 	8506
#define PHONE_CATEGORY_APP_3_BUTTON_IDC 	8507
#define PHONE_CATEGORY_APP_4_PICTURE_IDC 	8508
#define PHONE_CATEGORY_APP_4_BUTTON_IDC 	8509
#define PHONE_CATEGORY_APP_5_PICTURE_IDC 	8510
#define PHONE_CATEGORY_APP_5_BUTTON_IDC 	8511
#define PHONE_CATEGORY_APP_6_PICTURE_IDC 	8512
#define PHONE_CATEGORY_APP_6_BUTTON_IDC 	8513
#define PHONE_CATEGORY_APP_7_PICTURE_IDC 	8514
#define PHONE_CATEGORY_APP_7_BUTTON_IDC 	8515
#define PHONE_CATEGORY_APP_8_PICTURE_IDC 	8516
#define PHONE_CATEGORY_APP_8_BUTTON_IDC 	8517

PHONE_CATEGORY_BACKGROUND=PHONE_BACKGROUND;
PHONE_CATEGORY_IDCS[] =
{
	PHONE_CATEGORY_NUMBER_IDC,
	PHONE_CATEGORY_FORFAIT_IDC
};

class PHONE_CATEGORY_NUMBER: RscStructuredText
{
	idc=PHONE_CATEGORY_NUMBER_IDC;
	
	x=0.324687 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.154687 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CATEGORY_FORFAIT: RscStructuredText
{
	idc=PHONE_CATEGORY_FORFAIT_IDC;
	
	x=0.489688 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.185625 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CATEGORY_APP_1_PICTURE: RscPicture
{
	idc=PHONE_CATEGORY_APP_1_PICTURE_IDC;

	x=0.355625 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};
class PHONE_CATEGORY_APP_1_BUTTON: RscButtonSilent
{
	idc=PHONE_CATEGORY_APP_1_BUTTON_IDC;

	x=0.355625 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};

class PHONE_CATEGORY_APP_2_PICTURE: RscPicture
{
	idc=PHONE_CATEGORY_APP_2_PICTURE_IDC;

	x=0.443281 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};
class PHONE_CATEGORY_APP_2_BUTTON: RscButtonSilent
{
	idc=PHONE_CATEGORY_APP_2_BUTTON_IDC;

	x=0.443281 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};

class PHONE_CATEGORY_APP_3_PICTURE: RscPicture
{
	idc=PHONE_CATEGORY_APP_3_PICTURE_IDC;

	x=0.520625 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};
class PHONE_CATEGORY_APP_3_BUTTON: RscButtonSilent
{
	idc=PHONE_CATEGORY_APP_3_BUTTON_IDC;

	x=0.520625 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};

class PHONE_CATEGORY_APP_4_PICTURE: RscPicture
{
	idc=PHONE_CATEGORY_APP_4_PICTURE_IDC;

	x=0.597969 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};
class PHONE_CATEGORY_APP_4_BUTTON: RscButtonSilent
{
	idc=PHONE_CATEGORY_APP_4_BUTTON_IDC;

	x=0.597969 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};

class PHONE_CATEGORY_APP_5_PICTURE: RscPicture
{
	idc=PHONE_CATEGORY_APP_5_PICTURE_IDC;

	x=0.355625 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};
class PHONE_CATEGORY_APP_5_BUTTON: RscButtonSilent
{
	idc=PHONE_CATEGORY_APP_5_BUTTON_IDC;

	x=0.355625 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};

class PHONE_CATEGORY_APP_6_PICTURE: RscPicture
{
	idc=PHONE_CATEGORY_APP_6_PICTURE_IDC;

	x=0.443281 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};
class PHONE_CATEGORY_APP_6_BUTTON: RscButtonSilent
{
	idc=PHONE_CATEGORY_APP_6_BUTTON_IDC;

	x=0.443281 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};

class PHONE_CATEGORY_APP_7_PICTURE: RscPicture
{
	idc=PHONE_CATEGORY_APP_7_PICTURE_IDC;

	x=0.520625 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};
class PHONE_CATEGORY_APP_7_BUTTON: RscButtonSilent
{
	idc=PHONE_CATEGORY_APP_7_BUTTON_IDC;

	x=0.520625 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};

class PHONE_CATEGORY_APP_8_PICTURE: RscPicture
{
	idc=PHONE_CATEGORY_APP_8_PICTURE_IDC;

	x=0.597969 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};
class PHONE_CATEGORY_APP_8_BUTTON: RscButtonSilent
{
	idc=PHONE_CATEGORY_APP_8_BUTTON_IDC;

	x=0.597969 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.0464063 * safezoneW;
	h=0.077 * safezoneH;
};
/* ===================================================================================================================== */



// =======================================[Read]=======================================
#define PHONE_MESSAGE_READ_MESSAGE_FRAME_IDC 			8312
#define PHONE_MESSAGE_READ_MESSAGES_FRAME_IDC 			8313
#define PHONE_MESSAGE_READ_LIST_HEADER_IDC 				8319
#define PHONE_MESSAGE_READ_LIST_INFO_IDC 				8320
#define PHONE_MESSAGE_READ_MESSAGE_HEADER_IDC 			8321
#define PHONE_MESSAGE_READ_MESSAGE_INFO_IDC 			8322
#define PHONE_MESSAGE_READ_DELETE_MESSAGE_IMAGE_IDC 	8323
#define PHONE_MESSAGE_READ_DELETE_MESSAGE_BUTTON_IDC	8324
#define PHONE_MESSAGE_READ_DELETE_ALL_IMAGE_IDC 		8325
#define PHONE_MESSAGE_READ_DELETE_ALL_BUTTON_IDC 		8326
#define PHONE_MESSAGE_READ_ANSWER_IMAGE_IDC 			8315
#define PHONE_MESSAGE_READ_ANSWER_BUTTON_IDC 			8316
#define PHONE_MESSAGE_READ_ADD_IMAGE_IDC 				8327
#define PHONE_MESSAGE_READ_ADD_BUTTON_IDC 				8328

PHONE_MESSAGES_READ_BACKGROUND=PHONE_BACKGROUND;
PHONE_MESSAGES_READ_IDCS[] =
{
	PHONE_RETURN_IMAGE_IDC,
	PHONE_RETURN_BUTTON_IDC,
	PHONE_MESSAGE_READ_MESSAGES_FRAME_IDC,
	PHONE_MESSAGE_READ_LIST_HEADER_IDC,
	PHONE_MESSAGE_READ_LIST_INFO_IDC
};

class PHONE_MESSAGE_READ_MESSAGE_FRAME: RscFrame
{
	idc=PHONE_MESSAGE_READ_MESSAGE_FRAME_IDC;

	x=0.479375 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.201094 * safezoneW;
	h=0.176 * safezoneH;
};
class PHONE_MESSAGE_READ_MESSAGES_FRAME: RscFrame
{
	idc=PHONE_MESSAGE_READ_MESSAGES_FRAME_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.533 * safezoneH + safezoneY;
	w=0.355781 * safezoneW;
	h=0.154 * safezoneH;
};

class PHONE_MESSAGE_READ_LIST_HEADER: RscStructuredText
{
	idc=PHONE_MESSAGE_READ_LIST_HEADER_IDC;
	colorBackground[]={0,0,0,0.8};

	x=0.324687 * safezoneW + safezoneX;
	y=0.533 * safezoneH + safezoneY;
	w=0.355781 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_MESSAGE_READ_LIST_INFO: RscListBox
{
	idc=PHONE_MESSAGE_READ_LIST_INFO_IDC;
	onLBSelChanged="[_this select 0, _this select 1] call AlysiaClient_fnc_APP_phone_messages_read_open;";

	x=0.324687 * safezoneW + safezoneX;
	y=0.555 * safezoneH + safezoneY;
	w=0.355781 * safezoneW;
	h=0.132 * safezoneH;
};

class PHONE_MESSAGE_READ_MESSAGE_HEADER: RscStructuredText
{
	idc=PHONE_MESSAGE_READ_MESSAGE_HEADER_IDC;
	colorBackground[]={0,0,0,0.8};

	x=0.479375 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.201094 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_MESSAGE_READ_MESSAGE_INFO: RscStructuredText
{
	idc=PHONE_MESSAGE_READ_MESSAGE_INFO_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.479375 * safezoneW + safezoneX;
	y=0.368 * safezoneH + safezoneY;
	w=0.201094 * safezoneW;
	h=0.154 * safezoneH;
};

class PHONE_MESSAGE_READ_DELETE_MESSAGE_IMAGE: RscPicture
{
	idc=PHONE_MESSAGE_READ_DELETE_MESSAGE_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\read\remove.paa";

	x=0.324687 * safezoneW + safezoneX;
	y=0.467 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class PHONE_MESSAGE_READ_DELETE_MESSAGE_BUTTON: RscButtonSilent
{
	idc=PHONE_MESSAGE_READ_DELETE_MESSAGE_BUTTON_IDC;
	action="[0] call AlysiaClient_fnc_APP_phone_messages_read_delete;";
	tooltip="Supprimer le message sélectionné";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\read\remove_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\read\remove.paa""];";

	x=0.324687 * safezoneW + safezoneX;
	y=0.467 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};

class PHONE_MESSAGE_READ_DELETE_ALL_IMAGE: RscPicture
{
	idc=PHONE_MESSAGE_READ_DELETE_ALL_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\read\remove_all.paa";

	x=0.360781 * safezoneW + safezoneX;
	y=0.467 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class PHONE_MESSAGE_READ_DELETE_ALL_BUTTON: RscButtonSilent
{
	idc=PHONE_MESSAGE_READ_DELETE_ALL_BUTTON_IDC;
	action="[1] call AlysiaClient_fnc_APP_phone_messages_read_delete;";
	tooltip="Supprimer tous les messages";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\read\remove_all_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\read\remove_all.paa""];";

	x=0.360781 * safezoneW + safezoneX;
	y=0.467 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};

class PHONE_MESSAGE_READ_ANSWER_IMAGE: RscPicture
{
	idc=PHONE_MESSAGE_READ_ANSWER_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\contacts\send.paa";

	x=0.438125 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class PHONE_MESSAGE_READ_ANSWER_BUTTON: RscButtonSilent
{
	idc=PHONE_MESSAGE_READ_ANSWER_BUTTON_IDC;
	action="private[""_index""];_index=lbCurSel 8320;if (_index isEqualTo -1) exitWith {};[""phone_messages_send""] spawn AlysiaClient_fnc_tabletApp;ctrlSetText[8336, (g_phone_messages select _index) select 0];";
	tooltip="Répondre";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\contacts\send_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\contacts\send.paa""];";

	x=0.438125 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};

class PHONE_MESSAGE_READ_ADD_IMAGE: RscPicture
{
	idc=PHONE_MESSAGE_READ_ADD_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\contacts\add.paa";

	x=0.438125 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
class PHONE_MESSAGE_READ_ADD_BUTTON: RscButtonSilent
{
	idc=PHONE_MESSAGE_READ_ADD_BUTTON_IDC;
	action="private[""_index""];_index=lbCurSel 8320;if (_index isEqualTo -1) exitWith {};[""phone_contacts""] spawn AlysiaClient_fnc_tabletApp;ctrlSetText[8384, (g_phone_messages select _index) select 0];";
	tooltip="Ajouter aux contacts";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\contacts\add_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\contacts\add.paa""];";

	x=0.438125 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.0309375 * safezoneW;
	h=0.055 * safezoneH;
};
/* ===================================================================================================================== */

// =======================================[Send]=======================================
#define PHONE_MESSAGE_SEND_CONTACTS_HEADER_IDC 	8331
#define PHONE_MESSAGE_SEND_CONTACTS_LIST_IDC 	8332
#define PHONE_MESSAGE_SEND_CONTACTS_FRAME_IDC 	8344
#define PHONE_MESSAGE_SEND_MESSAGE_HEADER_IDC 	8333
#define PHONE_MESSAGE_SEND_MESSAGE_INFO_IDC 	8334
#define PHONE_MESSAGE_SEND_NUMBER_HEADER_IDC 	8335
#define PHONE_MESSAGE_SEND_NUMBER_INFO_IDC      8336
#define PHONE_MESSAGE_SEND_NUMBER_FRAME_IDC 	8342
#define PHONE_MESSAGE_SEND_HIDE_HEADER_IDC 		8337
#define PHONE_MESSAGE_SEND_HIDE_INFO_IDC 		8338
#define PHONE_MESSAGE_SEND_HIDE_FRAME_IDC 		8341
#define PHONE_MESSAGE_SEND_IMAGE_IDC 			8339
#define PHONE_MESSAGE_SEND_BUTTON_IDC 			8340
#define PHONE_MESSAGE_SEND_PRICE_FRAME_IDC 		8343
#define PHONE_MESSAGE_SEND_PRICE_HEADER_IDC 	8346
#define PHONE_MESSAGE_SEND_PRICE_INFO_IDC 		8345

PHONE_MESSAGES_SEND_BACKGROUND=PHONE_BACKGROUND;
PHONE_MESSAGES_SEND_IDCS[] =
{
	PHONE_RETURN_IMAGE_IDC,
	PHONE_RETURN_BUTTON_IDC,
	PHONE_MESSAGE_SEND_CONTACTS_HEADER_IDC,
	PHONE_MESSAGE_SEND_CONTACTS_LIST_IDC,
	PHONE_MESSAGE_SEND_CONTACTS_FRAME_IDC,
	PHONE_MESSAGE_SEND_MESSAGE_HEADER_IDC,
	PHONE_MESSAGE_SEND_MESSAGE_INFO_IDC,
	PHONE_MESSAGE_SEND_NUMBER_HEADER_IDC,
	PHONE_MESSAGE_SEND_NUMBER_INFO_IDC,
	PHONE_MESSAGE_SEND_NUMBER_FRAME_IDC,
	PHONE_MESSAGE_SEND_IMAGE_IDC,
	PHONE_MESSAGE_SEND_BUTTON_IDC,
	PHONE_MESSAGE_SEND_PRICE_FRAME_IDC,
	PHONE_MESSAGE_SEND_PRICE_HEADER_IDC,
	PHONE_MESSAGE_SEND_PRICE_INFO_IDC
};

class PHONE_MESSAGE_SEND_CONTACTS_HEADER: RscStructuredText
{
	idc=PHONE_MESSAGE_SEND_CONTACTS_HEADER_IDC;
	text="<t align='center'>Contacts</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.324687 * safezoneW + safezoneX;
	y=0.39 * safezoneH + safezoneY;
	w=0.0979687 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_MESSAGE_SEND_CONTACTS_LIST: RscListBox
{
	idc=PHONE_MESSAGE_SEND_CONTACTS_LIST_IDC;
	onLBSelChanged ="private[""_txt"", ""_index""];_index=_this select 1;if (_index isEqualTo -1) exitWith {};_txt=ctrlText 8336;if (_txt isEqualTo """") then {ctrlSetText[8336, (_this select 0) lbData _index];		} else {ctrlSetText[8336, format[""%1,%2"", _txt, (_this select 0) lbData _index]];		};";

	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.0979687 * safezoneW;
	h=0.264 * safezoneH;
};
class PHONE_MESSAGE_SEND_CONTACTS_FRAME: RscFrame
{
	idc=PHONE_MESSAGE_SEND_CONTACTS_FRAME_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.39 * safezoneH + safezoneY;
	w=0.0979687 * safezoneW;
	h=0.286 * safezoneH;
};

class PHONE_MESSAGE_SEND_MESSAGE_HEADER: RscStructuredText
{
	idc=PHONE_MESSAGE_SEND_MESSAGE_HEADER_IDC;
	text="<t align='center'>Message</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.427812 * safezoneW + safezoneX;
	y=0.489 * safezoneH + safezoneY;
	w=0.252656 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_MESSAGE_SEND_MESSAGE_INFO: RscEdit
{
	idc=PHONE_MESSAGE_SEND_MESSAGE_INFO_IDC;
	style=16;

	x=0.427812 * safezoneW + safezoneX;
	y=0.511 * safezoneH + safezoneY;
	w=0.252656 * safezoneW;
	h=0.165 * safezoneH;
};

class PHONE_MESSAGE_SEND_NUMBER_HEADER: RscStructuredText
{
	idc=PHONE_MESSAGE_SEND_NUMBER_HEADER_IDC;
	text="<t align='center'>Numéro(s)</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.427812 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.252656 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_MESSAGE_SEND_NUMBER_INFO: RscEdit
{
	idc=PHONE_MESSAGE_SEND_NUMBER_INFO_IDC;
	tooltip="Vous pouvez envoyer votre message jusqu'a cinq personnes en séparant vos numéros par des ',' (ex: 0000,0001,0002...)";
	style=530;

	x=0.427812 * safezoneW + safezoneX;
	y=0.467 * safezoneH + safezoneY;
	w=0.252656 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_MESSAGE_SEND_NUMBER_FRAME: RscFrame
{
	idc=PHONE_MESSAGE_SEND_NUMBER_FRAME_IDC;
	colorText[]={0,0,0,0.8};

	x=0.427812 * safezoneW + safezoneX;
	y=0.445 * safezoneH + safezoneY;
	w=0.252656 * safezoneW;
	h=0.231 * safezoneH;
};

class PHONE_MESSAGE_SEND_HIDE_HEADER: RscStructuredText
{
	idc=PHONE_MESSAGE_SEND_HIDE_HEADER_IDC;
	text="<t align='center'>Masquer son numéro</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.5825 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.0979687 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_MESSAGE_SEND_HIDE_INFO: RscCheckBox
{
	idc=PHONE_MESSAGE_SEND_HIDE_INFO_IDC;
	tooltip="Votre numéro sera caché à votre destinataire";

	x=0.620677 * safezoneW + safezoneX;
	y=0.383518 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
class PHONE_MESSAGE_SEND_HIDE_FRAME: RscFrame
{
	idc=PHONE_MESSAGE_SEND_HIDE_FRAME_IDC;
	colorText[]={0,0,0,0.8};

	x=0.5825 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.0979687 * safezoneW;
	h=0.066 * safezoneH;
};

class PHONE_MESSAGE_SEND_IMAGE: RscPicture
{
	idc=PHONE_MESSAGE_SEND_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\send.paa";

	x=0.525781 * safezoneW + safezoneX;
	y=0.368 * safezoneH + safezoneY;
	w=0.04125 * safezoneW;
	h=0.055 * safezoneH;
};
class PHONE_MESSAGE_SEND_BUTTON: RscButtonSilent
{
	idc=PHONE_MESSAGE_SEND_BUTTON_IDC;
	action="[] call AlysiaClient_fnc_APP_phone_messages_send_action;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1, ""Alysia_Client_Texture\Data\phone\send_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1, ""Alysia_Client_Texture\Data\phone\send.paa""];";
	tooltip="Envoyer";

	x=0.525781 * safezoneW + safezoneX;
	y=0.368 * safezoneH + safezoneY;
	w=0.04125 * safezoneW;
	h=0.055 * safezoneH;
};

class PHONE_MESSAGE_SEND_PRICE_FRAME: RscFrame
{
	idc=PHONE_MESSAGE_SEND_PRICE_FRAME_IDC;

	x=0.443281 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.0670312 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_MESSAGE_SEND_PRICE_HEADER: RscStructuredText
{
	idc=PHONE_MESSAGE_SEND_PRICE_HEADER_IDC;
	text="<t align='center'>Prix du SMS</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.443281 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.0670312 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_MESSAGE_SEND_PRICE_INFO: RscStructuredText
{
	idc=PHONE_MESSAGE_SEND_PRICE_INFO_IDC;
	colorBackground[]={0,0,0,0.6};

	x=0.443281 * safezoneW + safezoneX;
	y=0.401 * safezoneH + safezoneY;
	w=0.0670312 * safezoneW;
	h=0.022 * safezoneH;
};
/* ===================================================================================================================== */

// =======================================[Settings]=======================================
#define PHONE_SETTING_SMS_HEADER_IDC           8350
#define PHONE_SETTING_SMS_LIST_IDC             8351
#define PHONE_SETTING_CALL_HEADER_IDC          8352
#define PHONE_SETTING_CALL_LIST_IDC            8353
#define PHONE_SETTING_ANNUAIRE_TEXT_IDC        8354
#define PHONE_SETTING_ANNUAIRE_CHECKBOX_IDC    8355

PHONE_SETTINGS_BACKGROUND=PHONE_BACKGROUND;
PHONE_SETTINGS_IDCS[] =
{
	PHONE_RETURN_IMAGE_IDC,
	PHONE_RETURN_BUTTON_IDC,
	PHONE_SETTING_SMS_HEADER_IDC,
	PHONE_SETTING_ANNUAIRE_TEXT_IDC,
	PHONE_SETTING_SMS_LIST_IDC,
	PHONE_SETTING_CALL_LIST_IDC,
	PHONE_SETTING_CALL_HEADER_IDC,
	PHONE_SETTING_ANNUAIRE_CHECKBOX_IDC
};

class PHONE_SETTING_SMS_HEADER: RscStructuredText
{
	idc=PHONE_SETTING_SMS_HEADER_IDC;
	text="<t size='1.3'>Alerte SMS</t>";
	
	x=0.324687 * safezoneW + safezoneX;
	y=0.478 * safezoneH + safezoneY;
	w=0.165 * safezoneW;
	h=0.033 * safezoneH;
};
class PHONE_SETTING_SMS_LIST: RscListbox
{
	idc=PHONE_SETTING_SMS_LIST_IDC;
	colorBackground[]={0,0,0,0};

	x=0.324687 * safezoneW + safezoneX;
	y=0.511 * safezoneH + safezoneY;
	w=0.165 * safezoneW;
	h=0.165 * safezoneH;
};

class PHONE_SETTING_CALL_HEADER: RscStructuredText
{
	idc=PHONE_SETTING_CALL_HEADER_IDC;
	text="<t size='1.3'>Sonnerie APPEL</t>";

	x=0.510312 * safezoneW + safezoneX;
	y=0.478 * safezoneH + safezoneY;
	w=0.165 * safezoneW;
	h=0.033 * safezoneH;
};
class PHONE_SETTING_CALL_LIST: RscListbox
{
	idc=PHONE_SETTING_CALL_LIST_IDC;
	colorBackground[]={0,0,0,0};

	x=0.510312 * safezoneW + safezoneX;
	y=0.511 * safezoneH + safezoneY;
	w=0.165 * safezoneW;
	h=0.165 * safezoneH;
};

class PHONE_SETTING_ANNUAIRE_TEXT: RscStructuredText
{
	idc=PHONE_SETTING_ANNUAIRE_TEXT_IDC;
	text="Apparaître dans l'annuaire";

	x=0.345312 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.134062 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_SETTING_ANNUAIRE_CHECKBOX: RscCheckbox
{
	idc=PHONE_SETTING_ANNUAIRE_CHECKBOX_IDC;

	x=0.329844 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.0154688 * safezoneW;
	h=0.022 * safezoneH;
};

/* ===================================================================================================================== */

// =======================================[Contacts]=======================================
#define PHONE_CONTACTS_LIST_FRAME_IDC           8372
#define PHONE_CONTACTS_LIST_HEADER_IDC 			8373
#define PHONE_CONTACTS_LIST_INFO_IDC 			8374
#define PHONE_CONTACTS_REMOVE_IMAGE_IDC 		8375
#define PHONE_CONTACTS_REMOVE_BUTTON_IDC 		8376
#define PHONE_CONTACTS_SEND_IMAGE_IDC 			8377
#define PHONE_CONTACTS_SEND_BUTTON_IDC 			8378
#define PHONE_CONTACTS_ADD_HEADER_IDC 			8379
#define PHONE_CONTACTS_ADD_FRAME_IDC 			8380
#define PHONE_CONTACTS_ADD_IMAGE_IDC 			8381
#define PHONE_CONTACTS_ADD_BUTTON_IDC 			8382
#define PHONE_CONTACTS_ADD_NUMBER_HEADER_IDC 	8383
#define PHONE_CONTACTS_ADD_NUMBER_INFO_IDC 		8384
#define PHONE_CONTACTS_ADD_NAME_HEADER_IDC 		8385
#define PHONE_CONTACTS_ADD_NAME_INFO_IDC 		8386
#define PHONE_CONTACTS_CALL_IMAGE_IDC           8387
#define PHONE_CONTACTS_CALL_BUTTON_IDC          8388

PHONE_CONTACTS_BACKGROUND=PHONE_BACKGROUND;
PHONE_CONTACTS_IDCS[] =
{
	PHONE_RETURN_IMAGE_IDC,
	PHONE_RETURN_BUTTON_IDC,
	PHONE_CONTACTS_LIST_FRAME_IDC,
	PHONE_CONTACTS_LIST_HEADER_IDC,
	PHONE_CONTACTS_LIST_INFO_IDC
};

class PHONE_CONTACTS_LIST_FRAME: RscFrame
{
	idc=PHONE_CONTACTS_LIST_FRAME_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.39 * safezoneH + safezoneY;
	w=0.216563 * safezoneW;
	h=0.297 * safezoneH;
};
class PHONE_CONTACTS_LIST_HEADER: RscStructuredText
{
	idc=PHONE_CONTACTS_LIST_HEADER_IDC;
	text="<t align='center'>Contacts</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.324687 * safezoneW + safezoneX;
	y=0.39 * safezoneH + safezoneY;
	w=0.216563 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_CONTACTS_LIST_INFO: RscListBox
{
	idc=PHONE_CONTACTS_LIST_INFO_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.216563 * safezoneW;
	h=0.275 * safezoneH;
};

class PHONE_CONTACTS_REMOVE_IMAGE: RscPicture
{
	idc=PHONE_CONTACTS_REMOVE_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\contacts\remove.paa";

	x=0.546406 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.0216667 * safezoneW;
	h=0.033 * safezoneH;
};
class PHONE_CONTACTS_REMOVE_BUTTON: RscButtonSilent
{
	idc=PHONE_CONTACTS_REMOVE_BUTTON_IDC;
	action="private[""_sel""];_sel=lbCurSel 8374;if (_sel isEqualTo -1) exitWith {};g_phone_contacts deleteAt _sel;[""phone_contacts""] spawn AlysiaClient_fnc_tabletApp;";
	tooltip="Supprimer";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\contacts\remove_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\contacts\remove.paa""];";

	x=0.546406 * safezoneW + safezoneX;
	y=0.346 * safezoneH + safezoneY;
	w=0.0216667 * safezoneW;
	h=0.033 * safezoneH;
};

class PHONE_CONTACTS_SEND_IMAGE: RscPicture
{
	idc=PHONE_CONTACTS_SEND_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\contacts\send.paa";

	x=0.546406 * safezoneW + safezoneX;
	y=0.39 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
class PHONE_CONTACTS_SEND_BUTTON: RscButtonSilent
{
	idc=PHONE_CONTACTS_SEND_BUTTON_IDC;
	action="private[""_index""];_index=lbCurSel 8374;if (_index isEqualTo -1) exitWith {};[""phone_messages_send""] spawn AlysiaClient_fnc_tabletApp;ctrlSetText[8336, (g_phone_contacts select _index) select 1];";
	tooltip="Envoyer un message";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\contacts\send_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\contacts\send.paa""];";

	x=0.546406 * safezoneW + safezoneX;
	y=0.39 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};

class PHONE_CONTACTS_CALL_IMAGE: RscPicture
{
	idc=PHONE_CONTACTS_CALL_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\contacts\call.paa";

	x=0.546406 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};
class PHONE_CONTACTS_CALL_BUTTON: RscButtonSilent
{
	idc=PHONE_CONTACTS_CALL_BUTTON_IDC;
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,'Alysia_Client_Texture\Data\phone\contacts\call_select.paa'];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,'Alysia_Client_Texture\Data\phone\contacts\call.paa'];";
	action="[] spawn AlysiaClient_fnc_APP_phone_contacts_call;";
	tooltip="Appeler";

	x=0.546406 * safezoneW + safezoneX;
	y=0.434 * safezoneH + safezoneY;
	w=0.020625 * safezoneW;
	h=0.033 * safezoneH;
};

class PHONE_CONTACTS_ADD_HEADER: RscStructuredText
{
	idc=PHONE_CONTACTS_ADD_HEADER_IDC;
	text="<t align='center'>Ajouter un contact</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.551562 * safezoneW + safezoneX;
	y=0.478 * safezoneH + safezoneY;
	w=0.12375 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_CONTACTS_ADD_FRAME: RscFrame
{
	idc=PHONE_CONTACTS_ADD_FRAME_IDC;

	x=0.551562 * safezoneW + safezoneX;
	y=0.478 * safezoneH + safezoneY;
	w=0.12375 * safezoneW;
	h=0.209 * safezoneH;
};

class PHONE_CONTACTS_ADD_IMAGE: RscPicture
{
	idc=PHONE_CONTACTS_ADD_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\contacts\add.paa";

	x=0.592812 * safezoneW + safezoneX;
	y=0.621 * safezoneH + safezoneY;
	w=0.04125 * safezoneW;
	h=0.066 * safezoneH;
};
class PHONE_CONTACTS_ADD_BUTTON: RscButtonSilent
{
	idc=PHONE_CONTACTS_ADD_BUTTON_IDC;
	action="[ctrlText 8386, ctrlText 8384] call AlysiaClient_fnc_APP_phone_contacts_add;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\contacts\add_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\contacts\add.paa""];";
	tooltip="Ajouter";

	x=0.592812 * safezoneW + safezoneX;
	y=0.621 * safezoneH + safezoneY;
	w=0.04125 * safezoneW;
	h=0.066 * safezoneH;
};

class PHONE_CONTACTS_ADD_NUMBER_HEADER: RscStructuredText
{
	idc=PHONE_CONTACTS_ADD_NUMBER_HEADER_IDC;
	text="<t align='center'>Numéro</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.577344 * safezoneW + safezoneX;
	y=0.577 * safezoneH + safezoneY;
	w=0.0721875 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_CONTACTS_ADD_NUMBER_INFO: RscEdit
{
	idc=PHONE_CONTACTS_ADD_NUMBER_INFO_IDC;

	x=0.577344 * safezoneW + safezoneX;
	y=0.599 * safezoneH + safezoneY;
	w=0.0721875 * safezoneW;
	h=0.022 * safezoneH;
};

class PHONE_CONTACTS_ADD_NAME_HEADER: RscStructuredText
{
	idc=PHONE_CONTACTS_ADD_NAME_HEADER_IDC;
	text="<t align='center'>Nom</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.577344 * safezoneW + safezoneX;
	y=0.511 * safezoneH + safezoneY;
	w=0.0721875 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_CONTACTS_ADD_NAME_INFO: RscEdit
{
	idc=PHONE_CONTACTS_ADD_NAME_INFO_IDC;

	x=0.577344 * safezoneW + safezoneX;
	y=0.533 * safezoneH + safezoneY;
	w=0.0721875 * safezoneW;
	h=0.022 * safezoneH;
};

/* ===================================================================================================================== */

// =======================================[Blacklist]=======================================
#define PHONE_BLACKLIST_LIST_FRAME_IDC         8530
#define PHONE_BLACKLIST_LIST_HEADER_IDC        8531
#define PHONE_BLACKLIST_LIST_INFO_IDC          8532
#define PHONE_BLACKLIST_REMOVE_IMAGE_IDC       8533
#define PHONE_BLACKLIST_REMOVE_BUTTON_IDC      8534
#define PHONE_BLACKLIST_ADD_HEADER_IDC         8535
#define PHONE_BLACKLIST_ADD_FRAME_IDC          8536
#define PHONE_BLACKLIST_ADD_IMAGE_IDC          8537
#define PHONE_BLACKLIST_ADD_BUTTON_IDC         8538
#define PHONE_BLACKLIST_ADD_NUMBER_HEADER_IDC  8539
#define PHONE_BLACKLIST_ADD_NUMBER_INFO_IDC    8540

PHONE_BLACKLIST_IDCS[] =
{
	PHONE_RETURN_IMAGE_IDC,
	PHONE_RETURN_BUTTON_IDC,
	PHONE_BLACKLIST_LIST_FRAME_IDC,
	PHONE_BLACKLIST_LIST_HEADER_IDC,
	PHONE_BLACKLIST_LIST_INFO_IDC
};
PHONE_BLACKLIST_BACKGROUND=PHONE_BACKGROUND;

class PHONE_BLACKLIST_LIST_FRAME: RscFrame
{
	idc=PHONE_BLACKLIST_LIST_FRAME_IDC;
	
	x=0.324687 * safezoneW + safezoneX;
	y=0.39 * safezoneH + safezoneY;
	w=0.216563 * safezoneW;
	h=0.297 * safezoneH;
};
class PHONE_BLACKLIST_LIST_HEADER: RscStructuredText
{
	idc=PHONE_BLACKLIST_LIST_HEADER_IDC;
	text="<t align='center'>Blacklists</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.324687 * safezoneW + safezoneX;
	y=0.39 * safezoneH + safezoneY;
	w=0.216563 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_BLACKLIST_LIST_INFO: RscListBox
{
	idc=PHONE_BLACKLIST_LIST_INFO_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.216563 * safezoneW;
	h=0.275 * safezoneH;
};

class PHONE_BLACKLIST_REMOVE_IMAGE: RscPicture
{
	idc=PHONE_BLACKLIST_REMOVE_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\blacklist\remove.paa";

	x=0.546406 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_BLACKLIST_REMOVE_BUTTON: RscButtonSilent
{
	idc=PHONE_BLACKLIST_REMOVE_BUTTON_IDC;
	action="private[""_sel""];_sel=lbCurSel 8532;if (_sel isEqualTo -1) exitWith {};g_phone_blacklist deleteAt _sel;[""PHONE_BLACKLIST""] spawn AlysiaClient_fnc_tabletApp;";
	tooltip="Supprimer";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\blacklist\remove_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\blacklist\remove.paa""];";

	x=0.546406 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_BLACKLIST_ADD_HEADER: RscStructuredText
{
	idc=PHONE_BLACKLIST_ADD_HEADER_IDC;
	text="<t align='center'>Ajouter un numéro</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.551562 * safezoneW + safezoneX;
	y=0.478 * safezoneH + safezoneY;
	w=0.12375 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_BLACKLIST_ADD_FRAME: RscFrame
{
	idc=PHONE_BLACKLIST_ADD_FRAME_IDC;

	x=0.551562 * safezoneW + safezoneX;
	y=0.478 * safezoneH + safezoneY;
	w=0.12375 * safezoneW;
	h=0.209 * safezoneH;
};

class PHONE_BLACKLIST_ADD_IMAGE: RscPicture
{
	idc=PHONE_BLACKLIST_ADD_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\blacklist\add.paa";

	x=0.592812 * safezoneW + safezoneX;
	y=0.621 * safezoneH + safezoneY;
	w=0.04125 * safezoneW;
	h=0.066 * safezoneH;
};
class PHONE_BLACKLIST_ADD_BUTTON: RscButtonSilent
{
	idc=PHONE_BLACKLIST_ADD_BUTTON_IDC;
	action="[ctrlText 8540] call AlysiaClient_fnc_APP_phone_BLACKLIST_add;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\blacklist\add_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\blacklist\add.paa""];";
	tooltip="Ajouter";

	x=0.592812 * safezoneW + safezoneX;
	y=0.621 * safezoneH + safezoneY;
	w=0.04125 * safezoneW;
	h=0.066 * safezoneH;
};

class PHONE_BLACKLIST_ADD_NUMBER_HEADER: RscStructuredText
{
	idc=PHONE_BLACKLIST_ADD_NUMBER_HEADER_IDC;
	text="<t align='center'>Numéro</t>";
	colorBackground[]={0,0,0,0.8};

	x=0.577344 * safezoneW + safezoneX;
	y=0.577 * safezoneH + safezoneY;
	w=0.0721875 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_BLACKLIST_ADD_NUMBER_INFO: RscEdit
{
	idc=PHONE_BLACKLIST_ADD_NUMBER_INFO_IDC;

	x=0.577344 * safezoneW + safezoneX;
	y=0.599 * safezoneH + safezoneY;
	w=0.0721875 * safezoneW;
	h=0.022 * safezoneH;
};
/* ===================================================================================================================== */

// =======================================[Call]=======================================
#define PHONE_CALL_DIGIT_0_IMAGE_IDC        8900
#define PHONE_CALL_DIGIT_0_BUTTON_IDC       8901
#define PHONE_CALL_DIGIT_7_IMAGE_IDC        8902
#define PHONE_CALL_DIGIT_7_BUTTON_IDC       8903
#define PHONE_CALL_DIGIT_8_IMAGE_IDC        8904
#define PHONE_CALL_DIGIT_8_BUTTON_IDC       8905
#define PHONE_CALL_DIGIT_9_IMAGE_IDC        8906
#define PHONE_CALL_DIGIT_9_BUTTON_IDC       8907
#define PHONE_CALL_DIGIT_6_IMAGE_IDC        8908
#define PHONE_CALL_DIGIT_6_BUTTON_IDC       8909
#define PHONE_CALL_DIGIT_5_IMAGE_IDC        8910
#define PHONE_CALL_DIGIT_5_BUTTON_IDC       8911
#define PHONE_CALL_DIGIT_4_IMAGE_IDC        8912
#define PHONE_CALL_DIGIT_4_BUTTON_IDC       8913
#define PHONE_CALL_DIGIT_3_IMAGE_IDC        8914
#define PHONE_CALL_DIGIT_3_BUTTON_IDC       8915
#define PHONE_CALL_DIGIT_2_IMAGE_IDC        8916
#define PHONE_CALL_DIGIT_2_BUTTON_IDC       8917
#define PHONE_CALL_DIGIT_1_IMAGE_IDC        8918
#define PHONE_CALL_DIGIT_1_BUTTON_IDC       8919
#define PHONE_CALL_NUMBER_IDC               8920
#define PHONE_CALL_ACTION_CALL_IMAGE_IDC    8921
#define PHONE_CALL_ACTION_CALL_BUTTON_IDC   8922
#define PHONE_CALL_ACTION_BACK_IMAGE_IDC    8923
#define PHONE_CALL_ACTION_BACK_BUTTON_IDC   8924
#define PHONE_CALL_ACTION_SUPPR_IMAGE_IDC   8925
#define PHONE_CALL_ACTION_SUPPR_BUTTON_IDC  8926
#define PHONE_CALL_HISTORY_IDC              8927

PHONE_CALL_BACKGROUND="Alysia_Client_Texture\Data\phone\background_2.jpg";
PHONE_CALL_IDCS[] =
{
	PHONE_RETURN_IMAGE_IDC,
	PHONE_RETURN_BUTTON_IDC,
	PHONE_CALL_DIGIT_0_IMAGE_IDC,
	PHONE_CALL_DIGIT_0_BUTTON_IDC,
	PHONE_CALL_DIGIT_7_IMAGE_IDC,
	PHONE_CALL_DIGIT_7_BUTTON_IDC,
	PHONE_CALL_DIGIT_8_IMAGE_IDC,
	PHONE_CALL_DIGIT_8_BUTTON_IDC,
	PHONE_CALL_DIGIT_9_IMAGE_IDC,
	PHONE_CALL_DIGIT_9_BUTTON_IDC,
	PHONE_CALL_DIGIT_6_IMAGE_IDC,
	PHONE_CALL_DIGIT_6_BUTTON_IDC,
	PHONE_CALL_DIGIT_5_IMAGE_IDC,
	PHONE_CALL_DIGIT_5_BUTTON_IDC,
	PHONE_CALL_DIGIT_4_IMAGE_IDC,
	PHONE_CALL_DIGIT_4_BUTTON_IDC,
	PHONE_CALL_DIGIT_3_IMAGE_IDC,
	PHONE_CALL_DIGIT_3_BUTTON_IDC,
	PHONE_CALL_DIGIT_2_IMAGE_IDC,
	PHONE_CALL_DIGIT_2_BUTTON_IDC,
	PHONE_CALL_DIGIT_1_IMAGE_IDC,
	PHONE_CALL_DIGIT_1_BUTTON_IDC,
	PHONE_CALL_NUMBER_IDC,
	PHONE_CALL_ACTION_CALL_IMAGE_IDC,
	PHONE_CALL_ACTION_CALL_BUTTON_IDC,
	PHONE_CALL_ACTION_BACK_IMAGE_IDC,
	PHONE_CALL_ACTION_BACK_BUTTON_IDC,
	PHONE_CALL_ACTION_SUPPR_IMAGE_IDC,
	PHONE_CALL_ACTION_SUPPR_BUTTON_IDC,
	PHONE_CALL_HISTORY_IDC
};

class PHONE_CALL_DIGIT_0_IMAGE: RscPicture
{
	idc=PHONE_CALL_DIGIT_0_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\digit_0.paa";

	x=0.484531 * safezoneW + safezoneX;
	y=0.588 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALL_DIGIT_0_BUTTON: RscButtonSilent
{
	idc=PHONE_CALL_DIGIT_0_BUTTON_IDC;
	soundClick[]={"Alysia_Client_Son\Sons_Divers\click_phone.ogg",0.7,1};
	action="[0] call AlysiaClient_fnc_APP_phone_call_addDigit;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_0_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_0.paa""];";

	x=0.484531 * safezoneW + safezoneX;
	y=0.588 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CALL_DIGIT_7_IMAGE: RscPicture
{
	idc=PHONE_CALL_DIGIT_7_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\digit_7.paa";

	x=0.448438 * safezoneW + safezoneX;
	y=0.533 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALL_DIGIT_7_BUTTON: RscButtonSilent
{
	idc=PHONE_CALL_DIGIT_7_BUTTON_IDC;
	soundClick[]={"Alysia_Client_Son\Sons_Divers\click_phone.ogg",0.7,1};
	action="[7] call AlysiaClient_fnc_APP_phone_call_addDigit;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_7_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_7.paa""];";

	x=0.448438 * safezoneW + safezoneX;
	y=0.533 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CALL_DIGIT_8_IMAGE: RscPicture
{
	idc=PHONE_CALL_DIGIT_8_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\digit_8.paa";

	x=0.484531 * safezoneW + safezoneX;
	y=0.533 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALL_DIGIT_8_BUTTON: RscButtonSilent
{
	idc=PHONE_CALL_DIGIT_8_BUTTON_IDC;
	soundClick[]={"Alysia_Client_Son\Sons_Divers\click_phone.ogg",0.7,1};
	action="[8] call AlysiaClient_fnc_APP_phone_call_addDigit;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_8_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_8.paa""];";

	x=0.484531 * safezoneW + safezoneX;
	y=0.533 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CALL_DIGIT_9_IMAGE: RscPicture
{
	idc=PHONE_CALL_DIGIT_9_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\digit_9.paa";

	x=0.520625 * safezoneW + safezoneX;
	y=0.533 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALL_DIGIT_9_BUTTON: RscButtonSilent
{
	idc=PHONE_CALL_DIGIT_9_BUTTON_IDC;
	soundClick[]={"Alysia_Client_Son\Sons_Divers\click_phone.ogg",0.7,1};
	action="[9] call AlysiaClient_fnc_APP_phone_call_addDigit;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_9_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_9.paa""];";

	x=0.520625 * safezoneW + safezoneX;
	y=0.533 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CALL_DIGIT_6_IMAGE: RscPicture
{
	idc=PHONE_CALL_DIGIT_6_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\digit_6.paa";

	x=0.520625 * safezoneW + safezoneX;
	y=0.478 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALL_DIGIT_6_BUTTON: RscButtonSilent
{
	idc=PHONE_CALL_DIGIT_6_BUTTON_IDC;
	soundClick[]={"Alysia_Client_Son\Sons_Divers\click_phone.ogg",0.7,1};
	action="[6] call AlysiaClient_fnc_APP_phone_call_addDigit;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_6_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_6.paa""];";

	x=0.520625 * safezoneW + safezoneX;
	y=0.478 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CALL_DIGIT_5_IMAGE: RscPicture
{
	idc=PHONE_CALL_DIGIT_5_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\digit_5.paa";

	x=0.484531 * safezoneW + safezoneX;
	y=0.478 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALL_DIGIT_5_BUTTON: RscButtonSilent
{
	idc=PHONE_CALL_DIGIT_5_BUTTON_IDC;
	soundClick[]={"Alysia_Client_Son\Sons_Divers\click_phone.ogg",0.7,1};
	action="[5] call AlysiaClient_fnc_APP_phone_call_addDigit;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_5_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_5.paa""];";

	x=0.484531 * safezoneW + safezoneX;
	y=0.478 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CALL_DIGIT_4_IMAGE: RscPicture
{
	idc=PHONE_CALL_DIGIT_4_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\digit_4.paa";

	x=0.448438 * safezoneW + safezoneX;
	y=0.478 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALL_DIGIT_4_BUTTON: RscButtonSilent
{
	idc=PHONE_CALL_DIGIT_4_BUTTON_IDC;
	soundClick[]={"Alysia_Client_Son\Sons_Divers\click_phone.ogg",0.7,1};
	action="[4] call AlysiaClient_fnc_APP_phone_call_addDigit;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_4_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_4.paa""];";

	x=0.448438 * safezoneW + safezoneX;
	y=0.478 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CALL_DIGIT_3_IMAGE: RscPicture
{
	idc=PHONE_CALL_DIGIT_3_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\digit_3.paa";

	x=0.520625 * safezoneW + safezoneX;
	y=0.423 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALL_DIGIT_3_BUTTON: RscButtonSilent
{
	idc=PHONE_CALL_DIGIT_3_BUTTON_IDC;
	soundClick[]={"Alysia_Client_Son\Sons_Divers\click_phone.ogg",0.7,1};
	action="[3] call AlysiaClient_fnc_APP_phone_call_addDigit;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_3_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_3.paa""];";

	x=0.520625 * safezoneW + safezoneX;
	y=0.423 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CALL_DIGIT_2_IMAGE: RscPicture
{
	idc=PHONE_CALL_DIGIT_2_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\digit_2.paa";

	x=0.484531 * safezoneW + safezoneX;
	y=0.423 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALL_DIGIT_2_BUTTON: RscButtonSilent
{
	idc=PHONE_CALL_DIGIT_2_BUTTON_IDC;
	soundClick[]={"Alysia_Client_Son\Sons_Divers\click_phone.ogg",0.7,1};
	action="[2] call AlysiaClient_fnc_APP_phone_call_addDigit;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_2_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_2.paa""];";

	x=0.484531 * safezoneW + safezoneX;
	y=0.423 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CALL_DIGIT_1_IMAGE: RscPicture
{
	idc=PHONE_CALL_DIGIT_1_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\digit_1.paa";

	x=0.448438 * safezoneW + safezoneX;
	y=0.423 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALL_DIGIT_1_BUTTON: RscButtonSilent
{
	idc=PHONE_CALL_DIGIT_1_BUTTON_IDC;
	soundClick[]={"Alysia_Client_Son\Sons_Divers\click_phone.ogg",0.7,1};
	action="[1] call AlysiaClient_fnc_APP_phone_call_addDigit;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_1_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\digit_1.paa""];";

	x=0.448438 * safezoneW + safezoneX;
	y=0.423 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CALL_NUMBER: RscStructuredText
{
	idc=PHONE_CALL_NUMBER_IDC;

	x=0.402031 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.190781 * safezoneW;
	h=0.055 * safezoneH;
};

class PHONE_CALL_ACTION_CALL_IMAGE: RscPicture
{
	idc=PHONE_CALL_ACTION_CALL_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\call.paa";

	x=0.484531 * safezoneW + safezoneX;
	y=0.643 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALL_ACTION_CALL_BUTTON: RscButtonSilent
{
	idc=PHONE_CALL_ACTION_CALL_BUTTON_IDC;
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\call_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\call.paa""];";
	action="[] call AlysiaClient_fnc_APP_phone_call_action;";

	x=0.484531 * safezoneW + safezoneX;
	y=0.643 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CALL_ACTION_BACK_IMAGE: RscPicture
{
	idc=PHONE_CALL_ACTION_BACK_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\action_back.paa";

	x=0.448438 * safezoneW + safezoneX;
	y=0.588 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALL_ACTION_BACK_BUTTON: RscButtonSilent
{
	idc=PHONE_CALL_ACTION_BACK_BUTTON_IDC;
	action="[] call AlysiaClient_fnc_APP_phone_call_back;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\action_back_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\action_back.paa""];";

	x=0.448438 * safezoneW + safezoneX;
	y=0.588 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CALL_ACTION_SUPPR_IMAGE: RscPicture
{
	idc=PHONE_CALL_ACTION_SUPPR_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\action_delete.paa";

	x=0.520625 * safezoneW + safezoneX;
	y=0.588 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALL_ACTION_SUPPR_BUTTON: RscButtonSilent
{
	idc=PHONE_CALL_ACTION_SUPPR_BUTTON_IDC;
	action="[] call AlysiaClient_fnc_APP_phone_call_suppr;";
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\action_delete_select.paa""];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,""Alysia_Client_Texture\Data\phone\call\action_delete.paa""];";

	x=0.520625 * safezoneW + safezoneX;
	y=0.588 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CALL_HISTORY: RscListBox
{
	idc=PHONE_CALL_HISTORY_IDC;
	colorBackground[]={0,0,0,0};
	colorSelectBackground[]={0,0,0,0};
	colorSelectBackground2[]={0,0,0,0};
	colorSelect[]={0,0,0,1};
	colorSelect2[]={0,0,0,1};

	x=0.329844 * safezoneW + safezoneX;
	y=0.423 * safezoneH + safezoneY;
	w=0.103125 * safezoneW;
	h=0.253 * safezoneH;
};

/* ===================================================================================================================== */

// =======================================[Calling]=======================================
#define PHONE_CALLING_ACTION_HANGUP_IMAGE_IDC      11000
#define PHONE_CALLING_ACTION_HANGUP_BUTTON_IDC     11001        
#define PHONE_CALLING_FRAME_IDC                    11002
#define PHONE_CALLING_NUMBER_IDC                   11003
#define PHONE_CALLING_TIMER_IDC                    11004
#define PHONE_CALLING_ACTION_MICROPHONE_IMAGE_IDC  11005
#define PHONE_CALLING_ACTION_MICROPHONE_BUTTON_IDC 11006
#define PHONE_CALLING_ACTION_SPEAKER_IMAGE_IDC     11007
#define PHONE_CALLING_ACTION_SPEAKER_BUTTON_IDC    11008

PHONE_CALLING_BACKGROUND="Alysia_Client_Texture\Data\phone\background_2.jpg";
PHONE_CALLING_IDCS[] =
{
	PHONE_CALLING_ACTION_HANGUP_IMAGE_IDC,
	PHONE_CALLING_ACTION_HANGUP_BUTTON_IDC,
	PHONE_CALLING_FRAME_IDC,
	PHONE_CALLING_NUMBER_IDC,
	PHONE_CALLING_TIMER_IDC,
	PHONE_CALLING_ACTION_SPEAKER_IMAGE_IDC,
	PHONE_CALLING_ACTION_SPEAKER_BUTTON_IDC
};

class PHONE_CALLING_ACTION_HANGUP_IMAGE: RscPicture
{
	idc=PHONE_CALLING_ACTION_HANGUP_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\call_stop.paa";

	x=0.484531 * safezoneW + safezoneX;
	y=0.643 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALLING_ACTION_HANGUP_BUTTON: RscButtonSilent
{
	idc=PHONE_CALLING_ACTION_HANGUP_BUTTON_IDC;
	onMouseEnter="ctrlSetText[(ctrlIDC (_this select 0)) - 1,'Alysia_Client_Texture\Data\phone\call\call_stop_select.paa'];";
	onMouseExit="ctrlSetText[(ctrlIDC (_this select 0)) - 1,'Alysia_Client_Texture\Data\phone\call\call_stop.paa'];";
	action="[false, true] call AlysiaClient_fnc_APP_phone_call_hangup;";

	x=0.484531 * safezoneW + safezoneX;
	y=0.643 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CALLING_FRAME: RscText
{
	idc=PHONE_CALLING_FRAME_IDC;
	colorBackground[]={0,0,0,0.6};
	
	x=0.391719 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.211406 * safezoneW;
	h=0.253 * safezoneH;
};
class PHONE_CALLING_NUMBER: RscStructuredText
{
	idc=PHONE_CALLING_NUMBER_IDC;

	x=0.396875 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.201094 * safezoneW;
	h=0.066 * safezoneH;
};
class PHONE_CALLING_TIMER: RscStructuredText
{
	idc=PHONE_CALLING_TIMER_IDC;

	x=0.391719 * safezoneW + safezoneX;
	y=0.522 * safezoneH + safezoneY;
	w=0.211406 * safezoneW;
	h=0.033 * safezoneH;
};

class PHONE_CALLING_ACTION_MICROPHONE_IMAGE: RscPicture
{
	idc=PHONE_CALLING_ACTION_MICROPHONE_IMAGE_IDC;

	x=0.520625 * safezoneW + safezoneX;
	y=0.654 * safezoneH + safezoneY;
	w=0.0154688 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_CALLING_ACTION_MICROPHONE_BUTTON: RscButtonSilent
{
	idc=PHONE_CALLING_ACTION_MICROPHONE_BUTTON_IDC;
	action="missionNamespace setVariable ['phone_call_micro_on', !(missionNamespace getVariable ['phone_call_micro_on', false])];[] call AlysiaClient_fnc_APP_phone_calling_update;";

	x=0.520625 * safezoneW + safezoneX;
	y=0.654 * safezoneH + safezoneY;
	w=0.0154688 * safezoneW;
	h=0.022 * safezoneH;
};

class PHONE_CALLING_ACTION_SPEAKER_IMAGE: RscPicture
{
	idc=PHONE_CALLING_ACTION_SPEAKER_IMAGE_IDC;

	x=0.45875 * safezoneW + safezoneX;
	y=0.654 * safezoneH + safezoneY;
	w=0.0154688 * safezoneW;
	h=0.022 * safezoneH;
};
class PHONE_CALLING_ACTION_SPEAKER_BUTTON: RscButtonSilent
{
	idc=PHONE_CALLING_ACTION_SPEAKER_BUTTON_IDC;
	action="[(call TFAR_fnc_activeSwRadio)] call TFAR_fnc_setSwSpeakers;[] call AlysiaClient_fnc_APP_phone_calling_update;";

	x=0.45875 * safezoneW + safezoneX;
	y=0.654 * safezoneH + safezoneY;
	w=0.0154688 * safezoneW;
	h=0.022 * safezoneH;
};

/* ===================================================================================================================== */

// =======================================[Calling receive]=======================================
#define PHONE_CALLRECEIVING_ACTION_ACCEPT_BUTTON_IDC 14000
#define PHONE_CALLRECEIVING_ACTION_ACCEPT_IMAGE_IDC  14001
#define PHONE_CALLRECEIVING_ACTION_REFUSE_IMAGE_IDC  14002
#define PHONE_CALLRECEIVING_ACTION_REFUSE_BUTTON_IDC 14003
#define PHONE_CALLRECEIVING_FRAME_IDC                14004
#define PHONE_CALLRECEIVING_NUMBER_IDC               14006

PHONE_CALLRECEIVING_BACKGROUND="Alysia_Client_Texture\Data\phone\background_2.jpg";
PHONE_CALLRECEIVING_IDCS[] =
{
	PHONE_CALLRECEIVING_ACTION_ACCEPT_BUTTON_IDC,
	PHONE_CALLRECEIVING_ACTION_ACCEPT_IMAGE_IDC,
	PHONE_CALLRECEIVING_ACTION_REFUSE_IMAGE_IDC,
	PHONE_CALLRECEIVING_ACTION_REFUSE_BUTTON_IDC,
	PHONE_CALLRECEIVING_FRAME_IDC,
	PHONE_CALLRECEIVING_NUMBER_IDC
};

class PHONE_CALLRECEIVING_FRAME: RscText
{
	idc=PHONE_CALLRECEIVING_FRAME_IDC;
	colorBackground[]={0,0,0,0.6};
	
	x=0.391719 * safezoneW + safezoneX;
	y=0.379 * safezoneH + safezoneY;
	w=0.211406 * safezoneW;
	h=0.253 * safezoneH;
};
class PHONE_CALLRECEIVING_NUMBER: RscStructuredText
{
	idc=PHONE_CALLRECEIVING_NUMBER_IDC;

	x=0.396875 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.201094 * safezoneW;
	h=0.066 * safezoneH;
};

class PHONE_CALLRECEIVING_ACTION_ACCEPT_IMAGE: RscPicture
{
	idc=PHONE_CALLRECEIVING_ACTION_ACCEPT_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\call.paa";

	x=0.453594 * safezoneW + safezoneX;
	y=0.511 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALLRECEIVING_ACTION_ACCEPT_BUTTON: RscButtonSilent
{
	idc=PHONE_CALLRECEIVING_ACTION_ACCEPT_BUTTON_IDC;
	action="[] spawn AlysiaClient_fnc_phone_call_receive_accept;";

	x=0.453594 * safezoneW + safezoneX;
	y=0.511 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};

class PHONE_CALLRECEIVING_ACTION_REFUSE_IMAGE: RscPicture
{
	idc=PHONE_CALLRECEIVING_ACTION_REFUSE_IMAGE_IDC;
	text="Alysia_Client_Texture\Data\phone\call\call_stop.paa";

	x=0.515469 * safezoneW + safezoneX;
	y=0.511 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class PHONE_CALLRECEIVING_ACTION_REFUSE_BUTTON: RscButtonSilent
{
	idc=PHONE_CALLRECEIVING_ACTION_REFUSE_BUTTON_IDC;
	action="[] spawn AlysiaClient_fnc_phone_call_receive_refuse;";

	x=0.515469 * safezoneW + safezoneX;
	y=0.511 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
