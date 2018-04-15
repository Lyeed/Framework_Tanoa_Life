/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_vehicle", "_data", "_position", "_try", "_type", "_time", "_from", "_loop_count", "_types"];
_from = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_type = [_this, 1, "", [""]] call BIS_fnc_param;
_time = [_this, 2, 0, [0]] call BIS_fnc_param;

if (isNull _from) exitWith {};

_config = missionConfigFile >> "ALYSIA_MISSIONS" >> _type;
if (getNumber(_config >> "count_per_reboot") != -1) then
{
	_count = call compile format["mission_reboot_%1_mission", _type];
	if (isNil "_count") then {
		call compile format["mission_reboot_%1_mission=1;publicVariable""mission_reboot_%1_mission"";", _type];
	} else {
		call compile format["mission_reboot_%1_mission=%2+1;publicVariable""mission_reboot_%1_mission"";", _type, _count];
	};
};

_data = ([getArray(configFile >> "Cfg_Server" >> "mission" >> _type >> "positions")] call CBA_fnc_shuffle) call BIS_fnc_selectRandom;
_position = _data select 0;

[
	format
	[
		"La livraison arrivera en <t color='#04B45F'>%1</t> dans <t color='#FF8000'>%2</t>.",
		(mapGridPosition _position),
		[_time, "H:MM:SS"] call CBA_fnc_formatElapsedTime
	],
	"LIVRAISON"
] remoteExecCall ["AlysiaClient_fnc_phone_message_receive", _from];

uiSleep _time;

_try = 1;
while {(count(nearestObjects[_position, ["Car", "Air", "Ship", "Tank"], 8]) > 0)} do
{
	[format["Un véhicule bloque l'apparition de la mission.<br/>Tentative n°%1<br/>Nouvel essaie dans 10 secondes...", _try]] remoteExecCall ["AlysiaClient_fnc_error", _from];
	uiSleep 10;
	_try = _try + 1;
};

if (getNumber(_config >> "loop_count_random") isEqualTo -1) then {
	_loop_count = getNumber(_config >> "loop_count_min");
} else {
	_loop_count = round(random(getNumber(_config >> "loop_count_random")) + getNumber(_config >> "loop_count_min"));
};

_types = [];
{
	if (count(getArray(_config >> "stock" >> _x)) > 0) then {
		_types pushBack _x;
	};
} forEach (["weapons", "magazines", "items", "backpacks", "virtuals"]);

_vehicle = getText(_config >> "vehicle") createVehicle _position;
_vehicle setDir (_data select 1);
[_vehicle] call AlysiaClient_fnc_clearVehicleAmmo;

if (!isNull(_from)) then
{
	[
		format
		[
			"La livraison est arrivée en <t color='#04B45F'>%1</t>.",
			(mapGridPosition _position)
		],
		"LIVRAISON"
	] remoteExecCall ["AlysiaClient_fnc_phone_message_receive", _from];
};

for "_i" from 0 to _loop_count do
{
	_type = ([_types] call CBA_fnc_shuffle) call BIS_fnc_selectRandom;

	_item = ([getArray(_config >> "stock" >> _type)] call CBA_fnc_shuffle) call BIS_fnc_selectRandom;
	switch _type do
	{
		case "weapons": {_vehicle addWeaponCargoGlobal [_item, 1]};
		case "magazines": {_vehicle addMagazineCargoGlobal [_item, 4]};
		case "backpacks": {_vehicle addBackpackCargoGlobal [_item, 1]};
		case "items": {_vehicle addItemCargoGlobal [_item, 1]};
		case "virtuals": {[true, _vehicle, "Trunk", _item, 1] call AlysiaClient_fnc_handleTrunk};
	};
};

if ((_vehicle isKindOf "Car") || (_vehicle isKindOf "Ship") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Tank")) then
{
	if (local _vehicle) then {
		_vehicle lock 2;
	} else {
		[_vehicle, 2] remoteExecCall ["lock", _vehicle];
	};
} else {
	["Le coffre sera supprimé dans <t color='#FF8000'>20 minutes</t>."] remoteExecCall ["AlysiaClient_fnc_info", _from];
	uiSleep (60 * 20);
	deleteVehicle _vehicle;
};
