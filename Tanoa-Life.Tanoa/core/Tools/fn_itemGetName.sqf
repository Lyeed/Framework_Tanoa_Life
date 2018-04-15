/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_item"];
_item = [_this, 0, "", [""]] call BIS_fnc_param;

if (_item == "") exitWith {"UnknownItem"};
if (!(isClass(missionConfigFile >> "ALYSIA_ITEMS" >> _item))) exitWith
{
	diag_log format["[ALYSIA:ERROR] Item [%1] not defined", _item];
	"UnknownItem";
};

getText(missionConfigFile >> "ALYSIA_ITEMS" >> _item >> "name");
