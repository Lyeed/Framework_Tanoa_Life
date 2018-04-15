/*
    Code written by rebelvg and modified by Lyeed
    http://www.armaholic.com/page.php?id=28846
*/
private["_target", "_source", "_fog"];
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) exitWith {};

_source = "logic" createVehicleLocal (getpos _target);
_source attachTo [_target, [0,0.06,0], "head"];

for "_i" from 0 to round(random(2)) do
{
    _fog = "#particlesource" createVehicleLocal getpos _source;
    _fog setParticleParams ["\A3\data_f\cl_basic",
        "",
        "Billboard",
        0.5,
        2,
        [0,0,0],
        [0, 0.1, -0.1],
        1, 1.2, 1, 0.1,
        [0.1, 0.2,0.1],
        [[0.2,0.2,0.2, 0.3], [0,0,0, 0.01], [1,1,1, 0]],
        [500],
        1,
        0.04,
        "",
        "",
        _source
    ];

    _fog setParticleRandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
    _fog setDropInterval 0.005;

    sleep 0.4;
    deleteVehicle _fog;
    sleep (random(4) + 0.5);
};

deleteVehicle _source;
