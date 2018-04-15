/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_target", "_type", "_light"];
_target = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;
_type = [_this, 1, false, [false]] call BIS_fnc_param;

if (isNull _target) exitWith {
	["Cible invalide."] call AlysiaClient_fnc_error;
};

if (_type) then
{
	_light = "#lightpoint" createVehicleLocal [0,0,0];
	_light lightAttachObject [_target, [0, 0, 3]];
	_light setLightColor [250,150,50];
	_light setLightAmbient [1,1,0.2];
	_light setLightAttenuation [1,0,0,0];
	_light setLightIntensity 10;
	_light setLightUseFlare true;
	_light setLightFlareSize 0.2;
	_light setLightFlareMaxDistance 50;
	_target setVariable ["lightSource", _light];
} else {
	_light = _target getVariable ["lightSource", objNull];
	if (!isNull(_light)) then {
		deleteVehicle _light;
	};
};
