/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_config", "_index", "_reduiceFatigue", "_maxFatigue", "_event_next", "_medecine", "_event_sounds", "_contagion_chance"];
_type = [_this, 0, "", [""]] call BIS_fnc_param;

if (_type isEqualTo "") exitWith {};

_config = missionConfigFile >> "ALYSIA_DESEASES" >> _type;
if (!isClass(_config)) exitWith {};

if (missionNamespace getVariable [format["deases_%1_active", _type], false]) exitWith {};
if (g_staff_god) exitWith {};

if (([_type, g_vaccins] call AlysiaClient_fnc_index) != -1) exitWith {};

_index = [_type, g_deseases] call AlysiaClient_fnc_index;
if (_index isEqualTo -1) then
{
	_medecine = [];

	{
		_medecine pushBack
		[
			configName _x,
			round(random(getNumber(_x >> "heal" >> _type >> "max") - getNumber(_x >> "heal" >> _type >> "min"))) + getNumber(_x >> "heal" >> _type >> "min")
		];
	} forEach ((format["_x >> 'heal' >> '%1'", _type]) configClasses (missionConfigFile >> "ALYSIA_MEDECINE"));
	g_deseases pushBack [_type, _medecine];
} else {
	_medecine = (g_deseases select _index) select 1;
};

missionNamespace setVariable [format["deases_%1_active", _type], true];
_maxFatigue = getNumber(_config >> "reduce_fatigue");
_event_sounds = getArray(_config >> "event_sounds");
_contagion_chance = getNumber(_config >> "event_contagion_chance");
_event_next = 0;

while {count(_medecine) > 0} do
{
	if (time > _event_next) then
	{
		if (count(_event_sounds) > 0) then
		{
			[player, (_event_sounds call BIS_fnc_selectRandom), 15] call AlysiaClient_fnc_globalSay3d;
		};

		if (_contagion_chance > 0) then
		{
			if ((getNumber(missionConfigFile >> "ALYSIA_ITEMS_ARMA" >> (goggles player) >> "protect_contamination_air") isEqualTo 0) &&
				(getNumber(missionConfigFile >> "ALYSIA_ITEMS_ARMA" >> (headgear player) >> "protect_contamination_air") isEqualTo 0)) then {
				{
					if ((alive _x) && (_x != player) && !(_x getVariable ["is_coma", false])) then
					{
						if ((getNumber(missionConfigFile >> "ALYSIA_ITEMS_ARMA" >> (goggles _x) >> "protect_contamination_air") isEqualTo 0) &&
							(getNumber(missionConfigFile >> "ALYSIA_ITEMS_ARMA" >> (headgear _x) >> "protect_contamination_air") isEqualTo 0)) then {
							if (random(100) <= _contagion_chance) then
							{
								[_type] remoteExec ["AlysiaClient_fnc_handleDesease", _x];
							};
						};
					};
				} forEach ((getPos player) nearEntities ["Man", 5]);
			};
		};

		_event_next = time + (round(random(6) + 2) * 60);
	};

	if (_maxFatigue isEqualTo 1) then {
		uiSleep 10;
	} else {
		if ((getFatigue player) < _maxFatigue) then
		{
			player setFatigue _maxFatigue;
		};

		uiSleep 1;
	};
};

g_deseases deleteAt ([_type, g_deseases] call AlysiaClient_fnc_index);
missionNamespace setVariable [format["deases_%1_active", _type], false];
