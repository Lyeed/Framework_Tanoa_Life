/*
	File: asyncCall.sqf

	Parameters:
		0: STRING (Query to be ran).
		1: INTEGER (1 = ASYNC + not return for update/insert, 2 = ASYNC + return for query's).
*/
private["_queryStmt", "_queryResult", "_key", "_mode", "_loop", "_return"];
_queryStmt = [_this, 0, "", [""]] call BIS_fnc_param;
_mode = [_this, 1, 0, [0]] call BIS_fnc_param;

if (_queryStmt isEqualTo "") exitWith {false};

_key = "extDB2" callExtension format["%1:%2:%3",_mode, (call extDB_SQL_CUSTOM_ID), _queryStmt];
if (_mode isEqualTo 1) exitWith {true};

_key = (call compile format["%1",_key]) select 1;

uisleep (random .03);

_queryResult = "";
_loop = true;
while {_loop} do
{
	_queryResult = "extDB2" callExtension format["4:%1", _key];
	if (_queryResult isEqualTo "[5]") then
	{
		// extDB2 returned that result is Multi-Part Message
		_queryResult = "";
		while {true} do
		{
			_pipe = "extDB2" callExtension format["5:%1", _key];
			if (_pipe isEqualTo "") exitWith {_loop = false};
			_queryResult = _queryResult + _pipe;
		};
	} else {
		if (_queryResult isEqualTo "[3]") then
		{
			diag_log format ["extDB2: uisleep [4]: %1", diag_tickTime];
			uisleep 0.1;
		} else {
			_loop = false;
		};
	};
};

_return = call compile _queryResult;
if (isNil "_return") exitWith
{
	diag_log format ["extDB2: call compile error: %1", _queryResult];
	[]
};

if ((_return select 0) isEqualTo 0) exitWith
{
	diag_log format ["extDB2: Protocol Error: %1", _return];
	[]
};

(_return select 1);
