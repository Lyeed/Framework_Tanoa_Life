/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_uid", "_name"];
_uid =  [_this, 0, "", [""]] call BIS_fnc_param;
_name =  [_this, 1, "", [""]] call BIS_fnc_param;

"extLOG" callExtension format["1:SERVER_WHITELIST_BUYPASS_LOG:[%1] Player %2 is not whitelisted", _uid, _name];
