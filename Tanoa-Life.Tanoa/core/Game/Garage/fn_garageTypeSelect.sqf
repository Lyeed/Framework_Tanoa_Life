/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_ctrl_vehicles", "_ctrl_types", "_sel", "_type", "_display"];

disableSerialization;
_ctrl_types = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if ((isNull _ctrl_types) || (_sel isEqualTo -1)) exitWith {};

_display = findDisplay 2800;
if (isNull _display) exitWith {};

_type = _ctrl_types lbData _sel;
if (_type isEqualTo "") exitWith {};

_ctrl_vehicles = _display displayCtrl 2802;
lbClear _ctrl_vehicles;

{
	if ((_x select 9) isEqualTo _type) then
	{
	    _index = _ctrl_vehicles lbAdd (_x select 5);
		_ctrl_vehicles lbSetPicture [_index, getText(configFile >> "CfgVehicles" >> (_x select 0) >> "picture")];
		_ctrl_vehicles lbSetValue [_index, _forEachIndex];
	};
} forEach g_garage_vehicles;

if ((lbSize _ctrl_vehicles) isEqualTo 0) then
{
	_ctrl_vehicles lbAdd "Aucun véhicule";
	_ctrl_vehicles lbSetValue [0, -1];

	ctrlShow[2809, false];
	ctrlShow[2806, false];
	ctrlShow[2803, false];
	ctrlShow[2804, false];
	ctrlShow[2825, false];
	ctrlShow[2807, false];
	ctrlshow[2808, false];

	for "_i" from 2810 to 2823 do
	{
		ctrlShow[_i, false];
	};
} else {
	lbSort [_ctrl_vehicles, "DESC"];

	ctrlShow[2809, true];
	ctrlShow[2806, true];
	ctrlShow[2803, true];
	ctrlShow[2804, true];
	ctrlShow[2825, true];
	ctrlShow[2807, true];
	ctrlshow[2808, true];
};

_ctrl_vehicles lbSetCurSel 0;
