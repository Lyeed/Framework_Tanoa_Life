/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_drug";
_drug = [_this, 0, "", [""]] call BIS_fnc_param;

if (_drug isEqualTo "") exitWith {};

profileNamespace setVariable [format["drug_%1_total", _drug], (profileNamespace getVariable [format["drug_%1_total", _drug], 0]) + 1];

// if ((missionNamespace getVariable [format["drug_%1_amount", _drug], 0]) isEqualTo 0) then
// {
// 	missionNamespace setVariable [format["drug_%1_amount", _drug], 1];
// 	while {((missionNamespace getVariable [format["drug_%1_amount", _drug], 0]) > 0)} do
// 	{

// 	};
// } else {
// 	missionNamespace setVariable [format["drug_%1_amount", _drug], (missionNamespace getVariable [format["drug_%1_amount", _drug], 0]) + 1];
// };
