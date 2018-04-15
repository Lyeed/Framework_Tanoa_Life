/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_sel", "_part", "_item", "_tool", "_heal", "_dmg", "_useItem", "_error", "_time"];

if (isNull g_interaction_target) exitWith {};

disableSerialization;
_display = findDisplay 2900;
if (isNull _display) exitWith {};

_sel = lbCurSel 2907;
if (_sel isEqualTo -1) exitWith {};

closeDialog 0;
_part = lbData[2907, _sel];

_tool = getText(missionConfigFile >> "ALYSIA_REPAIR" >> _part >> "tool");
if ((_tool != "") && !(_tool in (magazines player))) exitWith {
	[format["Vous n'avez pas l'outil requis (<t color='#8cff9b'>%1</t>) pour effectuer cette réparation", getText(configFile >> "CfgMagazines" >> _tool >> "displayName")]] call AlysiaClient_fnc_error;
};

_item = getText(missionConfigFile >> "ALYSIA_REPAIR" >> _part >> "item");
if ((_item isEqualTo "") || ((_item != "") && (_item in (magazines player)))) then
{
	_heal = 100;
	_useItem = true;
	_time = getNumber(missionConfigFile >> "ALYSIA_REPAIR" >> _part >> "time") * 1.5;
} else {
	_heal = 40;
	_useItem = false;
	_time = getNumber(missionConfigFile >> "ALYSIA_REPAIR" >> _part >> "time");
};

_life = lbValue[2907, _sel];
_error = false;
if (_life >= _heal) exitWith
{
	[
		format
		[
			"L'état actuel de <t color='#0174DF'>%1</t> est de <t color='%2'>%3</t>%4 et ne peut être réparé qu'à <t color='%5'>%6</t>%4."
			lbText[2907, _sel],
			([_life] call AlysiaClient_fnc_vehicleMenu_repair_getColor) select 1,
			_life,
			"%",
			([_heal] call AlysiaClient_fnc_vehicleMenu_repair_getColor) select 1,
			_heal
		]
	] call AlysiaClient_fnc_error;
};

if (!([format["Réparation : %1", (lbText[2907, _sel])], _time, g_interaction_target, "", "InBaseMoves_repairVehicleKnl"] call AlysiaClient_fnc_showProgress)) exitWith {};

if ((_tool != "") && !(_tool in (magazines player))) exitWith {
	[format["Vous n'avez pas l'outil requis (<t color='#8cff9b'>%1</t>) pour effectuer cette réparation", getText(configFile >> "CfgMagazines" >> _tool >> "displayName")]] call AlysiaClient_fnc_error;
};

if ((_item != "") && _useItem) then
{
	if (_item in (magazines player)) then {
		player removeMagazine _item;
	} else {
		_error = true;
		["Vous devez garder les pièces de rechange sur vous pendant la réparation"] call AlysiaClient_fnc_error;
	};
};

if (!_error) then {
	[g_interaction_target, _part, ((100 - _heal) / 100)] call AlysiaClient_fnc_setHitPointDamage;
};
