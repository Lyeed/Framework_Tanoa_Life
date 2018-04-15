/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_display"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_list = _display displayCtrl 8101;
lbClear _list;

_list lbAdd "Licences";
_list lbSetData [0, "STORE_LICENSES"];
_list lbSetPicture [0, "Alysia_Client_Texture\Data\tablet\store\categories\store_licenses.paa"];

_list lbAdd "Applications";
_list lbSetData [1, "STORE_APPLICATIONS"];
_list lbSetPicture [1, "Alysia_Client_Texture\Data\tablet\store\categories\store_applications.paa"];

_list lbAdd "Forfaits mobiles";
_list lbSetData [2, "STORE_FORFAIT"];
_list lbSetPicture [2, "Alysia_Client_Texture\Data\tablet\store\categories\store_forfait.paa"];

_list lbSetCurSel -1;
