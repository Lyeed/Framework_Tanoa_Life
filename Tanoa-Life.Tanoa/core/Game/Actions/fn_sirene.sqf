/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_veh", "_ret", "_config"];
_veh = vehicle player;
_ret = false;

if (_veh != player) then
{
	if (((driver _veh) isEqualTo player) && (isEngineOn _veh)) then
	{
		if (_veh getVariable ["sireneOn", false]) then {
			_veh setVariable ["sireneOn", false];
		} else {

			{
				_configs = (format["getText(_x >> 'item') isEqualTo '%1'", (_x select 0)]) configClasses (missionConfigFile >> "ALYSIA_HORN");
				if (count(_configs) > 0) exitWith {_config = (_configs select 0)};
			} forEach (_veh getVariable ["Trunk", []]);
			if (isNil "_config") exitWith {};

			if (time > (_veh getVariable ["sireneTime", 0])) then
			{
				_veh setVariable ["sireneOn", true];
				[_veh, getText(_config >> "sound"), getNumber(_config >> "sleep")] spawn
				{
					private["_veh", "_sirene", "_sleep"];
					_veh = _this select 0;
					_sirene = _this select 1;
					_sleep = _this select 2;
					while {((_veh getVariable ["sireneOn", false]) && ((vehicle player) isEqualTo _veh) && ((driver _veh) isEqualTo player) && (isEngineOn _veh))} do
					{
						_veh setVariable ["sireneTime", (time + _sleep)];
						[_veh, _sirene, 200] call AlysiaClient_fnc_globalSay3d;
						uiSleep _sleep;
					};
				};

				_ret = true;
			};
		};
	};
};

_ret;
