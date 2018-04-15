/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_sel", "_price", "_mission", "_config", "_count", "_actual", "_time"];

disableSerialization;
_display = findDisplay 97000;
if (isNull _display) exitWith {};

_sel = lbCurSel 97001;
if (_sel isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné de mission."] call AlysiaClient_fnc_error;
};

_mission = lbData[97001, _sel];
_config = missionConfigFile >> "ALYSIA_MISSIONS" >> _mission;
if ((_mission isEqualTo "") || !(isClass(_config))) exitWith {
	["Impossible de récupérer les informations de la mission."] call AlysiaClient_fnc_error;
};

_price = getNumber(_config >> "price");
if ((g_cash < _price) && ((["illegal_money"] call AlysiaClient_fnc_itemCount) < _price)) exitWith {
	["Vous n'avez pas assez d'argent."] call AlysiaClient_fnc_error;
};

_count = getNumber(_config >> "count_per_reboot");
_actual = call compile format["mission_reboot_%1_mission", _mission];
if (isNil "_actual") then {
	_actual = 0;
};
if ((_count != -1) && (_actual >= _count)) exitWith {
	["Le quota pour ce type de mission a déjà été atteint."] call AlysiaClient_fnc_error;
};

_time = round(random(getNumber(_config >> "max_delivery_time") - getNumber(_config >> "min_delivery_time")) * 60) + (getNumber(_config >> "min_delivery_time") * 60);
if (((gServer_rebootHour * 60) - serverTime) < _time) exitWith
{
	[
		format
		[
			"Le serveur redémarre dans %1<br/>Le temps de livraison est de %2<br/>Impossible de démarrer la mission",
			[(gServer_rebootHour * 60) - serverTime, "H:MM:SS"] call CBA_fnc_formatElapsedTime,
			[_time, "H:MM:SS"] call CBA_fnc_formatElapsedTime
		]
	] call AlysiaClient_fnc_error;
};

closeDialog 0;
uiSleep(random(1) + 0.1);

if ((time - g_action_delay) < 2) exitWith {
	["Veuillez ralentir dans vos actions."] call AlysiaClient_fnc_error;
};
g_action_delay = time;

if (_price > 0) then
{
	if ((["illegal_money"] call AlysiaClient_fnc_itemCount) >= _price) then {
		[false, "illegal_money", _price] call AlysiaClient_fnc_handleInv;
	} else {
		[false, _price] call AlysiaClient_fnc_handleCash;
	};
	[0] call AlysiaDB_fnc_query_update_partial;
};
playSound "buy";

if (isClass(_config >> "prevent")) then {
	[_mission] remoteExecCall ["AlysiaClient_fnc_shop_mission_prevent", -2];
};

[player, _mission, _time] remoteExec ["AlysiaServer_fnc_faction_mission", 2];
