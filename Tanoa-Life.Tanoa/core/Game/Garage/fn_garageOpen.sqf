/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_display"];
g_garage_vehicles = [_this, 0, [], [[]]] call BIS_fnc_param;

if (!(createDialog "RscDisplayGarageAlysia")) exitWith {};

disableSerialization;
_display = findDisplay 2800;
if (isNull _display) exitWith {};

(_display displayCtrl 2805) ctrlSetStructuredText parseText format["<t align='center' size='1.6'>%1</t>", g_garage_info select 0];

_list = _display displayCtrl 2826;
lbClear _list;

{
	_data = switch (_x) do
	{
		case "Car": {["Voiture", "Alysia_Client_Texture\Data\garage\type_car.paa"]};
		case "Air": {["Aérien", "Alysia_Client_Texture\Data\garage\type_air.paa"]};
		case "Ship": {["Bateau", "Alysia_Client_Texture\Data\garage\type_boat.paa"]};
		case "Tank": {["Tank", "Alysia_Client_Texture\Data\garage\type_tank.paa"]};
		default {[]};
	};

	if (_data isEqualTo []) then {
		systemChat format["Error: unknown vehicle type [%1]", _x];
	} else {
		_index = _list lbAdd (_data select 0);
		_list lbSetData [_index, _x];
		_list lbSetPicture [_index, (_data select 1)];
	};
} forEach (g_garage_info select 1);
_list lbSetCurSel 0;
