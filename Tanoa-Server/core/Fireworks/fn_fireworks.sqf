/*
	Tanoa-Life RPG
	Code written by nomisum
*/

_firing_position = _this select 0;
_type = _this select 1;
_color = _this select 2;

_explosion_power = 50;
_glitter_count = 20;
_initial_velocity = [(random 10) -5,(random 10)-5, 300];

_colorArray = [[0.42,0.81,0.1],[0.8,0.1,0.35],[0.2,0.73,0.85],[1,1,1]];
_explosion_fragments_array = [];
_explosion_subfragments_array = [];

_randomLaunch = (random 4.5) - 2.3;
_randomSleep = (random 0.5) - 0.25;
_randomSleepLong = (random 8) - 4;
_randomSleepShort = (random 0.1) - 0.05;

_color = switch (_color) do
{
	case "random": {_colorArray call BIS_fnc_selectRandom};
	case "green": {[0.42,0.81,0.1]};
	case "red": {[0.8,0.1,0.35]};
	case "blue": {[0.2,0.73,0.85]};
	case "white": {[1,1,1]};
	default {[1,1,1]};
};

_launchSound =
[
	"launch1",
	"launch2",
	"launch3",
	"launch4",
	"launch5",
	"launch6",
	"launch7"
] call BIS_fnc_selectRandom;

_whistlingSound =
[
	"whistling1",
	"whistling2",
	"whistling3",
	"whistling4"
] call BIS_fnc_selectRandom;

_bangSound =
[
	"bang01",
	"bang02",
	"bang03",
	"bang04",
	"bang05",
	"bang06",
	"bang07",
	"bang08",
	"bang10",
	"bang11"
] call BIS_fnc_selectRandom;

_singleFizz =
[
	"fizz_single_type1_1",
	"fizz_single_type1_2",
	"fizz_single_type1_3",
	"fizz_single_type1_4",
	"fizz_single_type2_1",
	"fizz_single_type2_2",
	"fizz_single_type2_3",
	"fizz_single_type2_4"
];

_groupFizz =
[
	"fizz_group1",
	"fizz_group2",
	"fizz_group3",
	"fizz_group4"
];

_type = switch (_type) do
{
	case "random": {["fizzer","normal","rain"] call BIS_fnc_selectRandom};
	case "normal": {"normal"};
	case "fizzer": {"fizzer"};
	case "rain": {"rain"};
	default {["fizzer","normal","rain"] call BIS_fnc_selectRandom};
};

if (_type isEqualTo "normal") then
{
	_glitter_count = _glitter_count * 2;
	_explosion_power = _explosion_power / 2;
};

for [{_i = 0}, {_i < _glitter_count}, {_i = _i + 1}] do
{
	_rand_expl_power1 = ((random _explosion_power)*2) - _explosion_power;
	_rand_expl_power2 = ((random _explosion_power)*2) - _explosion_power;
	_rand_expl_power3 = ((random _explosion_power)*2) - _explosion_power;
	_explosion_fragments_array = _explosion_fragments_array +
	[[(_rand_expl_power1) -_rand_expl_power1/2,(_rand_expl_power2) -_rand_expl_power2/2, (_rand_expl_power3) -_rand_expl_power3/2]];

	if (_i < _glitter_count/3) then
	{
		_rand_subexpl_power1 = ((random _explosion_power)/2) - _explosion_power/2;
		_rand_subexpl_power2 = ((random _explosion_power)/2) - _explosion_power/2;
		_rand_subexpl_power3 = ((random _explosion_power)/2) - _explosion_power/2;
		_explosion_subfragments_array = _explosion_subfragments_array + [[(_rand_subexpl_power1/4) -_rand_subexpl_power1/8,(_rand_subexpl_power2/4) -_rand_subexpl_power2/8, (_rand_subexpl_power3/4) -_rand_subexpl_power3/8]];
	};
};

if (_type isEqualTo "rain") then
{
	_color = [1,0.9,0.6];

	for [{_i = 0}, {_i < _glitter_count}, {_i = _i + 1}] do
	{
		_rand_expl_power1 = ((random _explosion_power)*2) - _explosion_power;
		_rand_expl_power2 = ((random _explosion_power)*2) - _explosion_power;
		_rand_expl_power3 = ((random _explosion_power)*2);
		_explosion_fragments_array = _explosion_fragments_array +
		[[(_rand_expl_power1) -_rand_expl_power1/2,(_rand_expl_power2) -_rand_expl_power2/2, (_rand_expl_power3) -_rand_expl_power3/2]];

		if (_i < _glitter_count/3) then
		{
			_rand_subexpl_power1 = ((random _explosion_power)/2) - _explosion_power/2;
			_rand_subexpl_power2 = ((random _explosion_power)/2) - _explosion_power/2;
			_rand_subexpl_power3 = ((random _explosion_power)/2);
			_explosion_subfragments_array = _explosion_subfragments_array +
			[[(_rand_subexpl_power1/4) -_rand_subexpl_power1/8,(_rand_subexpl_power2/4) -_rand_subexpl_power2/8, (_rand_subexpl_power3/4) -_rand_subexpl_power3/8]];
		};
	};
};

[
	_firing_position,
	_type,
	_initial_velocity,
	_explosion_power,
	_glitter_count,
	_color,
	_explosion_fragments_array,
	_explosion_subfragments_array,
	_randomSleep,
	_randomSleepLong,
	_randomLaunch,
	_launchSound,
	_whistlingSound,
	_bangSound,
	_singleFizz,
	_groupFizz,
	_randomSleepShort
] remoteExec ["AlysiaClient_fnc_fireworks_effects", -2];
