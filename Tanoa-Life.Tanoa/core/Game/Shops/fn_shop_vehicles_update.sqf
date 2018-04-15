/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_data", "_className", "_price", "_vehicleInfo", "_list_colors", "_data", "_list_vehicles", "_sel_vehicles", "_licenses", "_rank", "_price_condition", "_rank_condition", "_licenses_text", "_license_condition", "_side", "_side_condition"];

disableSerialization;
_list_vehicles = [_this, 0, controlNull, [controlNull]] call BIS_fnc_param;
_sel_vehicles = [_this, 1, -1, [-1]] call BIS_fnc_param;

if (_sel_vehicles isEqualTo -1) exitWith {};

_data = _list_vehicles lbData _sel_vehicles;
if (_data isEqualTo "") exitWith
{
	{
		ctrlShow[_x, false];
	} forEach ([2321,2303,2304,2306,2308,2311,2312,2313,2314,2315,2316,2317,2318,2319,2320]);
};

_data = call compile format["%1", _data];
_className = _data select 0;
_vehicleInfo = [_className] call AlysiaClient_fnc_fetchVehInfo;
if (_vehicleInfo isEqualTo []) exitWith
{
	{
		ctrlShow[_x, false];
	} forEach ([2321,2303,2304,2306,2308,2311,2312,2313,2314,2315,2316,2317,2318,2319,2320]);
};

_side = _vehicleInfo select 11;
if ((_side isEqualTo str(playerSide)) || (_side isEqualTo "CIV")) then {
	_side_condition = true;
} else {
	_side_condition = false;
};

_price = _vehicleInfo select 9;
if ((g_cash >= _price) && (_price > 0)) then {
	_price_condition = true;
} else {
	_price_condition = false;
};

_rank = _vehicleInfo select 15;
if ((_rank isEqualTo 0) || ((_rank > 0) && ((player getVariable ["rank", 0]) >= _rank))) then {
	_rank_condition = true;
} else {
	_rank_condition = false;
};

_licenses = _vehicleInfo select 13;
if (count(_licenses) > 0) then
{
	_licenses_text = "";
	_license_condition = true;

	{
		if ([_x] call AlysiaClient_fnc_hasLicense) then {
			_licenses_text = _licenses_text + format["<t color='#31B404'>%1</t><br/>", [_x] call AlysiaClient_fnc_licenseGetName];
		} else {
			_licenses_text = _licenses_text + format["<t color='#DF0101'>%1</t><br/>", [_x] call AlysiaClient_fnc_licenseGetName];
			_license_condition = false;
		};
	} forEach _licenses;
} else {
	_licenses_text = "<t color='#31B404'>Aucune</t><br/>";
	_license_condition = true;
};

_display = findDisplay 2300;

(_display displayCtrl 2306) ctrlSetStructuredText parseText format
[
	"<t align='center'>%1</t>",
	_vehicleInfo select 8
];

(_display displayCtrl 2308) ctrlSetStructuredText parseText format
[
		"<t font='EtelkaMonospacePro' size='0.7'>"
	+	"<t align='center'>- Prérequis -</t><br/>"
	+	"<t align='left'>Faction</t><t align='right' color='%15'>%16</t><br/>"
	+	"<t align='left'>Rank</t><t align='right' color='%14'>%13</t><br/>"
	+	"<t align='left'>Licence(s)</t><t align='right'>%12</t>"
	+	"<t align='left'>Prix</t><t align='right' color='%10'>%11$</t><br/>"
	+	"<t align='center'>- Caractéristiques - </t><br/>"
	+	"<t align='left'>Prix de garage</t><t align='right'><t color='#8cff9b'>%1</t>$</t><br/>"
	+ 	"<t align='left'>Prix de l'assurance</t><t align='right'><t color='#8cff9b'>%2</t>$</t><br/>"
	+ 	"<t align='left'>Prix de vente</t><t align='right'><t color='#8cff9b'>%3</t>$</t><br/>"
	+ 	"<t align='left'>Vitesse max</t><t align='right'>%4 km/h</t><br/>"
	+ 	"<t align='left'>Puissance en chevaux</t><t align='right'>%5</t><br/>"
	+	"<t align='left'>Sièges passagers</t><t align='right'>%6</t><br/>"
	+	"<t align='left'>Capacité du coffre</t><t align='right'>%7</t><br/>"
	+	"<t align='left'>Capacité du réservoir</t><t align='right'>%8L</t><br/>"
	+   "<t align='left'>Carburant</t><t align='right'>%9</t>"
	+	"</t>",
	[_vehicleInfo select 17] call AlysiaClient_fnc_numberText,
	[_vehicleInfo select 18] call AlysiaClient_fnc_numberText,
	[_vehicleInfo select 19] call AlysiaClient_fnc_numberText,
	_vehicleInfo select 3,
	_vehicleInfo select 6,
	_vehicleInfo select 5,
	_vehicleInfo select 10,
	round(_vehicleInfo select 7),
	getText(missionConfigFile >> "ALYSIA_FUEL" >> (_vehicleInfo select 14) >> "name"),
	if (_price_condition) then {"#31B404"} else {"#DF0101"},
	[_price] call AlysiaClient_fnc_numberText,
	_licenses_text,
	([([_side] call AlysiaClient_fnc_strToSide), _rank] call AlysiaClient_fnc_rankToStr),
	if (_rank_condition) then {"#31B404"} else {"#DF0101"},
	if (_side_condition) then {"#31B404"} else {"#DF0101"},
	getText(missionConfigFile >> "ALYSIA_FACTIONS" >> _side >> "name")
];

_list_colors = _display displayCtrl 2303;
lbClear _list_colors;
{
	if (isClass(missionConfigFile >> "ALYSIA_VEHICLES" >> _x)) then
	{
		if (isClass(configFile >> "CfgVehicles" >> _x)) then
		{
			_index = _list_colors lbAdd getText(configFile >> "CfgVehicles" >> _x >> "displayName");
			_list_colors lbSetData [_index, _x];
		} else {
			diag_log format["ERROR: %1 not defined in CfgVehicles", _x];
			systemChat format["ERROR: %1 not defined in CfgVehicles", _x];
		};
	} else {
		diag_log format["ERROR: %1 not defined in ALYSIA_VEHICLES", _x];
		systemChat format["ERROR: %1 not defined in ALYSIA_VEHICLES", _x];
	};
} forEach _data;
_list_colors lbSetCurSel 0;

if (_price_condition && _rank_condition && _license_condition && _side_condition) then
{
	ctrlShow[2311, true];
	ctrlShow[2312, true];
	ctrlShow[2313, true];
	ctrlShow[2314, true];
	ctrlShow[2315, true];
} else {
	ctrlShow[2311, false];
	ctrlShow[2312, false];
	ctrlShow[2313, false];
	ctrlShow[2314, false];
	ctrlShow[2315, false];
};
