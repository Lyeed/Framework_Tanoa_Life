/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_voice", "_check_anim", "_check_hud"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_voice = round((player getVariable["tf_globalVolume", 1]) * 100);
(_display displayCtrl 7821) ctrlSetStructuredText parseText format["<t align='center'>%1%2</t>", _voice, "%"];

sliderSetRange[7819, 0, 100];
sliderSetSpeed[7819, 1, 1];

sliderSetPosition[7819, _voice];

_check_anim = _display displayCtrl 7827;
_check_anim cbSetChecked (profileNamespace getVariable ["ALYSIA_tablet_animation", true]);
_check_anim ctrlSetEventHandler
[
	"CheckedChanged",
	"
		if ((_this select 1) isEqualTo 0) then {
			profileNamespace setVariable [""ALYSIA_tablet_animation"", false];
		} else {
			profileNamespace setVariable [""ALYSIA_tablet_animation"", true];
		};
	"
];

_check_hud = _display displayCtrl 7832;
_check_hud cbSetChecked (!isNull(uiNameSpace getVariable ["RscTitlePlayer", displayNull]));
_check_hud ctrlSetEventHandler
[
	"CheckedChanged",
	"
		if ((_this select 1) isEqualTo 0) then {
			('hudLayer' call BIS_fnc_rscLayer) cutText ['RscTitlePlayer', 'PLAIN'];
		} else {
			[] call AlysiaClient_fnc_init_hud;
		};
	"
];

if (((uniform player) != "") || ((vest player) != "")) then {
	[7829, true] call AlysiaClient_fnc_tabletShow;
};

while {(g_app isEqualTo "SETTINGS")} do
{
	(_display displayCtrl 7801) ctrlSetStructuredText parseText format["<t align='center'>%1</t>", diag_fps];
	uiSleep 0.5;
};

if (isNull _display) exitWith {};

_check_anim ctrlRemoveAllEventHandlers "CheckedChanged";
_check_hud ctrlRemoveAllEventHandlers "CheckedChanged";
