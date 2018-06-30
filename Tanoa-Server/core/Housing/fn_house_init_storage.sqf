/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_house", "_ret", "_from"];
_house = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_from = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if ((isNull _house) || (isNull _from)) exitWith {};

_ret = [format["SELECT STOCK_virtual,STOCK_arma FROM houses WHERE plate='%1'", (_house getVariable "house_owner") select 2], 2] call ExtDB3_fnc_async;

if (count(_ret) > 0) then
{
	_ret = _ret select 0;
	[_house, ([(_ret select 0)] call AlysiaServer_fnc_mresToArray), ([(_ret select 1)] call AlysiaServer_fnc_mresToArray)] remoteExec ["AlysiaClient_fnc_house_storage_create", _from];
};
