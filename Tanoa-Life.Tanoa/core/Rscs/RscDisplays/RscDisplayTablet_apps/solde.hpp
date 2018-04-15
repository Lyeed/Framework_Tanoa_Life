#define SOLDE_TITLE_IDC        7600
#define SOLDE_INFO_IDC         7601
#define SOLDE_SMS_CHECKBOX_IDC 7602
#define SOLDE_SMS_TITLE_IDC    7603
#define SOLDE_ACTION_BILLS_IDC 7604

SOLDE_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
SOLDE_IDCS[] =
{
	SOLDE_TITLE_IDC,
	SOLDE_INFO_IDC,
	SOLDE_ACTION_BILLS_IDC
};

class SOLDE_TITLE: RscStructuredText
{
	idc=SOLDE_TITLE_IDC;
	text="<t font='RobotoRegular' size='1.9'>Mes informations banquaires</t>";

	x=0.324687 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.262969 * safezoneW;
	h=0.044 * safezoneH;
};
class SOLDE_INFO: RscStructuredText
{
	idc=SOLDE_INFO_IDC;
	
	x=0.324687 * safezoneW + safezoneX;
	y=0.423 * safezoneH + safezoneY;
	w=0.350625 * safezoneW;
	h=0.209 * safezoneH;
};
class SOLDE_SMS_CHECKBOX: RscCheckbox
{
	idc=SOLDE_SMS_CHECKBOX_IDC;
	onCheckedChanged="if ((_this select 1) isEqualTo 0) then {profileNamespace setVariable [""ALYSIA_phone_salary"", false]} else {profileNamespace setVariable [""ALYSIA_phone_salary"", true]};";
	
	x=0.329844 * safezoneW + safezoneX;
	y=0.643 * safezoneH + safezoneY;
	w=0.0154688 * safezoneW;
	h=0.022 * safezoneH;
};
class SOLDE_SMS_TITLE: RscStructuredText
{
	idc=SOLDE_SMS_TITLE_IDC;
	text="Recevoir un SMS lors du salaire";
	
	x=0.343749 * safezoneW + safezoneX;
	y=0.642074 * safezoneH + safezoneY;
	w=0.158594 * safezoneW;
	h=0.022 * safezoneH;
};
class SOLDE_ACTION_BILLS: RscButtonMenu
{
	idc=SOLDE_ACTION_BILLS_IDC;
	text="Relevé";
	action="['SOLDE_BILLS'] spawn AlysiaClient_fnc_tabletApp;";
	
	x=0.536094 * safezoneW + safezoneX;
	y=0.643 * safezoneH + safezoneY;
	w=0.0773437 * safezoneW;
	h=0.022 * safezoneH;
};

#define SOLDE_BILLS_ICONE_IDC  7650
#define SOLDE_BILLS_TITLE_IDC  7651
#define SOLDE_BILLS_LIST_IDC   7652

SOLDE_BILLS_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
SOLDE_BILLS_IDCS[] =
{
	SOLDE_BILLS_ICONE_IDC,
	SOLDE_BILLS_TITLE_IDC,
	SOLDE_BILLS_LIST_IDC
};

class SOLDE_BILLS_ICONE: RscPicture
{
	idc=SOLDE_BILLS_ICONE_IDC;
	text="Alysia_Client_Texture\Data\tablet\solde\bills.paa";

	x=0.324687 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class SOLDE_BILLS_TITLE: RscStructuredText
{
	idc=SOLDE_BILLS_TITLE_IDC;
	text="<t size='1.5'>Relevé bancaire</t>";

	x=0.352969 * safezoneW + safezoneX;
	y=0.361519 * safezoneH + safezoneY;
	w=0.319688 * safezoneW;
	h=0.033 * safezoneH;
};
class SOLDE_BILLS_LIST: RscListbox
{
	idc=SOLDE_BILLS_LIST_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.350625 * safezoneW;
	h=0.275 * safezoneH;
};
