/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_from", "_freq"];
_from = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_freq = [_this, 1, "", [""]] call BIS_fnc_param;

if ((isNull _from) || (_freq isEqualTo "")) exitWith {};

if (missionNamespace getVariable ["calling", false]) then
{
	if ((missionNamespace getVariable ["calling_target", objNull]) isEqualTo _from) then
	{
		if ((missionNamespace getVariable ["calling_freq", ""]) isEqualTo _freq) then
		{
			_phone = call TFAR_fnc_ActiveSwRadio;
			_c_channel = (_phone call TFAR_fnc_getSwChannel) + 1;
			[_phone, _c_channel, _freq] call TFAR_fnc_SetChannelFrequency;
		};
	};
};
