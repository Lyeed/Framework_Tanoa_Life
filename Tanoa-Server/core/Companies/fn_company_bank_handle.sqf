/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_value", "_type", "_amount", "_from", "_reason"];
_company = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_type = [_this, 1, false, [false]] call BIS_fnc_param;
_value = round([_this, 2, 0, [0]] call BIS_fnc_param);
_from = [_this, 3, "Inconnu", [""]] call BIS_fnc_param;
_reason = [_this, 4, "Inconnu", [""]] call BIS_fnc_param;

if ((isNull _company) || (_value isEqualTo 0)) exitWith {};

waitUntil {!(_company getVariable ["company_bank_active", false])};

_company setVariable ["company_bank_active", true];
_amount = _company getVariable ["company_bank", 0];
if (_type) then {
	_amount = _amount + _value;
} else {
	if (_value < _amount) then {
		_amount = _amount - _value;
	} else {
		_amount = 0;
	};
};

_company setVariable ["company_bank", _amount, true];
_company setVariable ["company_bank_history", (_company getVariable ["company_bank_history", []]) + [[_from, (call AlysiaClient_fnc_strDate), ([_type, 0] call AlysiaServer_fnc_bool), _value, _reason]]];
_company setVariable ["company_bank_active", false];
