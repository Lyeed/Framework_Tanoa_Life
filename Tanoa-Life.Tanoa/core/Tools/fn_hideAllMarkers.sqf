/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_markers";
_markers = [];

{
	if ((markerAlpha _x) isEqualTo 1) then
	{
		_markers pushBack _x;
		_x setMarkerAlphaLocal 0;
	};
} forEach allMapMarkers;

missionNamespace setVariable ["deleted_markers", _markers];
