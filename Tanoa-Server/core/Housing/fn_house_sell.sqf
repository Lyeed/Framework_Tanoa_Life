/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_house", "_player"];
_house = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_player = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if ((isNull _house) || (isNull _player)) exitWith {};

_this call AlysiaServer_fnc_logHouseSell;
[[_house]] call AlysiaServer_fnc_cleanup_houseStorages;
[_house] remoteExecCall ["AlysiaClient_fnc_house_menu_action_keys_change_update", -2];
[format["DELETE FROM houses WHERE plate='%1'", (_house getVariable "house_owner") select 2], 1] call ExtDB3_fnc_async;

gServer_houses deleteAt (gServer_houses find _house);

_house setVariable ["house_tenants", []];
_house setVariable ["house_sold", true, true];
for "_i" from 1 to getNumber(configFile >> "CfgVehicles" >> (typeOf _house) >> "numberOfDoors") do
{
	_house animate [format["door_%1_rot", _i], 0];
	_house setVariable [format["bis_disabled_Door_%1", _i], 0, true];
};

uiSleep 2;

_house setVariable ["house_owner", nil, true];
