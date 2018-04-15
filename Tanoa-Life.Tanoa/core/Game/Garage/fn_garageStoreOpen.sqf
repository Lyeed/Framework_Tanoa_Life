/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_vehicle", "_target", "_allow_types", "_distance", "_list", "_config", "_title", "_public", "_pay"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_type = [_this, 3, "", [""]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};
if (g_garage_store) exitWith {
	["Vous êtes déjà en train de ranger un véhicule."] call AlysiaClient_fnc_error;
};

switch (true) do
{
	case (_target isEqualTo g_company):
	{
		_title = (_target getVariable "company_info") select 0;
		_allow_types = getArray(missionConfigFile >> "ALYSIA_COMPANIES_TYPES" >> ((_target getVariable "company_info") select 2) >> "garage" >> "types");
		_public = false;
		_pay = false;
	};
	case (_target in g_houses):
	{
		_title = "Chez vous";
		_allow_types = getArray(missionConfigFile >> "ALYSIA_HOUSES" >> typeOf(_target) >> "garage" >> "types");
		_public = false;
		_pay = false;
	};
	default
	{
		_config = missionConfigFile >> "ALYSIA_GARAGES" >> _type;
		if (isClass(_config)) then
		{
			_title = getText(_config >> "name");
			_allow_types = getArray(_config >> "types");
		} else {
			[format["%1 n'est pas un garage défini dans ALYSIA_GARAGES.", _type]] call AlysiaClient_fnc_error;
		};
		_public = true;
		_pay = true;
	};
};

if ((isNil "_title") || (isNil "_allow_types")) exitWith {};

createDialog "RscDisplayGarageStore";

disableSerialization;
_display = findDisplay 35000;
if (isNull _display) exitWith {};

(_display displayCtrl 35001) ctrlSetStructuredText parseText format
[
	"<t align='center' size='1.5'>%1</t>",
	_title
];

if ("Air" in _allow_types) then {
	_distance = 95;
};
if ("Ship" in _allow_types) then {
	_distance = 130;
};
if (isNil "_distance") then {
	_distance = 40;
};

g_garage_store = false;
g_garage_target = _target;
g_garage_distance = _distance;
g_garage_public = _public;
g_garage_pay = _pay;

_list = _display displayCtrl 35003;
lbClear _list;

{
	_vehicle = _x;
	if (!(isNull _vehicle)) then
	{
		if ((alive _vehicle) && ((_target distance _vehicle) <= _distance)) then
		{
			private _passed = false;

			{
				_subType = _x;
				if (_vehicle isKindOf _subType) exitWith {_passed = true};
			} forEach _allow_types;
			if (_passed) then
			{
				_index = _list lbAdd getText(configFile >> "CfgVehicles" >> typeOf(_vehicle) >> "displayName");
				_list lbSetPicture [_index, getText(configFile >> "CfgVehicles" >> typeOf(_vehicle) >> "picture")];
				_list lbSetValue [_index, _forEachIndex];
			};
		};
	};
} forEach g_vehicles;

if ((lbSize _list) isEqualTo 0) then
{
	_list lbAdd "Aucun véhicule";
	ctrlShow[35010, false];
	ctrlShow[35011, false];
	ctrlShow[35012, false];
	ctrlShow[35013, false];
	ctrlShow[35014, false];

	ctrlShow[35004, false];
	ctrlShow[35005, false];
	ctrlShow[35006, false];
	ctrlShow[35007, false];
	ctrlShow[35008, false];
};

(_display displayCtrl 35006) cbSetChecked true;
_list lbSetCurSel 0;
