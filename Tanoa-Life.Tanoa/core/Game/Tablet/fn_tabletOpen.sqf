/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_bar"];

if (!(missionNamespace getVariable ["g_connected", false])) exitWith {};
if (missionNamespace getVariable ["g_action_inUse", false]) exitWith {};
if (player getVariable ["arrested", false]) exitWith {["Vous n'avez pas accès à votre tablette en prison."] call AlysiaClient_fnc_error};
if ((player getVariable ["restrained", false]) || (player getVariable ["knockedOut", false])) exitWith {};
if (dialog) exitWith {if (!(isNull (uiNamespace getVariable ["tablet", displayNull]))) then {closeDialog 0};};
if ((headgear player) isEqualTo "mgsr_headbag") exitWith {};

if ((vehicle player) isEqualTo player) then {
	player playAction "Gear";
};

if (!(createDialog "RscDisplayTablet")) exitWith {};

{
	ctrlShow[getNumber(_x >> "IDC"), false];
} forEach ("!(getNumber(_x >> 'IDC') in [-1, 7506, 7502, 7507, 7501])" configClasses (missionConfigFile >> "RscDisplayTablet" >> "controls"));

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

g_ctrl_shown = [];
if (player getVariable ["tablet_on", false]) then
{
	g_app = "MAIN";
	["MAIN"] spawn AlysiaClient_fnc_tabletApp;
} else {
	private["_loading_ctrl", "_loading_ctrl_white"];

	g_CTRL_inUse = true;
	g_app = "";

	_loading_ctrl = _display ctrlCreate ["RscPicture", 7506];
	_loading_ctrl ctrlSetText "Alysia_Client_Texture\Data\tablet\backgrounds\loading_screen.jpg";
	_loading_ctrl ctrlSetPosition (ctrlPosition (_display displayCtrl 7502));
	_loading_ctrl ctrlCommit 0;

	if (profileNamespace getVariable ["ALYSIA_tablet_animation", true]) then
	{
		_loading_ctrl ctrlSetFade 1;
		_loading_ctrl ctrlCommit 0;

		_loading_ctrl_white = _display ctrlCreate ["RscPicture", 7508];
		_loading_ctrl_white ctrlSetText "#(argb,8,8,3)color(1,1,1,1)";
		_loading_ctrl_white ctrlSetPosition (ctrlPosition (_display displayCtrl 7502));
		_loading_ctrl_white ctrlCommit 0;

		playSound "tablet_startup";

		while {(!(isNull _display) && ((ctrlFade _loading_ctrl) > 0))} do
		{
			_loading_ctrl ctrlSetFade ((ctrlFade _loading_ctrl) - 0.05);
			_loading_ctrl ctrlCommit 0;

			_loading_ctrl_white ctrlSetFade ((ctrlFade _loading_ctrl_white) + 0.05);
			_loading_ctrl_white ctrlCommit 0;

			uiSleep 0.05;
		};

		if (!(isNull _display)) then {ctrlDelete _loading_ctrl_white};
	};

	g_CTRL_inUse = false;
};

_bar = _display displayCtrl 7501;
while {!(isNull _display)} do
{
	_bar ctrlSetStructuredText parseText format
	[
		"<t align='left'><img image='%1'/> %2</t><t align='center'>%3</t><t align='right'>%4/%5/%6 <img image='Alysia_Client_Texture\Data\tablet\infobar\date.paa'/></t>",
		if ("ItemGPS" in (assignedItems player)) then {"Alysia_Client_Texture\Data\tablet\infobar\gps_yes.paa"} else {"Alysia_Client_Texture\Data\tablet\infobar\gps_no.paa"},
		if ("ItemGPS" in (assignedItems player)) then {(mapGridPosition player)} else {"Pas de signal"},
		([] call AlysiaClient_fnc_strTime),
		(date select 2),
		(date select 1),
		(date select 0)
	];

	uiSleep 0.5;
};

g_app = "";
