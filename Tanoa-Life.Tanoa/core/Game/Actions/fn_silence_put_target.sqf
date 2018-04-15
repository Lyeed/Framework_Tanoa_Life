/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

if ((goggles player) != "") then
{
	_holder = nearestObjects [player, ["groundweaponholder"], 4];
	if (_holder isEqualTo []) then
	{
		_holder = "groundweaponholder" createVehicle [0,0,0];
		_holder setPosATL (getPosATL player);
	} else {
		_holder = _holder select 0;
	};

	_holder addItemCargoGlobal [(goggles player), 1];
};

player addGoggles "G_Bandanna_blk";
["Quelqu'un vous à mis une <t color='#FF8000'>baillon</t>."] call AlysiaClient_fnc_info;
