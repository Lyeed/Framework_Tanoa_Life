/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_idc", "_show"];
_idc = [_this, 0, -1, [-1, []]] call BIS_fnc_param;
_show = [_this, 1, false, [false]] call BIS_fnc_param;

if ((typeName _idc) isEqualTo "ARRAY") then
{
	if ((count _idc) != 2) exitWith {};
	for "_i" from (_idc select 0) to (_idc select 1) do {
		[_i, _show] call AlysiaClient_fnc_tabletShow;
	};
} else {
	if (_idc isEqualTo -1) exitWith {};
	if (_show) then
	{
		ctrlShow[_idc, true];
		if (!(_idc in g_CTRL_shown)) then {
			g_CTRL_shown pushBack _idc;
		};
	} else {
		ctrlShow[_idc, false];
		g_CTRL_shown deleteAt (g_CTRL_shown find _idc);
	};
};
