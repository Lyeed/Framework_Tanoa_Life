/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_idc"];

disableSerialization;
_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_idc = 9020;

{
	if (call compile getText(_x >> "condition")) then
	{
		_btn = _display displayCtrl _idc;
		_btn ctrlSetText getText(_x >> "name");
		if (getNumber(_x >> "verify") isEqualTo 1) then
		{
			_btn buttonSetAction format
			[
				"
					[] spawn
					{
						_action = [
							""Vous êtes sur le point d'executer l'action : %2<br/>Validez-vous ?"",
							""Validation"",
							""Valider"",
							""Annuler""
						] call BIS_fnc_guiMessage;
						if (_action) then
						{
							%1
							[] call AlysiaClient_fnc_APP_staff_player_actions_update;
						} else {
							[""Action annulée""] call AlysiaClient_fnc_info;
						};
					};
				",
				getText(_x >> "statement"),
				getText(_x >> "name")
			];
		} else {
			_btn buttonSetAction format
			[
				"
					%1
					[] call AlysiaClient_fnc_APP_staff_player_actions_update;
				",
				getText(_x >> "statement")
			];
		};

		[_idc, true] call AlysiaClient_fnc_tabletShow;
		_idc = _idc + 1;
	};
} forEach ("(getPlayerUID player) in getArray(_x >> 'allow')" configClasses (missionConfigFile >> "ALYSIA_STAFF" >> "commands" >> "buttons"));

for "_i" from 9020 to 9028 do {
	[_idc, false] call AlysiaClient_fnc_tabletShow;
};

if (_idc > 9020) then
{
	[9008, true] call AlysiaClient_fnc_tabletShow;
	[9009, true] call AlysiaClient_fnc_tabletShow;
};
