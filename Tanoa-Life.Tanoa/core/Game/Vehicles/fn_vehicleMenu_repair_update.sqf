/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_sel", "_display", "_health", "_tool", "_part", "_item", "_repair", "_hasItem", "_hasTool"];
disableSerialization;

_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

_display = findDisplay 2900;
if (isNull _display) exitWith {};
if ((_sel isEqualTo -1) || (isNull _list) || ((_list lbText _sel) isEqualTo "Aucune")) exitWith {};

_health = _list lbValue _sel;
_part = _list lbData _sel;
_item = getText(missionConfigFile >> "ALYSIA_REPAIR" >> _part >> "item");
_tool = getText(missionConfigFile >> "ALYSIA_REPAIR" >> _part >> "tool");

if ((_tool isEqualTo "") || ((_tool != "") && (_tool in (magazines player)))) then
{
	_hasTool = true;
	if ((_item isEqualTo "") || ((_item != "") && (_item in (magazines player)))) then
	{
		_repair = 100;
		_hasItem = true;
	} else {
		_hasItem = false;
		_repair = 40;
	};
} else {
	_hasTool = false;
	_hasItem = false;
	_repair = 0;
};

(_display displayCtrl 2916) ctrlSetStructuredText parseText format
[
	"<t align='left'><img image='%1'/></t><t align='center'>Informations</t>",
	getText(missionConfigFile >> "ALYSIA_REPAIR" >> _part >> "picture")
];

(_display displayCtrl 2909) ctrlSetStructuredText parseText format
[
	"<t align='left'>Etat</t><t align='right' color='%5'>%1%2</t><br/>" +
    "<t align='left'>Outil</t><t align='right' color='%6'>%3</t><br/>" +
    "<t align='left'>Pièce</t><t align='right' color='%7'>%4</t><br/>" +
    "<t align='left'>Réparation possible</t><t align='right' color='%8'>%9%2</t>",
    _health,
    "%",
	if (_tool isEqualTo "") then {"Aucun"} else {getText(configFile >> "CfgMagazines" >> _tool >> "displayName")},
	if (_item isEqualTo "") then {"Aucune"} else {getText(configFile >> "CfgMagazines" >> _item >> "displayName")},
	([_health] call AlysiaClient_fnc_vehicleMenu_repair_getColor) select 1,
	if (_hasTool) then {"#8cff9b"} else {"#ff8c8c"},
	if (_hasItem) then {"#8cff9b"} else {"#ff8c8c"},
	([_repair] call AlysiaClient_fnc_vehicleMenu_repair_getColor) select 1,
	_repair
];

if ((_health < _repair) && ((_tool isEqualTo "") || (_tool in (magazines player)))) then
{
	ctrlShow[2911, true];
	ctrlShow[2912, true];
	ctrlShow[2913, true];
	ctrlShow[2914, true];
	ctrlShow[2915, true];
} else {
	ctrlShow[2911, false];
	ctrlShow[2912, false];
	ctrlShow[2913, false];
	ctrlShow[2914, false];
	ctrlShow[2915, false];
};
