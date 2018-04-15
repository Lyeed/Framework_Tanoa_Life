/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_house", "_marker"];
_house = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _house) exitWith {};

g_houses pushBack _house;

_marker = createMarkerLocal [format["house_%1", (count g_houses)], (getPosATL _house)];
_marker setMarkerTextLocal "Chez vous";
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerTypeLocal "Maels_housing";
_marker setMarkerSizeLocal [0.55, 0.55];

[0] call AlysiaDB_fnc_query_update_partial;
[false, getNumber(missionConfigFile >> "ALYSIA_HOUSES" >> (typeOf _house) >> "price"), "Achat maison"] call AlysiaClient_fnc_handleATM;
playSound "buy";
