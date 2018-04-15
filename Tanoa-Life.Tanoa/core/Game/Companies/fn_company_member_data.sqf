/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_company", "_data", "_members", "_index"];
_company = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_data = [_this, 1, "", [""]] call BIS_fnc_param;

if (isNull _company) exitWith {[]};
if (_data isEqualTo "") exitWith {[]};

_members = _company getVariable "company_members";
if (isNil "_members") exitWith {[]};

_index = (_members select 0) find _data;
if (_index isEqualTo -1) then {
	_index = (_members select 1) find _data;
};

if (_index isEqualTo -1) exitWith {[]};

[(_members select 0) select _index, (_members select 1) select _index];
