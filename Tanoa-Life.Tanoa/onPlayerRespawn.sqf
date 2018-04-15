/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_config", "_name", "_timeFade"];

if ((player getVariable ["tf_voiceVolume", 1]) isEqualTo 0) then {player setVariable ["tf_voiceVolume", 1, true]};
if ((player getVariable ["tf_globalVolume", 1]) isEqualTo 0) then {player setVariable ["tf_globalVolume", 1]};
if (player getVariable ["surrender", false]) then {player setVariable ["surrender", false, true]};
if (player getVariable ["restrained", false]) then {player setVariable ["restrained", false, true]};
if (!(isNull (player getVariable ["escorting", objNull]))) then {player setVariable ["escorting", objNull, true]};
if (!(isNull (player getVariable ["escorted", objNull]))) then {player setVariable ["escorted", objNull, true]};
if (player getVariable ["bullet_check", false]) then {player setVariable ["bullet_check", false, true]};
if (player getVariable ["bed_awake", false]) then {player setVariable ["bed_awake", false, true]};
if (player getVariable ["is_coma", false]) then {player setVariable ["is_coma", false, true]};
if (player getVariable ["medic_request", false]) then {player setVariable ["medic_request", false, true]};
if (player getVariable ["heart_attack", false]) then {player setVariable ["heart_attack", false, true]};

g_carryWeight = 0;
g_is_alive = true;
g_bleed = 0;
g_blood = 50;
g_hunger = 100;
g_thirst = 100;

resetCamShake;

[] call AlysiaClient_fnc_init_actions;
[] call AlysiaClient_fnc_init_loadout;

if ((player getVariable ["arrested", false]) && !(isNull g_arrest_Prison) && !(g_arrest_Cellule isEqualTo "")) then
{
	_config_cell = missionConfigFile >> "ALYSIA_PRISONS" >> typeof(g_arrest_Prison) >> "cells" >> g_arrest_Cellule;
	player setPos (g_arrest_Prison modelToWorld getArray(_config_cell >> "pos"));
	player setDir getNumber(_config_cell >> "dir");
} else {
	_config = missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "respawn";
	if (["assr_medical"] call AlysiaClient_fnc_hasLicense) then
	{
		missionNamespace setVariable ["license_assr_medical", false];
		["Votre assurance médicale a payé les frais d'hospitalisation.<br/>Pensez à aller voir un médecin pour souscrire de nouveau à l'assurance pour ne pas payer plein tarif lors de votre prochaine opération.", "buy"] call AlysiaClient_fnc_info;
	} else {
		_price = getNumber(_config >> "price");
		if (_price > 0) then
		{
			if (g_atm < _price) then {
				["Vous n'avez pas assez d'argent pour payer vos frais d'hospitalisation<br/>Ces derniers on été payé par l'Etat", "buy"] call AlysiaClient_fnc_info;
			} else {
				[format["Vos frais d'<t color='#FE2EF7'>hospitalisation</t> s'élèvent à <t color='#8cff9b'>%1$</t>.", ([_price] call AlysiaClient_fnc_numberText)], "buy"] call AlysiaClient_fnc_info;
				[false, _price, "Soins hôpital"] call AlysiaClient_fnc_handleATM;
				[independent, true, _price] remoteExecCall ["AlysiaServer_fnc_factionBankHandle", 2];
			};
		} else {
			["Vous ne payez pas de frais d'hospitalisation."] call AlysiaClient_fnc_info;
		};
	};

	if (g_coma_suicide) then
	{
		_percent = getNumber(_config >> "suicide");
		if (_percent > 0) then
		{
			[false, round(g_atm * _percent), "Soin intensif"] call AlysiaClient_fnc_handleATM;
		};
	};

	if (isNull g_respawn_point) then
	{
		private "_spawn";
		_name = "Hôpital de Malieuville";
		_spawn = false;
		_timeFade = 30;

		{
			if ([_x, false] call AlysiaClient_fnc_sitDown) exitWith {_spawn = true};
		} forEach ([
			medical_bed_8,
			medical_bed_7,
			medical_bed_6,
			medical_bed_5,
			medical_bed_4,
			medical_bed_3,
			medical_bed_2,
			medical_bed_1
		]);

		if (!_spawn) then {
			player setPos (getMarkerPos "respawn_guerrila");
		};

		[150] call AlysiaClient_fnc_handleBlood;
	} else {
		_timeFade = 10;
		_name = "Chez vous";
		player setPosATL (g_respawn_point buildingPos 0);
		[4000] call AlysiaClient_fnc_handleBlood;
	};
};

_timeFade fadeSound 1;
("deathLayer" call BIS_fnc_rscLayer) cutText ["", "BLACK IN", _timeFade, true];

[
	[
		[_name, "<t align = 'center' size = '1'>%1</t><br/>"],
		[([] call AlysiaClient_fnc_strDate), "<t align = 'center' size = '0.7'>%1</t><br/>"],
		[([] call AlysiaClient_fnc_strTime), "<t align = 'center' size = '0.7'>%1</t>"]
	]
] spawn BIS_fnc_typeText;
