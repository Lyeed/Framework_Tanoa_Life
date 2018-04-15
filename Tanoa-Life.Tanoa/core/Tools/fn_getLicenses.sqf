/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_res"];
_res = [];

{
	_license = configName _x;
	if ([_license] call AlysiaClient_fnc_hasLicense) then {
		_res pushBack _license;
	};
} foreach ("true" configClasses (missionConfigFile >> "ALYSIA_LICENSES"));

_res;
