/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type"];
_type = [_this, 0, 0, [0]] call BIS_fnc_param;

if (_type isEqualTo 0) then {
	_index = lbCurSel 8320;
	if (_index isEqualTo -1) exitWith {};
	g_phone_messages deleteAt _index;
} else {
	g_phone_messages = [];
};

["phone_messages_read"] spawn AlysiaClient_fnc_tabletApp;
