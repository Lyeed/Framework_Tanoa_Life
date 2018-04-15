/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_item", "_config"];
_item = [_this, 0, "", [""]] call BIS_fnc_param;

if (_item isEqualTo "") exitWith {};

_config = missionConfigFile >> "ALYSIA_ITEMS" >> _item >> "food";
if (isClass(_config)) then
{
	_sound = getText(_config >> "sound");
	if (_sound != "") then
	{
		if ((missionNamespace getVariable ["last_sound_time", 0]) < time) then
		{
			[player, _sound, 10] call AlysiaClient_fnc_globalSay3d;
			missionNamespace setVariable ["last_sound_time", (time + 2)];
		};
	};
	[getNumber(_config >> "thirst")] call AlysiaClient_fnc_handleThirst;
	[getNumber(_config >> "hunger")] call AlysiaClient_fnc_handleHunger;
	[getNumber(_config >> "alcool")] call AlysiaClient_fnc_handleAlcool;
	if (isClass(missionConfigFile >> "ALYSIA_MEDECINE" >> _item)) then {
		[_item] spawn AlysiaClient_fnc_handleMedecine;
	};
	if (isClass(missionConfigFile >> "ALYSIA_DRUGS" >> _item)) then {
		[_item] spawn AlysiaClient_fnc_handleDrug;
	};

	_unlimitedRun = getNumber(_config >> "unlimitedRun");
	if (_unlimitedRun > 0) then
	{
		_actual = missionNamespace getVariable ["unlimitedRun", 0];
		if (_actual isEqualTo 0) then
		{
			missionNamespace setVariable ["unlimitedRun", _unlimitedRun];
			[] spawn
			{
				while {((missionNamespace getVariable ["unlimitedRun", 0]) > 0)} do
				{
					if ((getFatigue player) > 0) then {player setFatigue ((getFatigue player) - 0.1)};
					missionNamespace setVariable ["unlimitedRun", (missionNamespace getVariable ["unlimitedRun", 0]) - 1];
					uiSleep 1;
				};
				missionNamespace setVariable ["unlimitedRun", 0];
			};
		} else {
			missionNamespace setVariable ["unlimitedRun", (_actual + _unlimitedRun)];
		};
	};
};
