/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_list", "_sel", "_display", "_data", "_dab", "_distance", "_ctrl_map"];

disableSerialization;
_list = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel = [_this, 1, -1, [-1]] call BIS_fnc_param;

if (_sel isEqualTo -1) exitWith {};
if ((_list lbText _sel) isEqualTo "Aucun") exitWith {};

_display = uiNamespace getVariable ["tablet", displayNull];
if (isNull _display) exitWith {};

_data = _list lbData _sel;
if (_data isEqualTo "") exitWith {};

_data = call compile _data;
_dab = (nearestObjects [_data select 1, [_data select 0], 15]) select 0;

(_display displayCtrl 9907) ctrlSetStructuredText parseText format
[
		"<t font='EtelkaMonospacePro' size='1'>"
	+	"<t align='left'>Liquidité</t><t align='right'><t color='#8cff9b'>%1</t>$</t><br/>"
	+	"</t>",
	[_dab getVariable ["money", getNumber(missionConfigFile >> "ALYSIA_ATM" >> typeOf(_dab) >> "money_stock")]] call AlysiaClient_fnc_numberText
];

if ("ItemGPS" in (assignedItems player)) then
{
	_config = missionConfigFile >> "ALYSIA_ATM" >> typeOf(_dab);
	_marker = createMarkerLocal [format["dab_tablet_%1", _sel], (getPos _dab)];
	_marker setMarkerShapeLocal getText(_config >> "marker" >> "ShapeLocal");
	_marker setMarkerTypeLocal getText(_config >> "marker" >> "TypeLocal");
	_marker setMarkerColorLocal getText(_config >> "marker" >> "ColorLocal");
	_marker setMarkerSizeLocal getArray(_config >> "marker" >> "SizeLocal");

	_ctrl_map = _display displayCtrl 9904;
	_ctrl_map ctrlMapAnimAdd [0, 0.09, _dab];
	ctrlMapAnimCommit _ctrl_map;

	_distance = round(player distance _dab);
	(_display displayCtrl 9910) ctrlSetStructuredText parseText format
	[
		"<t align='center'>%1 mètre%2</t>",
		_distance,
		if (_distance > 1) then {"s"} else {""}
	];

	[9904, true] call AlysiaClient_fnc_tabletShow;
	[9902, false] call AlysiaClient_fnc_tabletShow;

	waitUntil {((isNull _display) || (g_app != "DAB") || ((lbCurSel _list) != _sel))};

	deleteMarkerLocal _marker;
} else {
	(_display displayCtrl 9910) ctrlSetStructuredText parseText "<t align='center'>Inconnu</t>";
	[9902, true] call AlysiaClient_fnc_tabletShow;
	[9904, false] call AlysiaClient_fnc_tabletShow;
};
