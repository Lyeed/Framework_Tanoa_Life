/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_type", "_condition", "_config"];
_type = [_this, 0, "", [""]] call BIS_fnc_param;

if (_type isEqualTo "") exitWith {};

_config = missionConfigFile >> "ALYSIA_MISSIONS" >> _type;
if (!isClass(_config)) exitWith {};

_condition = false;
{
	if (([_x, g_dynamic_markers] call AlysiaClient_fnc_index) != -1) exitWith {_condition = true}
} forEach getArray(_config >> "prevent" >> "needed_markers");
if (_condition) then
{
	[
		"Hep, j'ai entendu dire que ce genre d'info pourrait t'interesser.<br/>Un <t color='#00FF80'>convoi</t> se prépare avec peut être pas mal d'équipements...",
		"BLACK_MARKET",
		true
	] call AlysiaClient_fnc_phone_message_receive;
};
