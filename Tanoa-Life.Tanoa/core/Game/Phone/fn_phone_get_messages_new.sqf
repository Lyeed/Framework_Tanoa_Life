/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private "_return";

_return = [];

{
	if ((_x select 2) isEqualTo 0) then {_return pushBack _x};
} forEach g_phone_messages;

_return;
