/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_index", "_price", "_action", "_target"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {};

if (((_target getVariable ["house_owner", ["", ""]]) select 0) != (getPlayerUID player)) exitWith {
	["Cette maison ne vous appartient pas."] call AlysiaClient_fnc_error;
};

_price = round(getNumber(missionConfigFile >> "ALYSIA_HOUSES" >> (typeOf _target) >> "price") / 2);
_action =
[
	format["Vous allez <t color='#DF0101'>vendre</t> votre maison pour <t color='#8cff9b'>%1$</t>", [_price] call AlysiaClient_fnc_numberText],
	"Vente de propriété",
	"Valider",
	"Annuler"
] call BIS_fnc_guiMessage;
if (_action) then
{
	uiSleep(random(1) + 0.1);

	if ((time - g_action_delay) < 2) exitWith {
		["Veuillez ralentir dans vos actions."] call AlysiaClient_fnc_error;
	};
	g_action_delay = time;

	_index = g_houses find _target;
	if (_index isEqualTo -1) exitWith {
		["Vous n'avez pas les clés de cette maison."] call AlysiaClient_fnc_error;
	};

	if (g_respawn_point isEqualTo _target) then {
		[] call AlysiaClient_fnc_house_menu_action_spawn_cancel;
	};

	g_houses deleteAt _index;
	deleteMarkerLocal (format["house_%1", _index]);
	[true, _price, "Vente maison"] call AlysiaClient_fnc_handleATM;
	[_target, player] remoteExec ["AlysiaServer_fnc_house_sell", 2];
	["Vente <t color='#3ADF00'>effectuée</t>.", "buy"] call AlysiaClient_fnc_info;
};
