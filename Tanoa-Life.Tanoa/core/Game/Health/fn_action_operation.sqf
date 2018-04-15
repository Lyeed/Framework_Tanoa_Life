/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_unit", "_bed", "_chance"];
_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _unit) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (!(_unit getVariable ["is_coma", false])) exitWith {
	["La cible n'est pas dans le coma."] call AlysiaClient_fnc_error;
};

_bed = attachedTo _unit;
if (isNull _bed) exitWith {
	["La cible doit être installée sur une table d'opération."] call AlysiaClient_fnc_error;
};
if ((typeOf(_bed) isEqualTo "HospitalTable_F") && (playerSide != independent) && ((side _unit) != independent) && ((independent countSide allPlayers) > 0)) exitWith {
	["Des membres du SAMU sont présents. Veuillez les contacter pour qu'il performe l'opération."] call AlysiaClient_fnc_error;
};
if ((typeOf(_bed) isEqualTo "HealTable_F") && ((_bed getVariable ["sabotage", 0]) > serverTime)) exitWith {
	[format["Cette table d'opération clandestine a récemment été sabotée et ne peut être utilisée que dans %1 minutes", [((_bed getVariable ["sabotage", 0]) - time), "M:SS"] call CBA_fnc_formatElapsedTime]] call AlysiaClient_fnc_error;
};

if (_unit getVariable ["bullet_operation_inUse", false]) exitWith {
	["Quelqu'un effectue déjà une opération sur ce patient."] call AlysiaClient_fnc_error;
};

_unit setVariable ["bullet_operation_inUse", true, true];

if (!(["Opération", 15, _unit] call AlysiaClient_fnc_showProgress)) exitWith {
	_unit setVariable ["bullet_operation_inUse", false, true];
};

if (playerSide isEqualTo independent) then
{
	if ((["scalpel"] call AlysiaClient_fnc_itemCount) > 0) then {
		_chance = 4;
	} else {
		_chance = 8;
	};
} else {
	if ((["scalpel"] call AlysiaClient_fnc_itemCount) > 0) then {
		_chance = 20;
	} else {
		_chance = 30;
	};
};

if ((goggles player) isEqualTo "Masque_Chirurgical") then {
	_chance = _chance - 2;
};

_unit setVariable ["bullet_operation_inUse", false, true];
if (random(100) > _chance) then
{
	_unit setVariable ["bullet_check", false, true];
	["Opération <t color='#01DF01'>réussi</t>, les projectiles ont été extraits.<br/>Veuillez conduire le patient en salle de reveil si il y a."] call AlysiaClient_fnc_info;
} else {
	if (random(100) < 20) then
	{
		_unit setVariable ["heart_attack", true, true];
		["Opération <t color='#DF0101'>raté</t>."] call AlysiaClient_fnc_info;
		uiSleep 15;
		if (_unit getVariable ["heart_attack", false]) then
		{
			[player, _unit] remoteExecCall ["AlysiaServer_fnc_logDeath", 2];
			[player] remoteExecCall ["AlysiaClient_fnc_item_knife_apply", _unit];
			_unit setVariable ["heart_attack", false, true];
		};
	};
};
