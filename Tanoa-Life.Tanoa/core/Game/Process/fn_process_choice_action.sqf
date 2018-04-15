/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_sel", "_process"];

_sel = lbCurSel 53101;
if (_sel isEqualTo -1) exitWith {};

_process = lbData[53101, _sel];
if (_process isEqualTo "") exitWith {};

[g_interaction_target, nil, nil, _process] call AlysiaClient_fnc_process_open;
