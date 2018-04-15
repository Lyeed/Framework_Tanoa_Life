/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_license"];
_license = [_this, 0, "", [""]] call BIS_fnc_param;

if (_license == "") exitWith {"UnknownLicense"};
if (!(isClass(missionConfigFile >> "ALYSIA_LICENSES" >> _license))) exitWith
{
	diag_log format["[ALYSIA:ERROR] License [%1] not defined", _license];
	"UnknownLicense";
};

getText(missionConfigFile >> "ALYSIA_LICENSES" >> _license >> "name");
