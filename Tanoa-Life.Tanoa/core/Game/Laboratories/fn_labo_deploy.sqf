/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_item", "_action_2", "_action_1", "_config"];
_item = [_this, 0, "", [""]] call BIS_fnc_param;

if (_item isEqualTo "") exitWith {};


_config = missionConfigFile >> "ALYSIA_LABORATORIES" >> _item;
if (!isClass(_config)) exitWith {};
if (playerSide != civilian) exitWith {
	["Vous ne pouvez pas utiliser cet objet."] call AlysiaClient_fnc_error;
};

if (!(isNull g_laboratory)) exitWith {
	["Vous possédez déjà un laboratoire."] call AlysiaClient_fnc_error;
};

g_laboratory = getText(_config >> "object") createVehicle [0, 0, 0];
g_laboratory attachTo [player, [0, 2, 1]];

_action_1 = player addAction [format["Placer <t color='#FFFF33'>%1</t>", [_item] call AlysiaClient_fnc_itemGetName],
{
	if (surfaceIsWater (position g_laboratory)) then {
		["Vous ne pouvez pas placer d'objet sous ou au niveau de l'eau."] call AlysiaClient_fnc_error;
	} else {
		detach g_laboratory;
	};
}, "", 9999992, true, true, "",'!isNull g_laboratory'];

_action_2 = player addAction ["<t color='#ff8c8c'>Annuler</t> la pose",
{
	deleteVehicle g_laboratory;
}, "", 9999991, true, true, "",'!isNull g_laboratory'];

waitUntil {((isNull g_laboratory) || (isNull (attachedTo g_laboratory)))};

player removeAction _action_1;
player removeAction _action_2;

if (isNull g_laboratory) exitWith {
	["Pose <t color='#ff8c8c'>annulée</t>"] call AlysiaClient_fnc_info;
};

if ([false, _item, 1] call AlysiaClient_fnc_handleInv) then
{
	_config_marker = _config >> "marker";
	if (isClass _config_marker) then
	{
		_marker = createMarkerLocal ["laboratory", (getPosATL g_laboratory)];
		_marker setMarkerShapeLocal getText(_config_marker >> "ShapeLocal");
		_marker setMarkerColorLocal getText(_config_marker >> "ColorLocal");
		_marker setMarkerTypeLocal getText(_config_marker >> "TypeLocal");
		_marker setMarkerSizeLocal getArray(_config_marker >> "SizeLocal");
		_marker setMarkerTextLocal ([_item] call AlysiaClient_fnc_itemGetName);
	};

	[getPlayerUID player, g_laboratory, _item] remoteExec ["AlysiaServer_fnc_laboratory_insert", 2];
} else {
	["Impossible de trouver l'objet dans votre inventaire."] call AlysiaClient_fnc_error;
	deleteVehicle g_laboratory;
};
