/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_housePos", "_rand", "_house", "_player"];
_house = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_player = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if ((isNull _house) || (isNull _player)) exitWith {};
if (_house in gServer_houses) exitWith
{
	diag_log format["Error: (_house in gServer_houses) in AlysiaServer_fnc_house_add.sqf (%1)", getPlayerUID _player];
	["Cette maison n'est pas en vente."] remoteExecCall ["AlysiaClient_fnc_info", owner _player];
};

_housePos = getPosATL _house;
_rand = round(random(999999));

_house setVariable ["house_owner", [(getPlayerUID _player), (_player getVariable "realname"), _rand], true];
gServer_houses pushBack _house;

[
	format
	[
		"INSERT INTO houses (pid,POS_x,POS_y,POS_z,STOCK_virtual,STOCK_arma,tenants,plate,classname) VALUES ('%1','%2','%3','%4','""[]""','""[[],[],[],[]]""','""[]""','%5','%6')",
		(getPlayerUID _player),
		(_housePos select 0),
		(_housePos select 1),
		(_housePos select 2),
		_rand,
		typeOf(_house)
	], 1
] call ExtDB3_fnc_async;

_this call AlysiaServer_fnc_logHouseBuy;

[_house] remoteExecCall ["AlysiaClient_fnc_houseReceive", (owner _player)];
