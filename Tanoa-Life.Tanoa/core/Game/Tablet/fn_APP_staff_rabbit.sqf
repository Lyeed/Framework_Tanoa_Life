/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_player", "_config", "_actions"];

_config = ("getText(_x >> 'uid') isEqualTo (getPlayerUID player)" configClasses (missionConfigFile >> "ALYSIA_STAFF" >> "members")) select 0;
if (isNil "_config") exitWith {};

_player = player;

"Rabbit_F" createUnit [(position _player), (group _player), "", 0.5, "PRIVATE"];
g_rabbit_unit = ((nearestObjects [_player, ["Rabbit_F"], 300]) select 0);
g_rabbit_on = true;

("hudLayer" call BIS_fnc_rscLayer) cutText ["", "PLAIN"];
selectPlayer g_rabbit_unit;
_player setPos [1264.85,560.408,0.000864983];

_actions = (findDisplay 46) displayAddEventHandler [
	"KeyDown",
	"
		if ((_this select 1) == 0x39) then
		{
			_target = (nearestObjects[g_rabbit_unit, ['Man'], 3]) select 1;
			if (isNil '_target') then {
				['Aucune personne proche.'] call AlysiaClient_fnc_error;
			} else {
				['Saignement appliqué !'] call AlysiaClient_fnc_info;
				[125] remoteExecCall ['AlysiaClient_fnc_handleBleed', _target];
			};
		};

		if ((_this select 1) == 0x10) then
		{
			_target = (nearestObjects[g_rabbit_unit, ['Car','Air','Tank'], 6]) select 0;
			if (isNil '_target') then {
				['Aucun véhicule proche.'] call AlysiaClient_fnc_error;
			} else {
				['Roue crevée !'] call AlysiaClient_fnc_info;
				[_target, (['HitRF2Wheel','HitRFWheel','HitLFWheel','HitLF2Wheel'] call BIS_fnc_selectRandom), 1] call AlysiaClient_fnc_setHitPointDamage;
			};
		};

		if ((_this select 1) == 0x12) then
		{
			_target = (nearestObjects[g_rabbit_unit, ['Car','Air','Tank'], 6]) select 0;
			if (isNil '_target') then {
				['Aucun véhicule proche.'] call AlysiaClient_fnc_error;
			} else {
				['Réservoir vidé !'] call AlysiaClient_fnc_info;
				[_target, 0] remoteExecCall ['setFuel', _target];
			};
		};

		if ((_this select 1) == 0xDB) then
		{
			if ((attachedObjects g_rabbit_unit) isEqualTo []) then
			{
				_target = (nearestObjects[g_rabbit_unit, ['Man'], 4]) select 1;
				if (isNil '_target') then {
					['Aucune personne proche.'] call AlysiaClient_fnc_error;
				} else {
					if (_target getVariable ['is_coma', false]) then
					{
						_target attachTo [g_rabbit_unit, [0, 1, 0]];
						['Début escorte.'] call AlysiaClient_fnc_info;
					} else {
						['Personne proche dans le coma.'] call AlysiaClient_fnc_error;
					};
				};
			} else {
				{
					detach _x;
				} forEach (attachedObjects g_rabbit_unit);
				['Escorte arrêté !'] call AlysiaClient_fnc_info;
			};
		};

		if ((_this select 1) isEqualTo 1) then
		{
			['Fin du mode lapin'] call AlysiaClient_fnc_info;
			g_rabbit_on = false;
		};
	"
];

waitUntil {!(alive g_rabbit_unit) || !g_rabbit_on};

{
	detach _x;
} forEach (attachedObjects g_rabbit_unit);

(findDisplay 46) displayRemoveEventHandler ["KeyDown", _actions];

selectPlayer _player;

if (alive g_rabbit_unit) then {
	deleteVehicle g_rabbit_unit;
} else {
	uiSleep 3;
	if ((player getVariable ["tf_voiceVolume", 1]) isEqualTo 0) then {player setVariable ["tf_voiceVolume", 1, true]};
	if ((player getVariable ["tf_globalVolume", 1]) isEqualTo 0) then {player setVariable ["tf_globalVolume", 1]};

	("deathLayer" call BIS_fnc_rscLayer) cutText ["", "BLACK IN"];
	player forceAddUniform "Skyline_Uniforme_Alysia_01_F";
	player addItem "ItemMap";
	player assignItem "ItemMap";

	{
		if (typeOf(_x) isEqualTo "Skyline_Alysia_Crane_01_F") then
		{
			if (((_x getVariable ["info", ["","",""]]) select 2) isEqualTo (getPlayerUID player)) then
			{
				deleteVehicle _x;
			};
		};
	} forEach (allMissionObjects "All");
};

[] call AlysiaClient_fnc_init_hud;

g_rabbit_unit = nil;
g_rabbit_on = nil;
