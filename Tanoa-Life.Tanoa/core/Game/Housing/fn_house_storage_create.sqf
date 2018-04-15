/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_virtual", "_arma", "_storage", "_weapons", "_magazines", "_items", "_backpack"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_virtual = [_this, 1, [], [[]]] call BIS_fnc_param;
_arma = [_this, 2, [[[],[]],[[],[]],[[],[]],[[],[]]], [[]]] call BIS_fnc_param;

if (isNull _target) exitWith {};

_id = (_target getVariable "house_owner") select 2;
if (isNull(missionNamespace getVariable [format["house_storage_out_%1", _id], objNull])) then
{
	_storage = createVehicle [getText(missionConfigFile >> "ALYSIA_HOUSES" >> typeOf(_target) >> "storage" >> "type"), [0, 0, 0], [], 0, "NONE"];
	missionNamespace setVariable [format["house_storage_out_%1", _id], _storage, true];
	player disableCollisionWith _storage;
	_storage setPosATL (getPosATL player);

	clearWeaponCargoGlobal _storage;
	clearItemCargoGlobal _storage;
	clearMagazineCargoGlobal _storage;
	clearBackpackCargoGlobal _storage;

	_storage setVariable ["Trunk", _virtual, true];

	_weapons = _arma select 0;
	if (!(isNil "_weapons")) then
	{
		if (!(_weapons isEqualTo [])) then
		{
			{
				_storage addWeaponCargoGlobal [_x, (_weapons select 1) select _forEachIndex];
			} foreach (_weapons select 0);
		};
	};

	_magazines = _arma select 1;
	if (!(isNil "_magazines")) then
	{
		if (!(_magazines isEqualTo [])) then
		{
			{
				_storage addMagazineCargoGlobal [_x, (_magazines select 1) select _forEachIndex];
			} foreach (_magazines select 0);
		};
	};

	_items = _arma select 2;
	if (!(isNil "_items")) then
	{
		if (!(_items isEqualTo [])) then
		{
			{
				_storage addItemCargoGlobal [_x, (_items select 1) select _forEachIndex];
			} foreach (_items select 0);
		};
	};

	_backpack = _arma select 3;
	if (!(isNil "_backpack")) then
	{
		if (!(_backpack isEqualTo [])) then
		{
			{
				_storage addBackpackCargoGlobal [_x, (_backpack select 1) select _forEachIndex];
			} foreach (_backpack select 0);
		};
	};

	["<t color='#FF8000'>Coffre</t> sortie."] call AlysiaClient_fnc_info;
	g_action_inUse = false;

	while {!(isNull _storage)} do
	{
		if ((missionNamespace getVariable [format["house_storage_out_%1", _id], objNull]) != _storage) then
		{
		 	deleteVehicle (missionNamespace getVariable [format["house_storage_out_%1", _id], objNull]);
		};

		uiSleep 0.5;
	};
};
