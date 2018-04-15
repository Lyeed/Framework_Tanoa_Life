/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_unit", "_damage", "_source", "_projectile", "_part"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

if (g_connected && !g_staff_god && (_damage > 0)) then
{
	_damage = _damage * 200;
	if ((isNull _source) && ((vehicle player) != player)) then
	{
		 if (g_seatbelt) then {
		 	_damage = _damage * 4;
		 } else {
		 	_damage = _damage * 10;
		};
	};

	if (!(isNull _source)) then
	{
		if ((_source != player) && (_projectile != "") && ((currentWeapon _source) != "")) then
		{
			if (getNumber(missionConfigFile >> "ALYSIA_ITEMS_ARMA" >> (currentWeapon _source) >> "disableDamage") isEqualTo 1) then {
				_damage = 0;
			} else {
				if (!(player getVariable ["bullet_check", false])) then
				{
					player setVariable ["bullet_check", true, true];
				};
			};
			if (((player distance _source) < 70) && (getNumber(missionConfigFile >> "ALYSIA_ITEMS_ARMA" >> (currentWeapon _source) >> "knockOut") isEqualTo 1)) then {
				[] spawn AlysiaClient_fnc_knockedOut;
			};
			if (((player distance _source) < 50) && (getNumber(missionConfigFile >> "ALYSIA_ITEMS_ARMA" >> (currentWeapon _source) >> "paintball") isEqualTo 1)) then
			{
				if ((player distance [5313.110352,11281.470703,0]) < 100) then {
					[] spawn AlysiaClient_fnc_knockedOut;
				};
			};
		};
	};

	{
		if (isPlayer _x) then
		{
			if (_x getVariable ["is_coma", false]) then
			{
				[_x, false] spawn AlysiaClient_fnc_action_body_drop;
				true breakOut "main";
			} else {
				[_x] spawn AlysiaClient_fnc_stopescort;
				true breakOut "main";
			};
		};
	} forEach attachedObjects player;

	[(_damage * -1), _source] call AlysiaClient_fnc_handleBlood;
	[(_damage / 10)] call AlysiaClient_fnc_handleBleed;
};

0;
