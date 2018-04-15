/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_targets";
_targets =  [_this, 0, [], [[]]] call BIS_fnc_param;

if (_targets isEqualTo []) then
{
	_targets = gServer_houses;
};

{
	_id = (_x getVariable "house_owner") select 2;
	if (!(isNil "_id")) then
	{
		_storage = missionNamespace getVariable [format["house_storage_out_%1", _id], objNull];
		if (!(isNull _storage)) then
		{
			[_x, _storage] call AlysiaServer_fnc_house_save_storage;
		};
	};
} forEach _targets;
