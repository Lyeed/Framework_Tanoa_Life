/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_player", "_config", "_actions"];

_config = ("getText(_x >> 'uid') isEqualTo (getPlayerUID player)" configClasses (missionConfigFile >> "ALYSIA_STAFF" >> "members")) select 0;
if (isNil "_config") exitWith {};

_player = player;

"Snake_random_F" createUnit [(position _player), (group _player), "", 0.5, "PRIVATE"];
g_snake_unit = ((nearestObjects [_player, ["Snake_random_F"], 300]) select 0);
g_snake_on = true;

("hudLayer" call BIS_fnc_rscLayer) cutText ["", "PLAIN"];
selectPlayer g_snake_unit;
_player setPos [1264.85,560.408,0.000864983];

_actions = (findDisplay 46) displayAddEventHandler [
	"KeyDown",
	"
		if ((_this select 1) == 0x39) then
		{
			_target = (nearestObjects[g_snake_unit, ['Man'], 3]) select 1;
			if (isNil '_target') then {
				['Aucune personne proche.'] call AlysiaClient_fnc_error;
			} else {
				['Saignement appliqué !'] call AlysiaClient_fnc_info;
				[75] remoteExecCall ['AlysiaClient_fnc_handleBleed', _target];
				[] remoteExec ['AlysiaClient_fnc_handleSnakeVenom', _target];
			};
		};

		if ((_this select 1) == 0xDB) then
		{
			if ((attachedObjects g_snake_unit) isEqualTo []) then
			{
				_target = (nearestObjects[g_snake_unit, ['Man'], 4]) select 1;
				if (isNil '_target') then {
					['Aucune personne proche.'] call AlysiaClient_fnc_error;
				} else {
					if (_target getVariable ['is_coma', false]) then
					{
						_target attachTo [g_snake_unit, [0, 1, 0]];
						['Début escorte.'] call AlysiaClient_fnc_info;
					} else {
						['Personne proche dans le coma.'] call AlysiaClient_fnc_error;
					};
				};
			} else {
				{
					detach _x;
				} forEach (attachedObjects g_snake_unit);
				['Escorte arrêté !'] call AlysiaClient_fnc_info;
			};
		};

		if ((_this select 1) isEqualTo 1) then
		{
			['Fin du mode serpent'] call AlysiaClient_fnc_info;
			g_snake_on = false;
		};
	"
];

waitUntil {!(alive g_snake_unit) || !g_snake_on};

{
	detach _x;
} forEach (attachedObjects g_snake_unit);

(findDisplay 46) displayRemoveEventHandler ["KeyDown", _actions];

selectPlayer _player;

deleteVehicle g_snake_unit;

if (!(alive g_snake_unit)) then
{
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

g_snake_unit = nil;
g_snake_on = nil;
