/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_index", "_data", "_vehicleClassname", "_vehicleGaragePosition", "_price", "_validSpawn", "_vehicle", "_spawnPos", "_action", "_hitpoints", "_spawnDir"];

if (!(isNil "gServer_soonReboot")) exitWith
{
	["<t align='center'>Veuillez attendre le <t color='#B40404'>redémarrage</t> du serveur pour sortir un véhicule."] call AlysiaClient_fnc_error;
	closeDialog 0;
};

_index = lbValue[2802, (lbCurSel 2802)];
if (_index isEqualTo -1) exitWith {
	["Vous n'avez pas sélectionné de véhicule."] call AlysiaClient_fnc_error;
};

_data = g_garage_vehicles select _index;
_vehicleClassname = _data select 0;
_vehicleGaragePosition = [_data select 6, _data select 7, _data select 8];

if ((g_garage_info select 3) isEqualTo 0) then
{
	_price = 0;
	_action = true;
} else {
	_price = ([_vehicleClassname] call AlysiaClient_fnc_fetchVehInfo) select 17;
	if ([_vehicleGaragePosition] call AlysiaClient_fnc_nearFourriere) then
	{
		private "_price_fourriere";
		_price_fourriere = _price * 2.5;
		_action =
		[
			format
			[
				"Votre véhicule se trouve à la <t color='#FF8000'>fourrière</t>.<br/>" +
				"Vous devez payer <t color='#8cff9b'>%1</t>$ pour le récupérer.<br/>" +
				"Details :<br/>" +
				"Prix de garage initial - <t color='#8cff9b'>%2</t>$<br/>" +
				"Supplément de la fourrière - <t color='#8cff9b'>%3</t>$",
				[_price + _price_fourriere] call AlysiaClient_fnc_numberText,
				[_price] call AlysiaClient_fnc_numberText,
				[_price_fourriere] call AlysiaClient_fnc_numberText
			],
			"Fourrière",
			"Payer",
			"Quitter"
		] call BIS_fnc_guiMessage;
		_price = _price + _price_fourriere;
	} else {
		_action = true;
	};
};

if (!_action) exitWith {};

uiSleep(random(1) + 0.1);

if ((time - g_action_delay) < 2) exitWith {
	["Veuillez ralentir dans vos actions."] call AlysiaClient_fnc_error;
};
g_action_delay = time;

if (g_atm < _price) exitWith
{
	[
		format
		[
				"Vous n'avez pas assez d'argent dans votre compte en banque<br/>"
			+	"Prix : <t color='#ff8c8c'>%1</t>$"
			+	"Manquant : <t color='#ff8c8c'>%2</t>$",
			[_price] call AlysiaClient_fnc_numberText,
			[_price - g_atm] call AlysiaClient_fnc_numberText
		]
	] call AlysiaClient_fnc_error;
};

if ((g_garage_info select 2) isEqualTo []) then
{
	if (!(isNull g_interaction_target)) then
	{
		_position = (getPosATL g_interaction_target) findEmptyPosition [(((boundingBox g_interaction_target) select 1) select 0), ((((boundingBox g_interaction_target) select 1) select 0) + 70), _vehicleClassname];
		if (count(_position) > 0) then
		{
			if ((nearestObjects [_position, ["Car", "Air", "Ship"], 7]) isEqualTo []) then
			{
				_spawnPos = _position;
				_spawnDir = 0;
			};
		};
	};
} else {
	{
		if ((nearestObjects [(getMarkerPos _x), ["Car", "Air", "Ship"], 7]) isEqualTo []) exitWith
		{
			_spawnPos = getMarkerPos _x;
			_spawnDir = markerDir _x;
		};
	} forEach (g_garage_info select 2);
};

if ((isNil "_spawnPos") || (isNil "_spawnDir")) exitWith {
	["Aucun emplacement de sortie de véhicule n'est libre."] call AlysiaClient_fnc_error;
};

[false, _price, format["Sortie véhicule (%1)", (_data select 5)]] call AlysiaClient_fnc_handleATM;

_vehicle = createVehicle [_vehicleClassname, _spawnPos, [], 0, "NONE"];

_vehicle setPos _spawnPos;
_vehicle setDir _spawnDir;
_vehicle lock 2;

[_vehicle] call AlysiaClient_fnc_clearVehicleAmmo;

_hitpoints = ([_vehicle] call AlysiaClient_fnc_getAllHitPointsDamage) select 0;

{
	if (_x > 0) then
	{
		_hit = _hitpoints select _forEachIndex;
		if (!(isNil "_hit")) then
		{
			if (_hit != "") then
			{
				if (local _vehicle) then {
					_vehicle setHitIndex [_forEachIndex, _x];
				} else {
					[_vehicle, [_forEachIndex, _x]] remoteExecCall ["setHitIndex", _vehicle];
				};
			};
		};
	};
} forEach (_data select 10);

[
	format
	[
		"Vous avez récupéré <t color='#FF8000'>%1</t> de <t color='#2E9AFE'>%2</t> pour <t color='#8cff9b'>%3</t>$.",
		lbText[2802, (lbCurSel 2802)],
		(g_garage_info select 0),
		[_price] call AlysiaClient_fnc_numberText
	], "buy"
] call AlysiaClient_fnc_info;

[(_data select 1), _vehicle, player] remoteExec ["AlysiaServer_fnc_garageVehicleSpawn", 2];

if (!((_data select 4) isEqualTo [])) then {_vehicle setVariable ["Trunk", (_data select 4), true]};
if ((_data select 11) != "") then {_vehicle setVariable ["refuel_type", (_data select 11), true]};

_vehicle setVariable ["info", [(getPlayerUID player), (player getVariable ["realname", profileName]), (_data select 1), (_data select 2)], true];
_vehicle setFuel ((_data select 3) / 100);

g_vehicles pushBack _vehicle;
closeDialog 0;
