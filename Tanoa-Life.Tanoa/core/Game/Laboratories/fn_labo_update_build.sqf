/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_object", "_config_marker", "_config"];
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _object) exitWith {
	["Impossible de récupérer le laboratoire venant d'être construit."] call AlysiaClient_fnc_error;
};

deleteMarker "laboratory";
g_laboratory = _object;

_config = (format["getText(_x >> 'object') == '%1'", typeOf(_object)] configClasses (missionConfigFile >> "ALYSIA_LABORATORIES")) select 0;
if (isNil "_config") exitWith {
	["Impossible de récupérer les informations du laboratoire venant d'être construit."] call AlysiaClient_fnc_error;
};

_config_marker = _config >> "marker";
if (isClass _config_marker) then
{
	_marker = createMarkerLocal ["laboratory", (getPosATL _object)];
	_marker setMarkerShapeLocal getText(_config_marker >> "ShapeLocal");
	_marker setMarkerColorLocal getText(_config_marker >> "ColorLocal");
	_marker setMarkerTypeLocal getText(_config_marker >> "TypeLocal");
	_marker setMarkerSizeLocal getArray(_config_marker >> "SizeLocal");
	_marker setMarkerTextLocal ([configName _config] call AlysiaClient_fnc_itemGetName);
};
