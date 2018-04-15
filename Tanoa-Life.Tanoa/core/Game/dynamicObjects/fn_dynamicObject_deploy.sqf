/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_item", "_object", "_action_1", "_action_2", "_config"];
_item = [_this, 0, "", [""]] call BIS_fnc_param;

if (_item isEqualTo "") exitWith {};
if (!(isNull g_objPut)) exitWith {["Vous deployez déjà un élèment"] call AlysiaClient_fnc_error};

_config = (format["getText(_x >> 'item') isEqualTo ('%1')", _item] configClasses (missionConfigFile >> "ALYSIA_DYN_OBJECTS")) select 0;
if (isNil "_config") exitWith {["Cet objet ne peut pas être placé"] call AlysiaClient_fnc_error};

_object = configName(_config) createVehicle [0, 0, 0];
_object attachTo [player, getArray(_config >> "attachTo")];

g_objPut = _object;

_action_1 = player addAction [format["Placer <t color='#FFFF33'>%1</t>", [_item] call AlysiaClient_fnc_itemGetName],
{
	detach g_objPut;

	{
		if (local _x) then {
			_x disableCollisionWith g_objPut;
		} else {
			[_x, g_objPut] remoteExecCall ["disableCollisionWith", _x];
		};
	} forEach (nearestObjects [getPos g_objPut, ["Car", "Air", "Ship"], 10]);
}, "", 9999992, true, true, "",'!isNull g_objPut'];

_action_2 = player addAction ["<t color='#ff8c8c'>Annuler</t> la pose",
{
	deleteVehicle g_objPut;
}, "", 9999991, true, true, "",'!isNull g_objPut'];

waitUntil {((isNull _object) || (isNull (attachedTo _object)))};

g_objPut = objNull;

player removeAction _action_1;
player removeAction _action_2;

if (isNull _object) exitWith {};

if ([false, _item, 1] call AlysiaClient_fnc_handleInv) then
{
	_object setVariable ["isPackable", true, true];
	_object setDamage getNumber(_config >> "setDamage");
	if (typeOf(_object) isEqualTo "Land_Razorwire_F") then
	{
		[_object] remoteExec ["AlysiaServer_fnc_spikeStrip", 2];
	};
} else {
	["Impossible de trouver l'objet dans votre inventaire"] call AlysiaClient_fnc_error;
	deleteVehicle _object;
};
