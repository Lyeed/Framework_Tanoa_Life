/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_storage", "_target", "_virtual", "_armaStorage", "_weapons", "_magazines", "_items", "_backpack"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (g_action_inUse) exitWith {
	["Vous êtes déjà en train d'effectuer une action."] call AlysiaClient_fnc_error;
};
if (!(isNil "gServer_soonReboot") && hasInterface) exitWith {
	["Vous ne pouvez pas interagir avec votre coffre juste avant le <t color='#B40404'>redémarrage</t> du serveur."] call AlysiaClient_fnc_error;
};

uiSleep((random(1)) + 0.5);

g_action_inUse = true;
_storage = _target getVariable ["company_storage_out", objNull];
if (isNull _storage) then
{
	_pos = getPosATL player;
	_storage = createVehicle [getText(missionConfigFile >> "ALYSIA_COMPANIES_TYPES" >> ((_target getVariable "company_info") select 2) >> "storage" >> "type"), [0, 0, 0], [], 0, "NONE"];
	_target setVariable ["company_storage_out", _storage, true];
	_storage setPosATL [(_pos select 0) + 1, _pos select 1, _pos select 2];

	clearWeaponCargoGlobal _storage;
	clearItemCargoGlobal _storage;
	clearMagazineCargoGlobal _storage;
	clearBackpackCargoGlobal _storage;

	_virtual = _target getVariable ["company_inv_virtual", []];
	if (count(_virtual) > 0) then {
		_storage setVariable ["Trunk", _virtual, true];
	};

	_armaStorage = _target getVariable ["company_inv_arma", [[],[],[],[]]];

	_weapons = _armaStorage select 0;
	if (!(isNil "_weapons")) then
	{
		if (!(_weapons isEqualTo [])) then
		{
			{
				_storage addWeaponCargoGlobal [_x, (_weapons select 1) select _forEachIndex];
			} foreach (_weapons select 0);
		};
	};

	_magazines = _armaStorage select 1;
	if (!(isNil "_magazines")) then
	{
		if (!(_magazines isEqualTo [])) then
		{
			{
				_storage addMagazineCargoGlobal [_x, (_magazines select 1) select _forEachIndex];
			} foreach (_magazines select 0);
		};
	};

	_items = _armaStorage select 2;
	if (!(isNil "_items")) then
	{
		if (!(_items isEqualTo [])) then
		{
			{
				_storage addItemCargoGlobal [_x, (_items select 1) select _forEachIndex];
			} foreach (_items select 0);
		};
	};

	_backpack = _armaStorage select 3;
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
		if ((_target getVariable ["company_storage_out", objNull]) != _storage) then
		{
		 	deleteVehicle (_target getVariable ["company_storage_out", objNull]);
		};

		uiSleep 0.5;
	};
} else {
	if ((_storage getVariable ["trunk_in_use_ID", ""]) isEqualTo "") then
	{
		_target setVariable ["company_inv_virtual", (_storage getVariable ["Trunk", []]), true];
		_target setVariable ["company_inv_arma", ([getWeaponCargo _storage, getMagazineCargo _storage, getItemCargo _storage, getBackpackCargo _storage]), true];
		deleteVehicle _storage;
		["<t color='#FF8000'>Coffre</t> rangé."] call AlysiaClient_fnc_info;
	} else {
		["Vous ne pouvez pas ranger le coffre pendant que quelqu'un le fouille."] call AlysiaClient_fnc_error;
	};
	g_action_inUse = false;
};
