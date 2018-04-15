/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_background", "_title", "_header", "_edit_default", "_action_txt", "_action_img", "_action_img_select", "_display", "_characters_allowed", "_characters_max", "_characters_min"];
_background = [_this, 0, "Alysia_Client_Texture\Data\interactions\background.jpg", [""]] call BIS_fnc_param;
_title = [_this, 1, "Informations", [""]] call BIS_fnc_param;
_header = [_this, 2, "Valeur", [""]] call BIS_fnc_param;
_edit_default = [_this, 3, "", [""]] call BIS_fnc_param;
_action_txt = [_this, 4, "Valider", [""]] call BIS_fnc_param;
_action_img = [_this, 5, "Alysia_Client_Texture\Data\global\validate.paa", [""]] call BIS_fnc_param;
_action_img_select = [_this, 6, "Alysia_Client_Texture\Data\global\validate_select.paa", [""]] call BIS_fnc_param;
_characters_allowed = [_this, 7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_() -", [""]] call BIS_fnc_param;
_characters_max = [_this, 8, 25, [0]] call BIS_fnc_param;
_characters_min = [_this, 9, 1, [0]] call BIS_fnc_param;

createDialog "RscDisplayDefaultEdit";

disableSerialization;
_display = findDisplay 101000;

(_display displayCtrl 101001) ctrlSetText _background;
(_display displayCtrl 101002) ctrlSetStructuredText parseText format["<t align='center' size='1.5'>%1</t>", _title];
(_display displayCtrl 101003) ctrlSetStructuredText parseText format["<t align='center'>%1</t>", _header];

(_display displayCtrl 101004) ctrlSetText _edit_default;

missionNamespace setVariable ["g_display_edit_ret", ""];
uiNamespace setVariable ["g_display_edit_CMa", _characters_max];
uiNamespace setVariable ["g_display_edit_CMi", _characters_min];
uiNamespace setVariable ["g_display_edit_default", _edit_default];
uiNamespace setVariable ["g_display_edit_allowed", _characters_allowed];

(_display displayCtrl 101008) ctrlSetText _action_img;
(_display displayCtrl 101007) ctrlSetStructuredText parseText format["<t align='center' size='1.3'>%1</t>", _action_txt];

_ctrl_btn = _display displayCtrl 101009;

_ctrl_btn ctrlSetEventHandler["MouseEnter", format[
	"((findDisplay 101000) displayCtrl 101007) ctrlSetStructuredText parseText ""<t align='center' size='1.3' color='#000000'>%2</t>"";
	((findDisplay 101000) displayCtrl 101006) ctrlSetBackgroundColor [1,1,1,1];
	ctrlSetText[101008, ""%1""];
	ctrlShow[101005, false];",
	_action_img_select,
	_action_txt
]];

_ctrl_btn ctrlSetEventHandler["MouseExit", format[
	"((findDisplay 101000) displayCtrl 101007) ctrlSetStructuredText parseText ""<t align='center' size='1.3' color='#FFFFFF'>%2</t>"";
	((findDisplay 101000) displayCtrl 101006) ctrlSetBackgroundColor [0,0,0,0.6];
	ctrlSetText[101008, ""%1""];
	ctrlShow[101005, true];",
	_action_img,
	_action_txt
]];

_ctrl_btn ctrlSetTooltip _action_txt;

waitUntil {(isNull _display)};

(missionNamespace getVariable "g_display_edit_ret");
