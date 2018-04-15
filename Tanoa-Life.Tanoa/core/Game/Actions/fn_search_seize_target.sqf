/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_txt", "_img", "_className", "_canSeize", "_type", "_from"];
_from = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_txt = [(_this select 1), 0, "", [""]] call BIS_fnc_param;
_img = [(_this select 1), 1, "", [""]] call BIS_fnc_param;
_className = [(_this select 1), 2, "", [""]] call BIS_fnc_param;
_canSeize = [(_this select 1), 3, 0, [0]] call BIS_fnc_param;
_type = [(_this select 1), 4, "", [""]] call BIS_fnc_param;

if ((isNull _from) || (_txt isEqualTo "") || (_className isEqualTo "") || (_type isEqualTo "") || (_canSeize isEqualTo 0)) exitWith {};

if (_type isEqualTo "ARMA") then
{
	if ([_className, false] call AlysiaClient_fnc_handleItem) then
	{
		_holder = nearestObjects [player, ["groundweaponholder"], 4];
		if (_holder isEqualTo []) then
		{
			_holder = "groundweaponholder" createVehicle [0,0,0];
			_holder setPosATL (getPosATL player);
		} else {
			_holder = _holder select 0;
		};

		switch (true) do
		{
			case (isClass(configFile >> "CfgMagazines" >> _className)): {_holder addMagazineCargoGlobal [_className, 1]};
			case (isClass(configFile >> "CfgWeapons" >> _className)): {_holder addWeaponCargoGlobal [_className, 1]};
			case (isClass(configFile >> "CfgVehicles" >> _className)): {_holder addBackpackCargoGlobal [_className, 1]};
			default {_holder addItemCargoGlobal [_className, 1]};
		};

		[format["Vous avez retiré <t color='#FF8000'>%1</t>.", _txt]] remoteExecCall ["AlysiaClient_fnc_info", _from];
	} else {
		["Impossible de trouver l'objet dans l'inventaire de la cible."] remoteExecCall ["AlysiaClient_fnc_error", _from];
	};
} else {
	_amount = [_className] call AlysiaClient_fnc_itemCount;

	_suit = (nearestObjects [player, ["Skyline_Alysia_Boite_01_F"], 3.2]) select 0;
	if (isNil "_suit") then
	{
		if ([false, _className, _amount] call AlysiaClient_fnc_handleInv) then
		{
			_suit = createVehicle ["Skyline_Alysia_Boite_01_F", (player modelToWorld [0, 2, 0]), [], 0, "CAN_COLLIDE"];
			_suit setVariable ["items", [[_className, _amount]], true];
		} else {
			["Impossible de trouver l'objet dans l'inventaire de la cible."] remoteExecCall ["AlysiaClient_fnc_error", _from];
		};
	} else {
		if ((_suit getVariable ["trunk_in_use_ID", ""]) isEqualTo "") then
		{
			if ([true, _suit, "items", _className, _amount, true] call AlysiaClient_fnc_handleTrunk) then
			{
				if ([false, _className, _amount] call AlysiaClient_fnc_handleInv) then {
					[format["Vous avez retiré <t color='#FF8000'>%1</t>.", _txt]] remoteExecCall ["AlysiaClient_fnc_info", _from];
				} else {
					["<t color='#0080FF'>Impossible</t> de retirer l'objet à la cible.<br/>La caisse n'a plus de place."] remoteExecCall ["AlysiaClient_fnc_error", _from];
					[false, _suit, "items", _className, _amount, true] call AlysiaClient_fnc_handleTrunk;
				};
			};
		} else {
			["<t color='#0080FF'>Impossible</t> de retirer l'objet à la cible.<br/>La caisse la plus proche est en train d'être fouillée."] remoteExecCall ["AlysiaClient_fnc_error", _from];
		};
	};
};

[_from] call AlysiaClient_fnc_search_get;
