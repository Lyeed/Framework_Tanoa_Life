/*
	Tanoa-Life RPG
	Code written by Lyeed
*/

{
	_new_messages = (missionNamespace getVariable[format["SERVER_MESSAGES_%1", _x], []]);
	if (!(_new_messages isEqualTo [])) then
	{
		_queryResult = [format["SELECT PHONE_messages FROM players WHERE PHONE_number='%1'", _x], 2] call ExtDB3_fnc_async;
		if (!(_queryResult isEqualTo [])) then
		{
			_old_messages = ([(_queryResult select 0)] call AlysiaServer_fnc_mresArray);

			{
				_old_messages pushBack _x;
			} forEach _new_messages;

			[format["UPDATE players SET PHONE_messages='%1' WHERE PHONE_number='%2'", [_old_messages] call AlysiaServer_fnc_mresArray, _x], 1] call ExtDB3_fnc_async;
		};
	};
} forEach gServer_phone_messages_buffer;
