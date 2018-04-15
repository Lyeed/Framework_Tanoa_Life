/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_radio";

if (!(call TFAR_fnc_haveSWRadio)) exitWith {false};

_radio = (call TFAR_fnc_activeSwRadio);
if (isNil "_radio") exitWith {false};

["Lyeed_Phone", _radio] call BIS_fnc_inString;
