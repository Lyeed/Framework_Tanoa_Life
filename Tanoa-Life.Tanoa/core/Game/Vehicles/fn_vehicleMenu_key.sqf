/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_lock"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_lock = [_this, 1, false, [false]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if (_lock) then
{
	if ((locked _target) != 2) then
	{
		systemChat "<MENU VEHICULE> Véhicule verrouillé";
		if (!(isLightOn _target)) then
		{
			_target spawn
			{
				player action ["lightOn",  _this];
				uiSleep 0.2;
				player action ["lightOff",  _this];
				uiSleep 0.2;
				player action ["lightOn",  _this];
				uiSleep 0.2;
				player action ["lightOff",  _this];
			};
		};

		if (local _target) then {
			_target lock 2;
		} else {
			[_target, 2] remoteExecCall ["lock", _target, false];
		};

		[_target, "car_lock", 50] call AlysiaClient_fnc_globalSay3d;
		[] call AlysiaClient_fnc_interactions_recall;
	} else {
		systemChat "<MENU VEHICULE> Véhicule déjà verrouillé";
	};
} else {
	if ((locked _target) isEqualTo 2) then
	{
		systemChat "<MENU VEHICULE> Véhicule déverrouillé";
		if (!(isLightOn _target)) then
		{
			_target spawn
			{
				player action ["lightOn",  _this];
				uiSleep 0.2;
				player action ["lightOff",  _this];
			};
		};

		if (local _target) then {
			_target lock 0;
		} else {
			[_target, 0] remoteExecCall ["lock", _target, false];
		};

		[_target, "car_open", 50] call AlysiaClient_fnc_globalSay3d;
		[] call AlysiaClient_fnc_interactions_recall;
	} else {
		systemChat "<MENU VEHICULE> Véhicule déjà déverrouillé";
	};
};
