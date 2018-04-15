/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_marker", "_index"];
_marker = [_this, 0, "", [""]] call BIS_fnc_param;

if (_marker isEqualTo "") exitWith {};

_index = [_marker, g_dynamic_markers] call AlysiaClient_fnc_index;
if (_index isEqualTo -1) then {
	g_dynamic_markers pushBack [_marker, getMarkerPos _marker];
} else {
	(g_dynamic_markers select _index) set [1, getMarkerPos _marker];
};

if ((markerAlpha _marker) isEqualTo 0) then {
	_marker setMarkerAlphaLocal 1;
};
