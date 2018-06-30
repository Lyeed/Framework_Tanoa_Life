/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_storage"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_storage = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if ((isNull _storage) || (isNull _target)) exitWith {};

[
	format
	[
		"UPDATE houses SET STOCK_virtual='%1',STOCK_arma='%2' WHERE plate='%3'",
		[(_storage getVariable ["Trunk", []])] call AlysiaServer_fnc_mresArray,
		[([getWeaponCargo _storage, getMagazineCargo _storage, getItemCargo _storage, getBackpackCargo _storage])] call AlysiaServer_fnc_mresArray,
		(_target getVariable "house_owner") select 2
	], 1
] call ExtDB3_fnc_async;

deleteVehicle _storage;
