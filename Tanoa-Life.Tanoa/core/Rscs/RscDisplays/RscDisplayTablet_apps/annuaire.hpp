#define ANNUAIRE_ICONE_IDC 12000
#define ANNUAIRE_TITLE_IDC 12001
#define ANNUAIRE_LIST_IDC  12002

ANNUAIRE_BACKGROUND="Alysia_Client_Texture\Data\tablet\backgrounds\back.jpg";
ANNUAIRE_IDCS[]=
{
	ANNUAIRE_ICONE_IDC,
	ANNUAIRE_TITLE_IDC,
	ANNUAIRE_LIST_IDC
};

class ANNUAIRE_ICONE: RscPicture
{
	idc=ANNUAIRE_ICONE_IDC;
	text="Alysia_Client_Texture\Data\tablet\annuaire\annuaire.paa";

	x=0.324687 * safezoneW + safezoneX;
	y=0.357 * safezoneH + safezoneY;
	w=0.0257812 * safezoneW;
	h=0.044 * safezoneH;
};
class ANNUAIRE_TITLE: RscStructuredText
{
	idc=ANNUAIRE_TITLE_IDC;
	text="<t size='1.5'>Annuaire téléphonique</t>";

	x=0.352969 * safezoneW + safezoneX;
	y=0.361519 * safezoneH + safezoneY;
	w=0.319688 * safezoneW;
	h=0.033 * safezoneH;
};
class ANNUAIRE_LIST: RscListbox
{
	idc=ANNUAIRE_LIST_IDC;

	x=0.324687 * safezoneW + safezoneX;
	y=0.412 * safezoneH + safezoneY;
	w=0.350625 * safezoneW;
	h=0.275 * safezoneH;
};
