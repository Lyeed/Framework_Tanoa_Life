/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if ((headgear player) != "") then
{
	_holder = nearestObjects [player, ["groundweaponholder"], 4];
	if (_holder isEqualTo []) then
	{
		_holder = "groundweaponholder" createVehicle [0,0,0];
		_holder setPosATL (getPosATL player);
	} else {
		_holder = _holder select 0;
	};

	_holder addItemCargoGlobal [(headgear player), 1];
};

player addHeadgear "mgsr_headbag";
["Quelqu'un vous à mis une <t color='#FF8000'>cagoule</t>."] call AlysiaClient_fnc_info;
