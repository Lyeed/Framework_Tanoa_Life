/*
	Tanoa-Life RPG
	Code written by Lyeed

	entity: Object - unit or vehicle to which EH is assigned
	weapon: String - weapon that got reloaded
	muzzle: String - weapons muzzle that got reloaded
	newMagazine: Array - new magazine info in format [magazineClass, ammoCount, magazineID, magazineCreator], where:
		magazineClass: String - class name of the magazine
		ammoCount: Number - amount of ammo in magazine
		magazineID: Number - global magazine id
		magazineCreator: Number - owner of the magazine creator
	(oldMagazine): Array - old magazine that was in the muzzle before. Could be Nothing if muzzle was empty prior to reload event. Format is the same as for the newMagazine.
*/
private["_entity", "_weapon", "_muzzle", "_newMagazine", "_oldMagazine"];
_entity = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_weapon = [_this, 1, "", [""]] call BIS_fnc_param;
_muzzle = [_this, 2, "", [""]] call BIS_fnc_param;
_newMagazine = [_this, 3, [], [[]]] call BIS_fnc_param;
_oldMagazine = [_this, 4, [], [[]]] call BIS_fnc_param;

if ((count(_oldMagazine) > 0) && (_weapon != "")) then
{
	if ((_oldMagazine select 1) isEqualTo 0) then
	{
		[true, "magazine", 1] call AlysiaClient_fnc_handleInv;
	};
};
