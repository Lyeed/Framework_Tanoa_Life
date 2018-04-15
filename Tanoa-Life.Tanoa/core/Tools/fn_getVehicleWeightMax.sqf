/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_wm_target";
_wm_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if (isNull _wm_target) exitWith {0};

switch (true) do
{
	case (typeOf(_wm_target) isEqualTo "Skyline_Alysia_Boite_01_F"):{95};
	case (isClass(missionConfigFile >> "ALYSIA_STORAGES" >> typeOf(_wm_target))): {getNumber(missionConfigFile >> "ALYSIA_STORAGES" >> typeOf(_wm_target) >> "inventory")};
	case ((_wm_target isKindOf "Car") || (_wm_target isKindOf "Ship") || (_wm_target isKindOf "Air") || (_wm_target isKindOf "Tank")): {[typeOf(_wm_target)] call AlysiaClient_fnc_getVehVirtual};
	case (count(format["getText(_x >> 'object') == '%1'", typeOf(_wm_target)] configClasses (missionConfigFile >> "ALYSIA_LABORATORIES")) > 0): {280};
	case (_wm_target isEqualTo g_company):
	{
		_amount = getNumber(missionConfigFile >> 'ALYSIA_COMPANIES_TYPES' >> ((g_company getVariable 'company_info') select 2) >> 'storage' >> 'inventory');
		_members = count((g_company getVariable "company_members") select 0) - 1;
		_amount + (_members * 15);
	};
	default {0};
};
