/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_info", "_apply_insurance"];
_info = [_this, 0, [], [[]]] call BIS_fnc_param;
_apply_insurance = [_this, 1, true, [true]] call BIS_fnc_param;

if (_info isEqualTo []) exitWith {};

if (_apply_insurance && ((_info select 3) isEqualTo 1)) then {
	[format["UPDATE vehicles SET assurance='0',inventory='""[]""',fuel='100',fuel_type='',active='0',POS_store_x='0',POS_store_y='0',POS_store_z='0',POS_x='0',POS_y='0',POS_z='0',HitPointsDamage='""[]""' WHERE plate='%1'", (_info select 2)], 1] call ExtDB3_fnc_async;
} else {
	[format["DELETE FROM vehicles WHERE plate='%1'", (_info select 2)], 1] call ExtDB3_fnc_async;
};
