/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_marker";
_marker = [_this, 0, "", [""]] call BIS_fnc_param;

if (_marker isEqualTo "") exitWith {};
if (!g_connected) exitWith {};

if (str(playerSide) in getArray(missionConfigFile >> "ALYSIA_DYN_MARKERS" >> _marker >> "shown")) then
{
	_marker setMarkerAlphaLocal 1;
	[format["Le marqueur <t color='#74DF00'>%1</t> a changé d'emplacement.", (markerText _marker)]] call AlysiaClient_fnc_info;
} else {
	private "_index";
	_index = [_marker, g_dynamic_markers] call AlysiaClient_fnc_index;
	if (_index != -1) then
	{
		g_dynamic_markers deleteAt _index;
		[format["Le marqueur <t color='#74DF00'>%1</t> n'est plus d'actualité.", (markerText _marker)]] call AlysiaClient_fnc_info;
	};
};
