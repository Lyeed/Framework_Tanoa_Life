/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_sound";
_sound = [_this, 0, "", [""]] call BIS_fnc_param;

if (_sound isEqualTo "") exitWith {};
if (missionNamespace getVariable ["g_connected", false]) then
{
	{
		_x say3D _sound;
	} forEach [speaker_1, speaker_2, speaker_3, speaker_4, speaker_5, speaker_6, speaker_7, speaker_8, speaker_9, speaker_10];
};
