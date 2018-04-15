/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private[
	"_death_timer",
	"_display",
	"_ctrl_left",
	"_id",
	"_ctrl_suicide_left",
	"_counter_max",
	"_someone_near",
	"_ctrl_near",
	"_ctrl_samu",
	"_ctrl_suicide_image",
	"_ctrl_suicide_button",
	"_ctrl_suicide_text",
	"_ctrl_suicide_frame"
];

if (g_staff_god) exitWith {};

uiSleep(random(0.7) + 0.1);
if (player getVariable ["is_coma", false]) exitWith {};

player setVariable ["is_coma", true, true];

_direct_killer = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

0 fadeSound 0;

if (visibleMap) then {
	openMap false;
};
if (dialog) then {
	closeDialog 0;
};

[player, g_damage_history, _direct_killer] remoteExecCall ["AlysiaServer_fnc_logComa", 2];
g_damage_history = [];

if (player getVariable ["surrender", false]) then {
	player setVariable ["surrender", false, true];
};
if (player getVariable ["restrained", false]) then {
	player setVariable ["restrained", false, true];
};

{
	if (isPlayer _x) then
	{
		if (_x getVariable ["is_coma", false]) then {
			[_x, false] spawn AlysiaClient_fnc_action_body_drop;
		} else {
			[_x, false] spawn AlysiaClient_fnc_stopescort;
		};
	} else {
		if (isClass(missionConfigFile >> "ALYSIA_DYN_OBJECTS" >> typeOf(_x))) then {
			detach _x;
		};
	};
} forEach (attachedObjects player);

if (missionNamespace getVariable ["calling", false]) then
{
	[true, false] call AlysiaClient_fnc_APP_phone_call_hangup;
};

createDialog "RscDisplayComa";

disableSerialization;
_display = findDisplay 350;

_id = _display displayAddEventHandler ["KeyDown", "true"];

_ctrl_left = _display displayCtrl 351;

_ctrl_suicide_left = _display displayCtrl 355;
_ctrl_suicide_image = _display displayCtrl 352;
_ctrl_suicide_button = _display displayCtrl 354;
_ctrl_suicide_text = _display displayCtrl 353;
_ctrl_suicide_frame = _display displayCtrl 360;

_ctrl_near = _display displayCtrl 359;
_ctrl_samu = _display displayCtrl 358;

_time_before_suicide = getNumber(missionConfigFile >> "ALYSIA_MEDICAL" >> "coma" >> "wait_before_suicide");
_death_timer = getNumber(missionConfigFile >> "ALYSIA_MEDICAL" >> "coma" >> "death_timer");
_counter_max = _death_timer;

g_blood = 10;
g_bleed = 0;
g_coma_dead = false;
g_coma_suicide = false;

if ((vehicle player) != player) then {
	player action ["Eject", (vehicle player)];
};

player setVariable ["tf_globalVolume", 0];
if ((player getVariable ["tf_voiceVolume", 0]) > 0) then {
	player setVariable ["tf_voiceVolume", 0, true];
};

while {(_death_timer > 0) && !g_coma_dead && (player getVariable ["is_coma", false])} do
{
	if ((vehicle player) isKindOf "Man") then
	{
		_animation = switch (true) do
		{
			case (typeOf(attachedTo player) in ["HospitalTable_F","HealTable_F","Alysia_Medical_Brancard_01_F","Alysia_Medical_Lit_01_F"]): {"ainjppnemstpsnonwrfldnon"};
			case (player getVariable ["heart_attack", false]): {"ainjppnemrunsnonwnondb"};
			default {"acts_InjuredLookingRifle01"};
		};

		if ((animationState player) != _animation) then
		{
			[player, _animation] remoteExecCall ["switchMove", 0];
		};
	};

	_ctrl_samu ctrlSetStructuredText parseText format
	[
		"<t align='center'><t color='#FF8000'>%1 membres</t> du <t color='#0489B1'>SAMU</t> présents</t>",
		independent countSide allPlayers
	];

	_someone_near = false;
	{
		if (((player distance _x) < 10) && !(_x getVariable ["is_coma", false]) && !(isObjectHidden _x)) exitWith {_someone_near = true};
	} forEach allPlayers;
	if (_someone_near) then {
		_ctrl_near ctrlSetStructuredText parseText "<t align='center' size='1.2'>Quelqu'un est proche de vous</t>";
	} else {
		_ctrl_near ctrlSetStructuredText parseText "<t align='center' size='1.2'>Personne n'est proche de vous</t>";
	};

	player setOxygenRemaining 1;
	playSound "death";

	_reduce = switch (true) do
	{
		case (player getVariable ["bullet_operation_inUse", false]):
		{
			_ctrl_suicide_left ctrlSetStructuredText parseText "<t align='center' size='1.5'>Vous êtes en train d'être opéré. Croisez les doigts pour que l'opération se passe bien</t>";
			_ctrl_suicide_left ctrlShow true;
			_ctrl_suicide_image ctrlShow false;
			_ctrl_suicide_button ctrlShow false;
			_ctrl_suicide_text ctrlShow false;
			_ctrl_suicide_frame ctrlShow false;
			false;
		};
		case (player getVariable ["bed_awake", false]):
		{
			_ctrl_suicide_left ctrlSetStructuredText parseText "<t align='center' size='1.5'>Vous êtes en salle de réveil dans un centre hospitalier. Vous devriez vous réveiller très bientôt</t>";
			_ctrl_suicide_left ctrlShow true;
			_ctrl_suicide_image ctrlShow false;
			_ctrl_suicide_button ctrlShow false;
			_ctrl_suicide_text ctrlShow false;
			_ctrl_suicide_frame ctrlShow false;
			false;
		};
		case (g_adrenaline > 0):
		{
			_ctrl_suicide_left ctrlSetStructuredText parseText "<t align='center' size='1.5'>Vous êtes sous l'effet de l'adrénaline</t>";
			_ctrl_suicide_left ctrlShow true;
			_ctrl_suicide_image ctrlShow false;
			_ctrl_suicide_button ctrlShow false;
			_ctrl_suicide_text ctrlShow false;
			_ctrl_suicide_frame ctrlShow false;
			false;
		};
		case (time < (player getVariable ["medic_request_time", 0])):
		{
			_ctrl_suicide_left ctrlSetStructuredText parseText format
			[
				"<t align='center' size='1.4'>Vous avez contacté le SAMU récemment. Vous aurez de nouveau la possibilité d'aller directement en soin intensif dans %1</t>",
				[(player getVariable ["medic_request_time", 0]) - time, "H:MM:SS"] call CBA_fnc_formatElapsedTime
			];
			_ctrl_suicide_left ctrlShow true;
			_ctrl_suicide_image ctrlShow false;
			_ctrl_suicide_button ctrlShow false;
			_ctrl_suicide_text ctrlShow false;
			_ctrl_suicide_frame ctrlShow false;
			true;
		};
		case (_death_timer > (_counter_max - _time_before_suicide)):
		{
			_ctrl_suicide_left ctrlSetStructuredText parseText format
			[
				"<t align='center' size='1.5'>Vous pouvez aller en soin intensif dans %1</t>",
				[(_death_timer - (_counter_max - _time_before_suicide)) , "H:MM:SS"] call CBA_fnc_formatElapsedTime
			];
			_ctrl_suicide_left ctrlShow true;
			_ctrl_suicide_image ctrlShow false;
			_ctrl_suicide_button ctrlShow false;
			_ctrl_suicide_text ctrlShow false;
			_ctrl_suicide_frame ctrlShow false;
			true;
		};
		default
		{
			_ctrl_suicide_left ctrlShow false;
			_ctrl_suicide_image ctrlShow true;
			_ctrl_suicide_button ctrlShow true;
			_ctrl_suicide_text ctrlShow true;
			_ctrl_suicide_frame ctrlShow true;
			true;
		};
	};

	if (_reduce) then
	{
		_ctrl_left ctrlSetStructuredText parseText format
		[
			"<t align='center' size='1.5'>Il vous reste %1 à vivre</t>",
			[_death_timer , "H:MM:SS"] call CBA_fnc_formatElapsedTime
		];

		_death_timer = _death_timer - 1;
		if (_death_timer isEqualTo 0) then
		{
			g_coma_dead = true;
			player setDamage 1;
		};
	} else {
		_ctrl_left ctrlSetStructuredText parseText "<t align='center'>Vous êtes stabilisé</t>";
	};

	uiSleep 1;
};

_display displayRemoveEventHandler ["KeyDown", _id];
closeDialog 0;
if (player getVariable ["is_coma", false]) then {player setVariable ["is_coma", false, true]};
if (player getVariable ["medic_request", false]) then {player setVariable ["medic_request", false, true]};
if (player getVariable ["bed_awake", false]) then {player setVariable ["bed_awake", false, true]};

if (!g_coma_dead) then
{
	player switchCamera "Internal";
	player setFatigue getNumber(missionConfigFile >> "ALYSIA_MEDICAL" >> "coma" >> "setFatigue_when_stabilize");
	cutText ["", "BLACK IN", 20, true];
	getNumber(missionConfigFile >> "ALYSIA_MEDICAL" >> "coma" >> "time_fade_sound_when_stabilize") fadeSound 1;
	missionNamespace setVariable ["silence", false];
	[getNumber(missionConfigFile >> "ALYSIA_MEDICAL" >> "coma" >> "blood_receive_when_stabilize")] call AlysiaClient_fnc_handleBlood;

	if (g_thirst < 10) then {[15] call AlysiaClient_fnc_handleThirst};
	if (g_hunger < 10) then {[15] call AlysiaClient_fnc_handleHunger};
	if ((player getVariable ["tf_voiceVolume", 0]) isEqualTo 0) then {player setVariable ["tf_voiceVolume", 1, true]};
	if ((player getVariable ["tf_globalVolume", 0]) isEqualTo 0) then {player setVariable ["tf_globalVolume", 1]};

	_attachedTo = attachedTo player;
	if (isNull(_attachedTo)) then
	{
		uiSleep(random(4) + 3);
		if (!(player getVariable ["is_coma", false])) then {
			[player, ""] remoteExecCall ["switchMove", 0];
		};
	} else {
		detach player;
		if (isClass(missionConfigFile >> "ALYSIA_CHAIRS" >> typeof(_attachedTo))) then
		{
			waitUntil {isNull (attachedTo player)};
			if(!([_attachedTo] call AlysiaClient_fnc_sitDown)) then {
				[player, ""] remoteExecCall ["switchMove", 0];
			};
		};
	};
} else {
	if (!isNull(attachedTo player)) then {
		detach player;
	};
};
