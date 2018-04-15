/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_list =  _display displayCtrl 8201;
lbClear _list;

{
	_info = ["Alysia", _x] call CBA_fnc_getKeybind;
	if (isNil "_info") then {
		systemChat format["Key %1 has no info", _x];
	} else {
		_index = _list lbAdd (_info select 2);

		_txt = "";
		_types = (_info select 5) select 1;
		if (_types select 0) then {
			_txt = _txt + "SHIFT + ";
		};
		if (_types select 1) then {
			_txt = _txt + "CTRL + ";
		};
		if (_types select 2) then {
			_txt = _txt + "ALT + ";
		};
		_txt = _txt + ((cba_keybinding_dikDecToStringTable select ([str((_info select 5) select 0), cba_keybinding_dikDecToStringTable] call AlysiaClient_fnc_index)) select 1);
		_list lbSetData [_index, _txt];
	};
} forEach g_keybinds;

_list lbSetCurSel 0;
