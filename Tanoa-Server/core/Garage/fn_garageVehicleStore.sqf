/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_vehicle", "_storeInventory", "_vInfo", "_storePos"];
_vehicle = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_storePos = [_this, 1, [0, 0, 0], [[]]] call BIS_fnc_param;
_storeInventory = [_this, 2, false, [false]] call BIS_fnc_param;

if (isNull _vehicle) exitWith {};

_vInfo = _vehicle getVariable "info";
if (!(isNil "_vInfo")) then
{
	[
		format
		[
			"UPDATE vehicles SET active='0',fuel='%1',inventory='%2',POS_x='0',POS_y='0',POS_z='0',POS_store_x='%3',POS_store_y='%4',POS_store_z='%5',HitPointsDamage='%8',fuel_type='%9' WHERE pid='%6' AND plate='%7'",
			((fuel _vehicle) * 100),
			if (_storeInventory) then {[(_vehicle getVariable ["Trunk", []])] call AlysiaServer_fnc_mresArray} else {"""[]"""},
			(_storePos select 0),
			(_storePos select 1),
			(_storePos select 2),
			(_vInfo select 0),
			(_vInfo select 2),
			[([_vehicle] call AlysiaClient_fnc_getAllHitPointsDamage) select 2] call AlysiaServer_fnc_mresArray,
			(_vehicle getVariable ["refuel_type", ""])
		], 1
	] call ExtDB3_fnc_async;
};

deleteVehicle _vehicle;
