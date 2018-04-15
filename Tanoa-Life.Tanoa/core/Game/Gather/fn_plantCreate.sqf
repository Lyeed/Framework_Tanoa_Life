/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_pos", "_engrais", "_config", "_plantGrowingtime", "_object"];
_type = [_this, 0, "", [""]] call BIS_fnc_param;
_pos = [_this, 1, [], [[]]] call BIS_fnc_param;
_engrais = [_this, 2, false, [false]] call BIS_fnc_param;

if ((_type isEqualTo "") || (_pos isEqualTo [])) exitWith {objNull};

_config = missionConfigFile >> "ALYSIA_FARMING_PLANT_OBJETCS" >> _plant;
if (!isClass(_config)) exitWith {objNull};

_plantGrowingtime = getNumber(_config >> "growingTime") + round(random(getNumber(_config >> "extraGrow")));
if (_engrais) then {
	_plantGrowingtime = round(_plantGrowingtime * 0.7);
};

_object = createVehicle [_type, [(_pos select 0), (_pos select 1), ((_pos select 2) - getNumber(_config >> "groundLevel"))], [], 0, "CAN_COLLIDE"];
[(_plantGrowingtime / 10), (getNumber(_config >> "upLevel") / 10), _object] spawn AlysiaClient_fnc_plantGrow;
_object;
