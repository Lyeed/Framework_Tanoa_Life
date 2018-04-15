/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_history", "_list", "_display", "_button", "_company", "_config_history"];
_history = [_this, 0, [], [[]]] call BIS_fnc_param;
_company = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if (isNull _company) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

g_interaction_target = _company;

createDialog "RscDisplayDefaultListChoice";

disableSerialization;
_display = findDisplay 69000;

(_display displayCtrl 69001) ctrlSetStructuredText parseText "<t size='1.5' align='center'>Livre des comptes</t>";
(_display displayCtrl 69008) ctrlSetText "Alysia_Client_Texture\Data\companies\background.jpg";

_list = _display displayCtrl 69002;
lbClear _list;

_list lbAdd format["Actuel : %1$", [(_company getVariable ["company_bank", 0])] call AlysiaClient_fnc_numberText];
_list lbSetPicture [0, "Alysia_Client_Texture\Data\interactions\player_to_company\action_book.paa"];

{
	_index = _list lbAdd format["%1$ le %2 de %3 (%4)", ([_x select 3] call AlysiaClient_fnc_numberText), _x select 1, _x select 0, _x select 4];
	if ((_x select 2) isEqualTo 1) then {
		_list lbSetPicture [_index, "Alysia_Client_Texture\Data\global\ope_plus.paa"];
		_list lbSetColor [_index, [0,1,0,1]];
	} else {
		_list lbSetPicture [_index, "Alysia_Client_Texture\Data\global\ope_minus.paa"];
		_list lbSetColor [_index, [1,0,0,1]];
	};
	_list lbSetTooltip [_index, (_list lbText _index)];
} forEach _history;

if ((lbSize _list) isEqualTo 1) then {
	_list lbAdd "Historique vide";
};

_config_history = missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "companies" >> "history" >> "clean";
if (isClass(_config_history)) then
{
	if (
			(getNumber(_config_history >> "rank") <= (player getVariable ["rank",0])) &&
			(
				(getText(_config_history >> "license") isEqualTo "") ||
				([getText(_config_history >> "license")] call AlysiaClient_fnc_hasLicense)
			)
		) then {

		(_display displayCtrl 69006) ctrlSetStructuredText parseText "<t align='left' size='1.3'>Vider</t>";

		_button = _display displayCtrl 69007;
		_button buttonSetAction
		"
			[g_interaction_target, player] remoteExec ['AlysiaServer_fnc_company_history_clear', 2];
			closeDialog 0;
		";

		_button ctrlSetEventHandler["MouseEnter",
			"((findDisplay 69000) displayCtrl 69005) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#000000'>Vider</t>"";
			((findDisplay 69000) displayCtrl 69004) ctrlSetBackgroundColor [1,1,1,1];
			ctrlSetText[69005, ""Alysia_Client_Texture\Data\global\validate_select.paa""];
			ctrlShow[69003, false];"
		];

		_button ctrlSetEventHandler["MouseExit",
			"((findDisplay 69000) displayCtrl 69005) ctrlSetStructuredText parseText ""<t align='left' size='1.3' color='#FFFFFF'>Vider</t>"";
			((findDisplay 69000) displayCtrl 69004) ctrlSetBackgroundColor [0,0,0,0.6];
			ctrlSetText[69005, ""Alysia_Client_Texture\Data\global\validate.paa""];
			ctrlShow[69003, true];"
		];
	} else {
		ctrlShow[69003, false];
		ctrlShow[69004, false];
		ctrlShow[69005, false];
		ctrlShow[69006, false];
		ctrlShow[69007, false];
	};
} else {
	ctrlShow[69003, false];
	ctrlShow[69004, false];
	ctrlShow[69005, false];
	ctrlShow[69006, false];
	ctrlShow[69007, false];
};
