/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_pos", "_logic", "_floor", "_veh", "_light", "_cam", "_distanceCam", "_azimuthCam", "_id"];
_type = [_this, 0, "", [""]] call BIS_fnc_param;

if (_type isEqualTo "") exitWith {
	["Vous n'avez pas précisé de classname à prévisualiser."] call AlysiaClient_fnc_error;
};
if (g_vehicle_preview) exitWith {
	["Vous êtes déjà en mode prévisualisation."] call AlysiaClient_fnc_error;
};

createDialog "RscDisplayPreview";

0 fadeSound 0;

((findDisplay 34000) displayCtrl 34001) ctrlSetStructuredText parseText format
[
	"<t align='center' size='3' color='#FF8000'>%1</t>",
	getText(configFile >> "CfgVehicles" >> _type >> "displayName")
];

g_vehicle_preview = true;

_pos = [0, 0, 10000];
_logic = "Logic" createVehicleLocal _pos;
_logic setPosATL _pos;

_floor = "UserTexture10m_F" createVehicleLocal (_logic modelToWorld [0,0,10]);
_floor attachTo [_logic,[0,0,-1.5]];
detach _floor;
_floor setVectorDirAndUp [[0,0,-.33],[0,.33,0]];

_veh = _type createVehicleLocal [_pos select 0, _pos select 1, (_pos select 2) + 2];
_veh attachTo [_logic,[0,0,0]];

_light = "#lightpoint" createVehicleLocal [0,0,0];
_light setlightbrightness 0.5;
_light setlightcolor [1,1,1];
_light setlightambient [1,1,1];
_light lightAttachObject [_veh, [0,0,0]];

_cam = "camera" camCreate _pos;
_cam cameraEffect ["Internal", "BACK"];
_cam camSetFocus [-1, -1];
_cam camCommit 0;

showCinemaBorder false;

_distanceCam = 2.5 * ([boundingBoxReal _veh select 0 select 0, boundingBoxReal _veh select 0 select 2] distance [boundingBoxReal _veh select 1 select 0, boundingBoxReal _veh select 1 select 2]);
_azimuthCam = 0;

_cam camSetTarget _veh;
_cam camSetPos (_veh modelToWorld [_distanceCam * sin _azimuthCam, _distanceCam * cos _azimuthCam, _distanceCam * 0.33]);
_cam camCommit 0;

_id = (findDisplay 34000) displayAddEventHandler ["KeyDown", "g_vehicle_preview = false;"];

while {g_vehicle_preview} do
{
    _azimuthCam = _azimuthCam + 1.00;
    _cam camSetPos (_veh modelToWorld [_distanceCam * sin _azimuthCam, _distanceCam * cos _azimuthCam, _distanceCam * 0.33]);
    _cam camCommit 0.1;
    waitUntil {camCommitted _cam};
};

closeDialog 0;
(findDisplay 34000) displayRemoveEventHandler ["KeyDown", _id];

deleteVehicle _veh;
deleteVehicle _light;
deleteVehicle _logic;
deleteVehicle _floor;

_cam cameraEffect ["TERMINATE", "BACK"];
camDestroy _cam;
0 fadeSound 1;
