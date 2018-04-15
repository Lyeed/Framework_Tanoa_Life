/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_newNumber", "_numbers"];

_numbers = missionNamespace getVariable ["gServer_phone_numbers", []];
_newNumber = format["%1%2%3%4%5%6", floor(random 10), floor(random 10), floor(random 10), floor(random 10), floor(random 10), floor(random 10)];
while {_newNumber in _numbers} do
{
	_newNumber = format["%1%2%3%4%5%6", floor(random 10), floor(random 10), floor(random 10), floor(random 10), floor(random 10), floor(random 10)];
};

if ((player getVariable ["number", ""]) != "") then {
	_numbers deleteAt (_numbers find (player getVariable ["number", ""]));
};

_numbers pushBack _newNumber;
player setVariable ["number", _newNumber, true];
gServer_phone_numbers = _numbers;
publicVariable "gServer_phone_numbers";
