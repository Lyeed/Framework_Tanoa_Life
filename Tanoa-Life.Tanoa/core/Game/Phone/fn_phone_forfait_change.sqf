/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_new", "_maxSMS", "_maxContacts", "_maxBlacklist"];
_new = [_this, 0, "", [""]] call BIS_fnc_param;

if (_new isEqualTo "") exitWith {};

_config = missionConfigFile >> "ALYSIA_PHONE" >> "FORFAITS" >> _new;
if (isClass(_config)) then
{
	_maxSMS = getNumber(_config >> "sms_max");
	if (count(g_phone_messages) > _maxSMS) then {
		g_phone_messages = [];
	};

	_maxContacts = getNumber(_config >> "contacts_max");
	if (count(g_phone_contacts) > _maxContacts) then {
		g_phone_contacts = [];
	};

	_maxBlacklist = getNumber(_config >> "backlist_max");
	if (count(g_phone_blacklist) > _maxBlacklist) then {
		g_phone_blacklist = [];
	};

	if ((player getVariable ["number", ""]) isEqualTo "") then {
		[] call AlysiaClient_fnc_phone_number_change;
	};

	g_phone_forfait = _new;
};
