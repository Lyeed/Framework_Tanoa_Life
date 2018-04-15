/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list", "_type"];

if (isNull g_interaction_target) exitWith {};

disableSerialization;
_display = findDisplay 2900;
if (isNull _display) exitWith {};

_type = cbChecked (_display displayCtrl 2908);
_list = _display displayCtrl 2907;
lbClear _list;

{
	_part = configName _x;
	_config = missionConfigFile >> "ALYSIA_REPAIR" >> _part;
	if (isClass(_config)) then
	{
		_value = floor((1 - (g_interaction_target getHitPointDamage _part)) * 100);
		if (!_type || (_type && (_value < 100))) then
		{
			_index = _list lbAdd getText(_config >> "name");
			_list lbSetTooltip [_index, getText(_config >> "name")];
			_list lbSetData [_index, _part];
			_list lbSetValue [_index, _value];
			_list lbSetPicture [_index, getText(_config >> "picture")];
			_list lbSetPictureColor [_index, ([_value] call AlysiaClient_fnc_vehicleMenu_repair_getColor) select 0];
			_list lbSetTooltip [_index, format["Santé : %1%2", _value, "%"]];
		};
	} else {
		diag_log format["[ERROR] %1 is not defined in ALYSIA_REPAIR", _part];
	};
} foreach ("true" configClasses (configFile >> "CfgVehicles" >> typeOf(g_interaction_target) >> "HitPoints"));

if ((lbSize _list) isEqualTo 0) then
{
	ctrlShow[2909, false];
	ctrlShow[2911, false];
	ctrlShow[2912, false];
	ctrlShow[2913, false];
	ctrlShow[2914, false];
	ctrlShow[2915, false];
	ctrlShow[2916, false];
	ctrlShow[2917, false];
	_list lbAdd "Aucune";
} else {
	ctrlShow[2909, true];
	ctrlShow[2916, true];
	ctrlShow[2917, true];
};

_list lbSetCurSel 0;
