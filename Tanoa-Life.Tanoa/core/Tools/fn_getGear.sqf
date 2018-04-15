/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_target";
_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _target) then {
    [];
} else {
    [
        [(uniform _target), (uniformItems _target)],
        [(vest _target), (vestItems _target)],
        [(backpack _target), (backpackItems _target)],
        (goggles _target),
        (headgear _target),
        (assignedItems _target),
        [(primaryWeapon _target), (primaryWeaponMagazine _target), (primaryWeaponItems _target), (_target ammo (primaryWeapon _target))],
        [(secondaryWeapon _target), (secondaryWeaponMagazine _target), (secondaryWeaponItems _target)],
        [(handgunWeapon _target), (handgunMagazine _target), (handGunItems _target), (_target ammo (handgunWeapon _target))],
        (magazinesAmmoFull _target)
    ];
};

/*

[
    [
        "uniform_className",
        [
            "uniform_item_1_className",
            "uniform_item_2_className",
            "..._className"
        ]
    ],
    [
        "vest_className",
        [
            "vest_item_1_className",
            "vest_item_2_className",
            "..._className"
        ]
    ],
    [
        "backpack_className",
        [
            "backpack_item_1_className",
            "backpack_item_2_className",
            "..._className"
        ]
    ],
    "goggles_className",
    "headgear_className",
    [
        "assignedItems_1_className",
        "assignedItems_2_className",
        "..._className"
    ],
    [
        "primaryWeapon_className",
        [
            "primaryWeapon_magazine_1_className",
            "primaryWeapon_magazine_2_className",
            "..._className"
        ],
        [
            "primaryWeapon_item_1_className",
            "primaryWeapon_item_2_className",
            "..._className"
        ],
        primaryWeapon_loadedmagazine_count
    ],
    [
        "secondaryWeapon_className",
        [
            "secondayWeapon_magazine_1_className",
            "secondayWeapon_magazine_2_className",
            "..._className"
        ],
        [
            "secondayWeapon_item_1_className",
            "secondayWeapon_item_2_className",
            "..._className"
        ]
    ],
    [
        "handgunWeapon_className",
        [
            "handgunWeapon_magazine_1_className",
            "handgunWeapon_magazine_2_className",
            "..._className"
        ],
        [
            "handgunWeapon_item_1_className",
            "handgunWeapon_item_2_className",
            "..._className"
        ],
        handgunWeapon_loadedmagazine_count
    ]
];
*/
