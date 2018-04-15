/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_item", "_bool", "_ret", "_cfg"];
_item = [_this, 0, "", [""]] call BIS_fnc_param;
_bool = [_this, 1, false, [false]] call BIS_fnc_param;

_cfg = switch (true) do
{
	case (isClass(configFile >> "CfgMagazines" >> _item)): {"CfgMagazines"};
	case (isClass(configFile >> "CfgWeapons" >> _item)): {"CfgWeapons"};
	case (isClass(configFile >> "CfgVehicles" >> _item)): {"CfgVehicles"};
	case (isClass(configFile >> "CfgGlasses" >> _item)): {"CfgGlasses"};
	default {""};
};
if (_cfg isEqualTo "") exitWith {false};

_ret = false;

if (_bool) then
{
	if (player canAdd _item) then
	{
		player addItem _item;
		_ret = true;
	} else {
		_can_override = [_this, 2, false, [false]] call BIS_fnc_param;
		switch (_cfg) do
		{
			case "CfgGlasses":
			{
				if (_can_override || ((goggles player) isEqualTo "")) then
				{
					player addGoggles _item;
					_ret = true;
				};
			};

			case "CfgVehicles":
			{
				if ((backpack player) isEqualTo "") then
				{
					player addBackpack _item;
					clearAllItemsFromBackpack player;
					_ret = true;
				} else {
					if (_can_override) then
					{
						_items = backpackItems player;
						removeBackpack player;
						player addBackpack _item;
						clearAllItemsFromBackpack player;
						{
							if (player canAddItemToBackpack _x) then {
								player addItemToBackpack _x;
							} else {
								player addItem _x;
							};
						} forEach _items;
						_ret = true;
					};
				};
			};

			case "CfgWeapons":
			{
				if (count(getArray(configFile >> "CfgWeapons" >> _item >> "magazines")) > 0) exitWith
				{
					switch getNumber(configFile >> "CfgWeapons" >> _item >> "type") do
					{
						case 1:
						{
							if (((primaryWeapon player) isEqualTo "") || _can_override) then
							{
								player addWeapon _item;
								_ret = true;
							};
						};
						case 2:
						{
							if (((handgunWeapon player) isEqualTo "") || _can_override) then
							{
								player addWeapon _item;
								_ret = true;
							};
						};
						case 4:
						{
							if (((secondaryWeapon player) isEqualTo "") || _can_override) then
							{
								player addWeapon _item;
								_ret = true;
							};
						};
						case 4096:
						{
							if (((binocular player) isEqualTo "") || _can_override) then
							{
								player addWeapon _item;
								_ret = true;
							};
						};
					};
				};

				switch getNumber(configFile >> "CfgWeapons" >> _item >> "ItemInfo" >> "Type") do
				{
					case 605:
					{
						if (((headgear player) isEqualTo "") || _can_override) then
						{
							player addHeadGear _item;
							_ret = true;
						};
					};
					case 801:
					{
						if ((uniform player) isEqualTo "") then
						{
							player forceAddUniform _item;
							_ret = true;
						} else {
							if (_can_override) then
							{
								_items = uniformItems player;
								removeUniform player;
								player forceAddUniform _item;
								{
									if (player canAddItemToUniform _x) then {
										player addItemToBackpack _x;
									} else {
										player addItem _x;
									};
								} foreach _items;
								_ret = true;
							};
						};
					};
					case 701:
					{
						if ((vest player) isEqualTo "") then
						{
							player addVest _item;
							_ret = true;
						} else {
							if (_can_override) then
							{
								_items = vestItems player;
								removeVest player;
								player addVest _item;
								{
									if (player canAddItemToVest _x) then {
										player addItemToVest _x;
									} else {
										player addItem _x;
									};
								} foreach _items;
								_ret = true;
							};
						};
					};
				};
			};
		};
	};
} else {
	if ((_item in (items player)) || (_item in (assignedItems player))) then
	{
		if (_cfg isEqualTo "CfgWeapons") then {
			player removeWeapon _item;
		} else {
			if (_item in (assignedItems player)) then {
				player unassignItem _item;
			};
		};

		player removeItem _item;
		_ret = true;
	} else {
		switch (_cfg) do
		{
			case "CfgVehicles":
			{
				if ((backpack player) == _item) then
				{
					removeBackpack player;
					_ret = true;
				};
			};

			case "CfgMagazines":
			{
				if (_item in (magazines player)) then
				{
					player removeMagazine _item;
					_ret = true;
				};
			};

			case "CfgGlasses":
			{
				if ((goggles player) == _item) then
				{
					removeGoggles player;
					_ret = true;
				};
			};

			case "CfgWeapons":
			{
				if (((primaryWeapon player) == _item) || ((secondaryWeapon player) == _item) || ((handGunweapon player) == _item)) exitWith
				{
					player removeWeapon _item;
					_ret = true;
				};

				switch getNumber(configFile >> _cfg >> _item >> "ItemInfo" >> "Type") do
				{
					case 605:
					{
						if ((headgear player) == _item) then
						{
							removeHeadgear player;
							_ret = true;
						};
					};
					case 801:
					{
						if ((uniform player) == _item) then
						{
							removeUniform player;
							_ret = true;
						};
					};
					case 701:
					{
						if ((vest player) == _item) then
						{
							removeVest player;
							_ret = true;
						};
					};
				};
			};
		};
	};
};

_ret;
