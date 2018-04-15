/*
	Tanoa-Life RPG
	Code written by nomisum
*/

_firing_position = _this select 0;
_type1 = _this select 1;
_initial_velocity = _this select 2;
_explosion_power = _this select 3;
_glitter_count = _this select 4;
_color = _this select 5;
_explosion_fragments_array = (_this select 6);
_explosion_subfragments_array = (_this select 7);
_randomSleep = _this select 8;
_randomSleepLong = _this select 9;
_randomLaunch = _this select 10;
_launchSound = _this select 11;
_whistlingSound = _this select 12;
_bangSound = _this select 13;
_singleFizz = _this select 14;
_groupFizz = _this select 15;
_randomSleepShort = _this select 16;

_nul1 ="CMflare_Chaff_Ammo" createVehicleLocal [_firing_position select 0,_firing_position select 1, 0];
_nul1 setVelocity _initial_velocity;

_light1 = "#lightpoint" createVehicleLocal [0,0,0];
_light1 setLightBrightness 0.1;
_light1 setLightColor [1,0.3,0];
_light1 setLightUseFlare true;
_light1 setLightFlareMaxDistance 1000;
_light1 setLightFlareSize 5;

_light2 = "#lightpoint" createVehicleLocal [0,0,0];
_light2 setLightBrightness 0.08;
_light2 setLightColor [1,0.8,0];
_light2 setLightUseFlare true;
_light2 setLightFlareMaxDistance 1000;
_light2 setLightFlareSize 4;
uiSleep 0.01;

_light1 lightAttachObject  [_nul1,[0,0,0]];
_light2 lightAttachObject  [_nul1,[0,0,0]];
_nul1 say3D _launchsound;
uiSleep 1;

if (_type1 isEqualTo "fizzer") then {_nul1 say3D _whistlingSound};
uiSleep (2 + _randomSleepShort);

deleteVehicle _light1;
deleteVehicle _light2;

_nul2 ="FxExploArmor3" createVehicleLocal (getPos _nul1);
uiSleep 0.10;

_nul2 say3D _bangSound;

for [{_i=0},{_i < count _explosion_fragments_array},{_i=_i+1}] do
{
	[_nul1,_type1,_explosion_fragments_array,_explosion_subfragments_array,_color,_glitter_count,_i,_randomSleep,_randomSleepLong,_singleFizz,_groupFizz,_bangSound] spawn
	{
		_rocket = _this select 0;
		_type2 = _this select 1;
		_fragments = _this select 2;
		_subfragments = _this select 3;
		_color2 = _this select 4;
		_glitter_count2 = _this select 5;
		_selector = _this select 6;
		_randomSleep2 = _this select 7;
		_randomSleepLong2 = _this select 8;
		_singleFizz1 = _this select 9;
		_groupFizz1 = _this select 10;
		_bangSound1 = _this select 11;

		_nul2 ="CMflare_Chaff_Ammo" createVehicleLocal (getPos _rocket);
		_smoke ="SmokeLauncherAmmo" createVehicleLocal (getPos _rocket);
		_nul2 setVelocity (_fragments select _selector);

		_light2 = "#lightpoint" createVehicleLocal [0,0,0];
		_light2 setLightBrightness 1.0;
		if (_type2 isEqualTo "normal" || _type2 isEqualTo "fizzer") then {
			_light2 setLightAmbient [1,0.9,0.6];
		} else {
			_light2 setLightAmbient _color2;
		};

		_light2 setLightColor _color2;
		_light2 lightAttachObject  [_nul2,[0,0,0]];

		_light2 setLightUseFlare true;
		_light2 setLightFlareMaxDistance 1000;
		_light2 setLightFlareSize 3;

		if (_type2 isEqualTo "normal") then
		{
			uiSleep (3 + (random 1));
			deleteVehicle _light2;
		};

		if (_type2 isEqualTo "fizzer") then
		{
			uiSleep 1.0;
			deleteVehicle _light2;

			_nul2 say3D _bangSound1;

			for [{_j=0},{_j < (count _subfragments)},{_j=_j+1}] do
			{
				[_nul2,_type2,_subfragments,_color2,_j,_randomSleep2,_randomSleepLong2,_singleFizz1,_groupFizz1,_bangSound1] spawn
				{
					_rocket2 = _this select 0;
					_type3 = _this select 1;
					_subfragments2 = _this select 2;
					_color3 = _this select 3;
					_selector2 = _this select 4;
					_randomSleep3 = _this select 5;
					_randomSleepLong3 = _this select 6;
					_singleFizz2 = _this select 7;
					_groupFizz2 = _this select 8;
					_bangSound2 = _this select 9;

					_posx = (getPos _rocket2) select 0;
					_posy = (getPos _rocket2) select 1;
					_posz = (getPos _rocket2) select 2;

					deleteVehicle _rocket2;

					_nul3 ="F_20mm_White" createVehicleLocal [_posx + ((random 20)-10),_posy+ ((random 20)-10),_posz+ ((random 20)-10)];
					_nul3 setVelocity (_subfragments2 select _selector2);
					_light3 = "#lightpoint" createVehicleLocal [0,0,0];
					_light3 setLightBrightness 2;

					if (_type3 isEqualTo "normal" || _type3 isEqualTo "fizzer") then {
						_light3 setLightAmbient [1,0.9,0.6];
					} else {
						_light3 setLightAmbient _color3;
					};

					_light3 setLightColor _color3;
					_light3 lightAttachObject  [_nul3,[0,0,0]];

					_light3 setLightUseFlare true;
					_light3 setLightFlareMaxDistance 1000;
					_light3 setLightFlareSize 1;

					uiSleep (random 1);
					_nul3 say3D (_singleFizz2 call BIS_fnc_selectRandom);

					uiSleep (2 - (random 1.5));

					deleteVehicle _light3;
					deleteVehicle _nul3;
				};
			};
		};

		if (_type2 isEqualTo "rain")  then
		{
			uiSleep 1.0;
			_nul2 say3D _bangSound1;
			[_nul2,_type2,_fragments,_color2,_selector,_randomSleep2,_randomSleepLong2,_singleFizz1,_groupFizz1,_bangSound1] spawn
			{
				_rocket2 = _this select 0;
				_type2 = _this select 1;
				_subfragments2 = _this select 2;
				_color3 = _this select 3;
				_selector2 = _this select 4;
				_randomSleep3 = _this select 5;
				_randomSleepLong3 = _this select 6;
				_singleFizz2 = _this select 7;
				_groupFizz2 = _this select 8;
				_bangSound2 = _this select 9;

				_posx = (getPos _rocket2) select 0;
				_posy = (getPos _rocket2) select 1;
				_posz = (getPos _rocket2) select 2;

				deleteVehicle _rocket2;

				_nul3 ="FxWindPollen1" createVehicleLocal [getPos _rocket2 select 0,getPos _rocket2 select 1,getPos _rocket2 select 2];
				_nul3 setVelocity (_subfragments2 select _selector2);

				_light3 = "#lightpoint" createVehicleLocal [0,0,0];
				_light3 setLightBrightness 2;
				if (_type2 isEqualTo "normal" || _type2 isEqualTo "fizzer") then
				{
					_light3 setLightAmbient [1,0.9,0.6];
				} else {
					_light3 setLightAmbient _color3;
				};

				_light3 setLightColor _color3;
				_light3 lightAttachObject  [_nul3,[0,0,0]];

				_light3 setLightUseFlare true;
				_light3 setLightFlareMaxDistance 1000;
				_light3 setLightFlareSize 1;

				uiSleep (random 1);
				_nul3 say3D (_singleFizz2 call BIS_fnc_selectRandom);

				uiSleep (2 - (random 1.5));

				deleteVehicle _light3;
				deleteVehicle _nul3;
			};

			uiSleep 1;
			deleteVehicle _light2;
		};
	};
};

uiSleep 1;

_nul2 say3D (_groupFizz call BIS_fnc_selectRandom);
uiSleep 2;
deleteVehicle _nul2;
