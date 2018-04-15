/*
	Tanoa-Life RPG
	Code written by Lyeed
*/
private["_display", "_list", "_index"];

disableSerialization;
_display = findDisplay 7500;
if (isNull _display) exitWith {};

(_display displayCtrl 8345) ctrlSetStructuredText parseText format
[
	"<t align='center' color='#8cff9b'>%1</t><t align='right'>$</t>",
	getNumber(missionConfigFile >> "ALYSIA_PHONE" >> "FORFAITS" >> g_phone_forfait >> "sms_price")
];

_list = _display displayCtrl 8332;
lbClear _list;

{
	_index = _list lbAdd getText(missionConfigFile >> "ALYSIA_FACTIONS" >> _x >> "name");
	_list lbSetData [_index, _x];
	_list lbSetPicture [_index, getText(missionConfigFile >> "ALYSIA_FACTIONS" >> _x >> "icon")];
} forEach (["GUER", "WEST", "EAST"]);

if ((
		isClass(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "phone" >> "send_global_message") &&
		(getNumber(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "phone" >> "send_global_message" >> "rank") <= (player getVariable ["rank", 0]))
	) || (
		["company_press"] call AlysiaClient_fnc_hasLicense
	)
) then {
	_index = _list lbAdd getText(missionConfigFile >> "ALYSIA_FACTIONS" >> "CIV" >> "name");
	_list lbSetData [_index, "CIV"];
	_list lbSetPicture [_index, getText(missionConfigFile >> "ALYSIA_FACTIONS" >> "CIV" >> "icon")];
};

if (isClass(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "phone" >> "central_plate")) then
{
	_index = _list lbAdd "Central";
	_list lbSetData [_index, "CENTRAL"];
	_list lbSetPicture [_index, getText(missionConfigFile >> "ALYSIA_FACTIONS" >> str(playerSide) >> "icon")];
};

{
	_index = _list lbAdd (_x select 0);
	_list lbSetData [_index, (_x select 1)];
	_list lbSetPicture [_index, "Alysia_Client_Texture\Data\phone\contact.paa"];
} forEach g_phone_contacts;

_list lbSetCurSel -1;

if (getNumber(missionConfigFile >> "ALYSIA_PHONE" >> "FORFAITS" >> g_phone_forfait >> "hide_number") isEqualTo 1) then
{
	[8337, true] call AlysiaClient_fnc_tabletShow;
	[8338, true] call AlysiaClient_fnc_tabletShow;
	[8341, true] call AlysiaClient_fnc_tabletShow;
};
