/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_name", "_owner", "_type", "_plate", "_owner_name", "_position", "_direction", "_members", "_cash", "_object", "_inventory_virtual", "_inventory_arma", "_bank_history", "_link_percentage"];
_name = [_this, 0, "", [""]] call BIS_fnc_param;
_owner = [_this, 1, "", [""]] call BIS_fnc_param;
_type = [_this, 2, "", [""]] call BIS_fnc_param;
_plate = [_this, 3, "", [""]] call BIS_fnc_param;
_owner_name = [_this, 4, "", [""]] call BIS_fnc_param;
_position = [_this, 5, [], [[]]] call BIS_fnc_param;
_direction = [_this, 6, 0, [0]] call BIS_fnc_param;
_members = [_this, 7, [], [[]]] call BIS_fnc_param;
_cash = [_this, 8, 0, [0]] call BIS_fnc_param;
_inventory_virtual = [_this, 9, [], [[]]] call BIS_fnc_param;
_inventory_arma = [_this, 10, [[],[],[],[]], [[]]] call BIS_fnc_param;
_bank_history = [_this, 11, [], [[]]] call BIS_fnc_param;
_link_percentage = [_this, 12, 0, [0]] call BIS_fnc_param;

_object = getText(missionConfigFile >> "ALYSIA_COMPANIES_TYPES" >> _type >> "building") createVehicle _position;
_object setDir _direction;

if (_cash > 0) then {
	_object setVariable ["company_bank", _cash, true];
};

if (count(_bank_history) > 0) then {
	_object setVariable ["company_bank_history", _bank_history];
};

if (count(_inventory_virtual) > 0) then {
	_object setVariable ["company_inv_virtual", _inventory_virtual, true];
};
_object setVariable ["company_inv_arma", _inventory_arma, true];

_object setVariable ["company_members", _members, true];
_object setVariable ["company_info", [_name, _owner, _type, _plate, _owner_name], true];
/*
	0 - name
	1 - owner
	2 - type
	3 - plate
	4 - owner name
*/

if (count(getArray(missionConfigFile >> "ALYSIA_COMPANIES_TYPES" >> _type >> "ressources_link")) > 0) then {
	_object setVariable ["company_link_percentage", _link_percentage, true];
};

for "_i" from 1 to getNumber(configFile >> "CfgVehicles" >> (typeOf _object) >> "numberOfDoors") do
{
	_object animate [format["door_%1_rot", _i], 0];
	_object setVariable [format["bis_disabled_Door_%1", _i], 1, true];
};

_object;
