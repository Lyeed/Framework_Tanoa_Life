/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_sel", "_display", "_data", "_object", "_config", "_info", "_count", "_marker"];

disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if (_sel isEqualTo -1) exitWith {};
if ((_list lbText _sel) isEqualTo "Aucune") exitWith {};

_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_data = _list lbData _sel;
if (_data isEqualTo "") exitWith {};

_data = call compile _data;

_object = nearestObject [(_data select 1), (_data select 0)];
_info = _object getVariable "company_info";
_config = missionConfigFile >> "ALYSIA_COMPANIES_TYPES" >> (_info select 2);

(_display displayCtrl 13005) ctrlSetStructuredText parseText format["<t align='center'>%1</t>", (_info select 0)];

(_display displayCtrl 13006) ctrlSetStructuredText parseText format
[
		"<t align='center'>"
	+	"<t color='#FACC2E'>Type d'entreprise</t><br/>"
	+	"%1<br/>"
	+	"<t color='#FACC2E'>Directeur général</t><br/>"
	+	"%2<br/>"
	+	"<t color='#FACC2E'>Position GPS</t><br/>"
	+	"%3",
	getText(_config >> "name"),
	(_info select 4),
	mapGridPosition _object
];

_list = _display displayCtrl 13009;
lbClear _list;

{
	private "_number";
	_res = [_x, gServer_phone_annuaire] call AlysiaClient_fnc_index;
	if (_res isEqualTo -1) then {
		_number = "Inconnu";
	} else {
		_number = (gServer_phone_annuaire select _res) select 1;
	};

	_index = _list lbAdd format["%1 - %2", _x, _number];
	_list lbSetData [_index, _number];
} forEach ((_object getVariable ["company_members", [[],[]]]) select 1);

if ((lbSize _list) isEqualTo 0) then {
	_list lbAdd "Aucun";
} else {
	lbSort [_list, "ASC"];
};

_count = count ((_object getVariable ["company_members", [[],[]]]) select 0);

(_display displayCtrl 13008) ctrlSetStructuredText parseText format
[
	"%1 membre%2",
	_count,
	if (_count > 1) then {"s"} else {""}
];

if ("ItemGPS" in (assignedItems player)) then
{
	_marker = createMarkerLocal ["COMPANY_TABLET_APP", (getPos _object)];
 	_marker setMarkerShapeLocal "ICON";
	_marker setMarkerTypeLocal "mil_dot";
	_marker setMarkerColorLocal "ColorBlack";
	_marker setMarkerTextLocal (_info select 0);

	_ctrl_map = _display displayCtrl 13004;
	_ctrl_map ctrlMapAnimAdd [0, 0.09, _object];
	ctrlMapAnimCommit _ctrl_map;

	[13004, true] call AlysiaClient_fnc_tabletShow;
	[13002, false] call AlysiaClient_fnc_tabletShow;

	waitUntil {((isNull _display) || (g_app != "COMPAGNIES") || ((lbCurSel _list) != _sel))};

	deleteMarkerLocal _marker;
} else {
	[13002, true] call AlysiaClient_fnc_tabletShow;
	[13004, false] call AlysiaClient_fnc_tabletShow;
};
